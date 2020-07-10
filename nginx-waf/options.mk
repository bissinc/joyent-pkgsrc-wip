# $NetBSD: options.mk,v 1.52 2019/11/04 22:09:57 rillig Exp $
PKG_OPTIONS_VAR=		PKG_OPTIONS.nginx
PKG_SUPPORTED_OPTIONS=		nginx-dav nginx-flv gtools luajit nginx-mail-proxy memcached \
				pcre nginx-push nginx-realip ssl nginx-sub nginx-uwsgi nginx-image-filter \
				debug nginx-status nginx-openresty-echo \
				nginx-openresty-set-misc nginx-openresty-headers-more nginx-openresty-array-var nginx-openresty-encrypted-session \
				nginx-form-input perl gzip http2 nginx-auth-request nginx-secure-link rtmp
PKG_DEFAULT_OPTIONS=		nginx-dav nginx-openresty-headers-more memcached nginx-realip nginx-status nginx-uwsgi
PKG_OPTIONS.nginx=		${PKG_DEFAULT_OPTIONS}
PKG_OPTIONS_LEGACY_OPTS+=	v2:http2

PKG_SUGGESTED_OPTIONS=	pcre ssl

PLIST_VARS+=		perl nginx-uwsgi

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--with-debug
.endif

.if !empty(PKG_OPTIONS:Mssl)
.include "../../security/openssl/buildlink3.mk"
CONFIGURE_ARGS+=	--with-mail_ssl_module
CONFIGURE_ARGS+=	--with-http_ssl_module
.endif

.if !empty(PKG_OPTIONS:Mpcre)
.include "../../devel/pcre/buildlink3.mk"
CONFIGURE_ARGS+=	--with-pcre-jit
.else
CONFIGURE_ARGS+=	--without-pcre
CONFIGURE_ARGS+=	--without-http_rewrite_module
.endif

.if !empty(PKG_OPTIONS:Mnginx-dav)
CONFIGURE_ARGS+=	--with-http_dav_module
.endif

.if !empty(PKG_OPTIONS:Mnginx-flv)
CONFIGURE_ARGS+=	--with-http_flv_module
.endif

.if !empty(PKG_OPTIONS:Mhttp2)
CONFIGURE_ARGS+=	--with-http_v2_module
.endif

.if !empty(PKG_OPTIONS:Mnginx-sub)
CONFIGURE_ARGS+=	--with-http_sub_module
.endif

.if !empty(PKG_OPTIONS:Mgtools)
CONFIGURE_ARGS+=	--with-google_perftools_module
.include "../../devel/gperftools/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mnginx-mail-proxy)
CONFIGURE_ARGS+=	--with-mail
.endif

.if empty(PKG_OPTIONS:Mmemcached)
CONFIGURE_ARGS+=	--without-http_memcached_module
.endif

.if !empty(PKG_OPTIONS:Mnginx-realip)
CONFIGURE_ARGS+=	--with-http_realip_module
.endif

# NDK must be added once and before 3rd party modules needing it
.for ngx_mod in luajit nginx-openresty-set-misc nginx-openresty-array-var nginx-form-input nginx-openresty-encrypted-session
.  if !defined(NEED_NDK) && !empty(PKG_OPTIONS:M${ngx_mod}:O)
CONFIGURE_ARGS+=	--add-module=../${NDK_DISTNAME}
NEED_NDK=		yes
.  endif
.endfor
.if defined(NEED_NDK) || make(makesum)
GIT_REPOSITORIES+=	ndk
GIT_REPO.ndk=		git@github.com:vision5/ngx_devel_kit.git
GIT_TAG.ndk=		v0.3.1
NDK_DISTNAME=		ngx_devel_kit
.endif

.if !empty(PKG_OPTIONS:Mluajit)
.include "../../lang/LuaJIT2/buildlink3.mk"
CONFIGURE_ENV+=		LUAJIT_LIB=${PREFIX}/lib
CONFIGURE_ENV+=		LUAJIT_INC=${PREFIX}/include/luajit-2.0
CONFIGURE_ARGS+=	--add-module=../${LUA_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mluajit) || make(makesum)
GIT_REPOSITORIES+=	${LUA_DISTNAME}
GIT_REPO.lua=		git@github.com:openresty/lua-nginx-module.git
GIT_TAG.lua=		v0.10.15
LUA_DISTNAME=		lua
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-echo)
CONFIGURE_ARGS+=	--add-module=../${ECHOMOD_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-echo) || make(makesum)
ECHOMOD_VERSION=	0.61
ECHOMOD_DISTNAME=	echo-nginx-module-${ECHOMOD_VERSION}
GIT_REPOSITORIES+=	echomod
GIT_REPO.echomod=	git@github.com:openresty/echo-nginx-module.git
GIT_TAG.echomod=	v0.61
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-set-misc)
CONFIGURE_ARGS+=	--add-module=../${SETMISC_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-set-misc) || make(makesum)
SETMISC_DISTNAME=	set-misc-nginx-module
GIT_REPOSITORIES+=	setmisc
GIT_REPO.setmisc=	git@github.com:openresty/set-misc-nginx-module.git
GIT_TAG.setmisc=	v0.32
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-array-var)
CONFIGURE_ARGS+=	--add-module=../${ARRAYVAR_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-array-var) || make(makesum)
ARRAYVAR_DISTNAME=	array-var-nginx-module
GIT_REPOSITORIES+=	arrayvar
GIT_REPO.arrayvar=	git@github.com:openresty/array-var-nginx-module.git
GIT_TAG.arrayvar=	v0.5
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-encrypted-session)
CONFIGURE_ARGS+=	--add-module=../${ENCSESS_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-encrypted-session) || make(makesum)
ENCSESS_DISTNAME=	encrypted-session-nginx-module
GIT_REPOSITORIES+=	encsess
GIT_REPO.encsess=	git@github.com:openresty/encrypted-session-nginx-module.git
GIT_TAG.encsess=	v0.8
.endif

.if !empty(PKG_OPTIONS:Mnginx-form-input)
CONFIGURE_ARGS+=	--add-module=../${FORMINPUT_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-form-input) || make(makesum)
FORMINPUT_DISTNAME=	form-input-nginx-module
GIT_REPOSITORIES+=	${FORMINPUT_DISTNAME}	
GIT_REPO.forminput=	git@github.com:calio/form-input-nginx-module.git
GIT_TAG.forminput=	v0.12
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-headers-more)
CONFIGURE_ARGS+=	--add-module=../${HEADMORE_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-headers-more) || make(makesum)
HEADMORE_DISTNAME=	headers-more-nginx-module
GIT_REPOSITORIES+=	${HEADMORE_DISTNAME}
GIT_REPO.${HEADMORE_DISTNAME}=	git@github.com:openresty/headers-more-nginx-module.git
GIT_TAG.${HEADMORE_DISTNAME}=	v0.33
.endif

.if !empty(PKG_OPTIONS:Mnginx-uwsgi)
EGFILES+=		uwsgi_params
PLIST.nginx-uwsgi=	yes
CONFIGURE_ARGS+=	--http-uwsgi-temp-path=${NGINX_DATADIR}/uwsgi_temp
.else
CONFIGURE_ARGS+=	--without-http_uwsgi_module
.endif

.if !empty(PKG_OPTIONS:Mnginx-push)
CONFIGURE_ARGS+=	--add-module=../nchan-${PUSH_VERSION}
.endif
.if !empty(PKG_OPTIONS:Mnginx-push) || make(makesum)
GIT_REPOSITORIES+=	push
GIT_REPO.push=		git@github.com:slact/nchan.git
GIT_TAG.push=		1.2.6
.endif

.if !empty(PKG_OPTIONS:Mnginx-image-filter)
.include "../../graphics/gd/buildlink3.mk"
CONFIGURE_ARGS+=	--with-http_image_filter_module
.endif

.if !empty(PKG_OPTIONS:Mnginx-status)
CONFIGURE_ARGS+=	--with-http_stub_status_module
.endif

.if !empty(PKG_OPTIONS:Mperl)
CONFIGURE_ARGS+=	--with-http_perl_module
CONFIGURE_ARGS+=	--with-perl=${PERL5:Q}
INSTALLATION_DIRS+=	${PERL5_INSTALLVENDORARCH}/auto/nginx
PLIST.perl=		yes
.include "../../lang/perl5/dirs.mk"
.include "../../lang/perl5/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mgzip)
CONFIGURE_ARGS+=	--with-http_gzip_static_module
.endif

.if !empty(PKG_OPTIONS:Mnginx-auth-request)
CONFIGURE_ARGS+=	--with-http_auth_request_module
.endif

.if !empty(PKG_OPTIONS:Mnginx-secure-link)
CONFIGURE_ARGS+=	--with-http_secure_link_module
.endif

.if !empty(PKG_OPTIONS:Mrtmp)
CONFIGURE_ARGS+=	--add-module=../${RTMP_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mrtmp) || make(makesum)
RTMP_DISTNAME=		nginx-rtmp-module
GIT_REPOSITORIES+=	rtmp
GIT_REPO.rtmp=		git@github.com:arut/nginx-rtmp-module.git
GIT_TAG.rtmp=		1.2.1
.endif
