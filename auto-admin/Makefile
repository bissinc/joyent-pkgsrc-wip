# $NetBSD$

DISTNAME=	auto-admin-0.6.5.10
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=outpaddling/}
GITHUB_TAG=	42969da7591957eb9a6a3aa5d2396e92012008a9

MAINTAINER=	bacon@NetBSD.org
HOMEPAGE=	http://acadix.biz/
COMMENT=	Portable tools for automating systems management
LICENSE=	2-clause-bsd

USE_LANGUAGES=	# none

NO_BUILD=	yes

INSTALLATION_DIRS=	sbin

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/Scripts/* ${DESTDIR}${PREFIX}/sbin

.include "../../mk/bsd.pkg.mk"
