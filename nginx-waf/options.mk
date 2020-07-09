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
NDK_VERSION=		0.3.1
NDK_DISTNAME=		ngx_devel_kit-${NDK_VERSION}
NDK_DISTFILE=		${NDK_DISTNAME}.tar.gz
SITES.${NDK_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=simpl/}
DISTFILES+=		${NDK_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mluajit)
.include "../../lang/LuaJIT2/buildlink3.mk"
CONFIGURE_ENV+=		LUAJIT_LIB=${PREFIX}/lib
CONFIGURE_ENV+=		LUAJIT_INC=${PREFIX}/include/luajit-2.0
CONFIGURE_ARGS+=	--add-module=../${LUA_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mluajit) || make(makesum)
LUA_VERSION=		0.10.15
LUA_DISTNAME=		lua-nginx-module-${LUA_VERSION}
LUA_DISTFILE=		${LUA_DISTNAME}.tar.gz
SITES.${LUA_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=openresty/lua-nginx-module/}
DISTFILES+=		${LUA_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-echo)
CONFIGURE_ARGS+=		--add-module=../${ECHOMOD_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-echo) || make(makesum)
ECHOMOD_VERSION=		0.61
ECHOMOD_DISTNAME=		echo-nginx-module-${ECHOMOD_VERSION}
ECHOMOD_DISTFILE=		${ECHOMOD_DISTNAME}.tar.gz
SITES.${ECHOMOD_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=openresty/echo-nginx-module/}
DISTFILES+=			${ECHOMOD_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-set-misc)
CONFIGURE_ARGS+=		--add-module=../${SETMISC_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-set-misc) || make(makesum)
SETMISC_VERSION=		0.32
SETMISC_DISTNAME=		set-misc-nginx-module-${SETMISC_VERSION}
SETMISC_DISTFILE=		${SETMISC_DISTNAME}.tar.gz
SITES.${SETMISC_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=openresty/set-misc-nginx-module/}
DISTFILES+=			${SETMISC_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-array-var)
CONFIGURE_ARGS+=		--add-module=../${ARRAYVAR_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-array-var) || make(makesum)
ARRAYVAR_VERSION=		0.05
ARRAYVAR_DISTNAME=		array-var-nginx-module-${ARRAYVAR_VERSION}
ARRAYVAR_DISTFILE=		${ARRAYVAR_DISTNAME}.tar.gz
SITES.${ARRAYVAR_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=openresty/array-var-nginx-module/}
DISTFILES+=			${ARRAYVAR_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-encrypted-session)
CONFIGURE_ARGS+=		--add-module=../${ENCSESS_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-encrypted-session) || make(makesum)
ENCSESS_VERSION=		0.08
ENCSESS_DISTNAME=		encrypted-session-nginx-module-${ENCSESS_VERSION}
ENCSESS_DISTFILE=		${ENCSESS_DISTNAME}.tar.gz
SITES.${ENCSESS_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=openresty/encrypted-session-nginx-module/}
DISTFILES+=			${ENCSESS_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mnginx-form-input)
CONFIGURE_ARGS+=		--add-module=../${FORMINPUT_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-form-input) || make(makesum)
FORMINPUT_VERSION=		0.12
FORMINPUT_DISTNAME=		form-input-nginx-module-${FORMINPUT_VERSION}
FORMINPUT_DISTFILE=		${FORMINPUT_DISTNAME}.tar.gz
SITES.${FORMINPUT_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=calio/}
DISTFILES+=			${FORMINPUT_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mnginx-openresty-headers-more)
CONFIGURE_ARGS+=		--add-module=../${HEADMORE_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mnginx-openresty-headers-more) || make(makesum)
HEADMORE_VERSION=		0.33
HEADMORE_DISTNAME=		headers-more-nginx-module-${HEADMORE_VERSION}
HEADMORE_DISTFILE=		${HEADMORE_DISTNAME}.tar.gz
SITES.${HEADMORE_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=openresty/headers-more-nginx-module/}
DISTFILES+=			${HEADMORE_DISTFILE}
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
PUSH_VERSION=		1.2.6
PUSH_DISTNAME=		nginx_http_push_module-${PUSH_VERSION}
PUSH_DISTFILE=		${PUSH_DISTNAME}.tar.gz
SITES.${PUSH_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=slact/}
DISTFILES+=		${PUSH_DISTFILE}
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
RTMP_VERSION=		1.2.1
RTMP_DISTNAME=		nginx-rtmp-module-${RTMP_VERSION}
RTMP_DISTFILE=		${RTMP_DISTNAME}.tar.gz
SITES.${RTMP_DISTFILE}=	${MASTER_SITE_GITHUB:S,^,-,:=arut/}
DISTFILES+=		${RTMP_DISTFILE}
.endif
