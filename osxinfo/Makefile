# $NetBSD: Makefile,v 1.3 2015/02/18 16:54:49 yrmt Exp $

DISTNAME=	osxinfo-0.2
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GITHUB:=nbyouri/}
GITHUB_PROJECT=	osxinfo
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	youri@NetBSD.org
HOMEPAGE=	https://github.com/nbyouri/osxinfo
COMMENT=	Small Mac OS X Info Program
LICENSE=	mit

ONLY_FOR_PLATFORM=	Darwin-*-*

MAKE_ENV+=	DBDIR=${PKG_DBDIR}

.include "../../mk/bsd.pkg.mk"
