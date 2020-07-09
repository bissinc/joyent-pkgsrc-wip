# $NetBSD$
.if ${OPSYS}== "SunOS"
SUBST_CLASSES+=		libs
SUBST_STAGE.libs=	pre-build
SUBST_MESSAGE.libs=	Adding SunOS socket libraries
SUBST_FILES.libs=	Makefile*
SUBST_SED.libs=		-e '/^LDFLAGS/s/$$/ -lsocket -lnsl/'
.endif
