# $NetBSD$
# Makefile,v 1.0 2020/06/25 14:28:43 barfield Exp

DISTNAME=	modsecurity-v3.0.4
PKGNAME=	modsecurity-3
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GITHUB:=SpiderLabs/}
GITHUB_PROJECT=	ModSecurity
GITHUB_RELEASE=	${PKGVERSION_NOREV}
DISTFILES=	${DEFAULT_DISTFILES}

MAINTAINER=	john.barfield@bissinc.com
HOMEPAGE=	http://www.modsecurity.org/
COMMENT=	Intrusion detection and prevention egine for web applications (WAF)
LICENSE=	apache-2.0

.include "../../mk/bsd.prefs.mk"
.include "sunos.mk"

USE_LANGUAGES=		c	c++
USE_LIBTOOL=		yes
USE_TOOLS+=		autoconf automake gmake pkg-config flex pax
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
EGDIR=			${PREFIX}/share/examples/${MODSEC_NAME}

INSTALLATION_DIRS+=	bin \
			include \
			lib/${MODSEC_NAME} \
			share/examples/${MODSEC_NAME} \
			${PKG_SYSCONFDIR}

MODSEC_LOGDIR=		${VARBASE}/log/${MODSEC_NAME}
OWN_DIRS+=		${MODSEC_LOGDIR}

.include "coreruleset.mk"

pre-install:
	${INSTALL_DATA} ${WRKSRC}/modsecurity.conf-recommended ${DESTDIR}${EGDIR}/modsecurity.conf
	${INSTALL_DATA} ${WRKSRC}/unicode.mapping ${DESTDIR}${EGDIR}/unicode.mapping
	${INSTALL_DATA} ${WRKDIR}/${CRS_DIR}/rules/RESPONSE-999-EXCLUSION-RULES-AFTER-CRS.conf.example ${DESTDIR}${EGDIR}/${CRS_NAME}/rules/RESPONSE-999-EXCLUSION-RULES-AFTER-CRS.conf
	${INSTALL_DATA} ${WRKDIR}/${CRS_DIR}/rules/REQUEST-900-EXCLUSION-RULES-BEFORE-CRS.conf.example ${DESTDIR}${EGDIR}/${CRS_NAME}/rules/REQUEST-900-EXCLUSION-RULES-BEFORE-CRS.conf
	${INSTALL_DATA} ${WRKDIR}/${CRS_DIR}/crs-setup.conf.example ${DESTDIR}${EGDIR}/${CRS_NAME}/crs-setup.conf
.for file in ${CRS_FILES}
	${INSTALL_DATA} ${WRKDIR}/${CRS_DIR}/rules/${file}      ${DESTDIR}${EGDIR}/${CRS_NAME}/rules/${file}
.endfor

CONF_FILES+=	${EGDIR}/unicode.mapping \
		${PKG_SYSCONFDIR}/unicode.mapping
CONF_FILES+=	${EGDIR}/modsecurity.conf \
		${PKG_SYSCONFDIR}/modsecurity.conf

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
