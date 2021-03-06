# $NetBSD$

VERSION=	1.02.00
DISTNAME=	pyqt-qwt-${VERSION}
PKGNAME=	${PYPKGPREFIX}-qwt-qt5-${DISTNAME:S/pyqt-qwt-//}
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GITHUB:=GauiStori/}
GITHUB_PROJECT=	PyQt-Qwt
GITHUB_TAG=	pyqt-qwt-${VERSION}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/GauiStori/PyQt-Qwt/
COMMENT=	Python PyQt wrapper for Qwt6
#LICENSE=	# gnu-lgpl-v2.1 with exception (Qwt License)

BUILD_DEPENDS+=	qt5-qtbase-[0-9]*:../../x11/qt5-qtbase

WRKSRC=		${WRKDIR}/PyQt-Qwt-pyqt-qwt-${VERSION}

MAKE_ENV+=	PATH=${PATH}:${PREFIX}/qt5/bin
#AKE_ENV+=	INSTALL_ROOT=${DESTDIR}
USE_LANGUAGES=	c++

SUBST_CLASSES+=			installed.txt
SUBST_MESSAGE.installed.txt=	Remove one extra \${DESTDIR} from list
SUBST_FILES.installed.txt=	installed.txt
SUBST_STAGE.installed.txt=	post-configure
SUBST_SED.installed.txt=	-e '/^\/usr/s,^,${DESTDIR},'
#SUBST_SED.installed.txt=	-e 's,^${DESTDIR},,'

do-configure:
	(cd ${WRKSRC}; \
	QT_SELECT=qt5 \
	${PKGSRC_SETENV} ${CONFIGURE_ENV} \
	${PYTHONBIN} configure.py \
	--qwt-incdir=${PREFIX}/${BUILDLINK_INCDIRS.qwt6-qt5} \
	--qwt-libdir=${PREFIX}/${BUILDLINK_LIBDIRS.qwt6-qt5} \
	--qwt-lib=qwt \
	--sip=${PREFIX}/bin/sip${PYVERSSUFFIX} \
	--qmake=${PREFIX}/qt5/bin/qmake \
	--pyqt-sipdir=${PREFIX}/share/sip${PYVERSSUFFIX}/PyQt5 \
	--destdir=${DESTDIR}${PREFIX}/${PYSITELIB}/PyQt5 \
	--verbose \
	)

.include "../../lang/python/application.mk"
.include "../../x11/py-qt5/buildlink3.mk"
.include "../../x11/py-sip/buildlink3.mk"
.include "../../x11/qwt6-qt5/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
