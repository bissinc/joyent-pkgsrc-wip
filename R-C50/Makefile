# $NetBSD: Makefile,v 1.2 2013/03/19 01:22:55 bubuchka Exp $

CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	mishka@NetBSD.org
HOMEPAGE=	https://cran.r-project.org/web/packages/C50/index.html
COMMENT=	C5.0 decision trees and rule-based models
LICENSE=	gnu-lgpl-v3

R_PKGNAME=	C50
R_PKGVER=	0.1.0-24

USE_LANGUAGES=	c

.include "../../math/R/Makefile.extension"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
