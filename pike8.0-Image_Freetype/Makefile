# $NetBSD$

MODULENAME=		Image_FreeType
INTERNAL_MODULENAME=	_Image_FreeType
PIKEVERSUFFIX=		8.0

EXTRACT_ELEMENTS+=	${DISTNAME}/src/modules/Image

.include 	"../../wip/pike${PIKEVERSUFFIX}/builtin_module.mk"

#PIKE_MODULE_OVERLAPPING_FILES+=	lib/pike${PIKEVERSUFFIX}/modules/GTK2.pmod

# the Image_Freetype module uses headers from the Image module, but these aren't installed
# by default, so we just make them available
pre-build:
	cd ${WRKSRC} && ${MKDIR} src/post_modules/${INTERNAL_MODULENAME}/modules/Image && \
	  cp -r src/modules/Image/*.h src/post_modules/${INTERNAL_MODULENAME}/modules/Image

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
