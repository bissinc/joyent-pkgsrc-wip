# $NetBSD: Makefile,v 1.0 2020/06/25 14:28:43 barfield Exp $

DISTNAME=	modsecurity
PKGNAME=	${DISTNAME}-3.0.4
CATEGORIES=	wip

GIT_REPOSITORIES=	${REPOSITORIES}
REPOSITORIES+=		${DISTNAME}

GIT_REPO.${DISTNAME}=	git@github.com:SpiderLabs/${DISTNAME}.git
GIT_TAG.${DISTNAME}=	v${PKGVERSION_NOREV}

MAINTAINER=	john.barfield@bissinc.com
HOMEPAGE=	http://www.modsecurity.org/
COMMENT=	Intrusion detection and prevention egine for web applications (WAF)
LICENSE=	apache-2.0

.include "../../wip/modsecurity/coreruleset.mk"
.include "../../mk/bsd.prefs.mk"
.include "../../wip/mk/git-package.mk"
.include "sunos.mk"

USE_LANGUAGES=		c	c++
USE_LIBTOOL=		yes
USE_TOOLS+=		autoconf automake gmake pkg-config flex
GNU_CONFIGURE=		yes

DEPENDS+=		doxygen>=1.8.0:../../devel/doxygen
DEPENDS+=		valgrind>=1.12.0:../../devel/valgrind

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--with-pcre=${BUILDLINK_PREFIX.pcre}
CONFIGURE_ARGS+=	--with-lmdb=${BUILDLINK_PREFIX.lmdb}
CONFIGURE_ARGS+=	--with-libxml=${BUILDLINK_PREFIX.libxml2}
CONFIGURE_ARGS+=	--with-lua=${BUILDLINK_PREFIX.lua}
CONFIGURE_ARGS+=	--with-curl=${BUILDLINK_PREFIX.curl}
CONFIGURE_ARGS+=	--with-maxmind=${BUILDLINK_PREFIX.libmaxminddb}
CONFIGURE_ARGS+=	--with-geoip=${BUILDLINK_PREFIX.GeoIP}
CONFIGURE_ARGS+=	--with-ssdeep=${BUILDLINK_PREFIX.ssdeep}
CONFIGURE_ARGS+=	--enable-valgrind
CONFIGURE_ARGS+=	--enable-valgrind-sgcheck
CONFIGURE_ARGS+=	--enable-parser-generation
CONFIGURE_ARGS+=	--enable-mutex-on-pm

BUILD_DEFS+=		VARBASE MODSEC_LOGDIR MODSEC_NAME

MODSEC_NAME=		modsecurity
PKG_SYSCONFSUBDIR=	${MODSEC_NAME}
EGDIR=			${DESTDIR}${PREFIX}/share/examples/${MODSEC_NAME}

INSTALLATION_DIRS+=	bin \
			include \
			include\${MODSEC_NAME}\actions \
			lib/${MODSEC_NAME} \
			share/examples/${MODSEC_NAME} \
			${PKG_SYSCONFDIR}

MODSEC_LOGDIR=		${VARBASE}/log/${MODSEC_NAME}
OWN_DIRS+=		${MODSEC_LOGDIR}

CONF_FILES+=    ${EGDIR}/unicode.mapping \
                ${PKG_SYSCONFDIR}/unicode.mapping
CONF_FILES+=    ${EGDIR}/modsecurity.conf \
                ${PKG_SYSCONFDIR}/modsecurity.conf

post-extract:
	cd ${WRKSRC} && ./build.sh

do-install:
	${INSTALL_DATA} ${WRKSRC}/modsecurity.conf-recommended ${EGDIR}/modsecurity.conf
	${INSTALL_DATA} ${WRKSRC}/unicode.mapping ${EGDIR}/unicode.mapping

.include "../../databases/lmdb/buildlink3.mk"
.include "../../devel/libgetopt/buildlink3.mk"
.include "../../devel/yajl/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../geography/libmaxminddb/buildlink3.mk"
.include "../../net/GeoIP/buildlink3.mk"
.include "../../lang/lua53/buildlink3.mk"
.include "../../security/ssdeep/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
