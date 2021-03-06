# $NetBSD: Makefile,v 1.38 2020/03/10 22:09:05 wiz Exp $

DISTNAME=	gnome-desktop-3.36.2
PKGNAME=	${DISTNAME:S/desktop/desktop3/}
CATEGORIES=	x11 gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-desktop/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	prlw1@cam.ac.uk
HOMEPAGE=	https://www.gnome.org/
COMMENT=	GNOME3 desktop-wide documents and libgnome-desktop library
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2 AND gnu-fdl-v1.1

USE_LIBTOOL=		yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libgnome-desktop/gnome-desktop-3.0.pc.in

MESON_ARGS+=		-Dsystemd=disabled
MESON_ARGS+=		-Dudev=disabled
MESON_ARGS+=		-Ddistributor="The NetBSD Foundation"
MESON_ARGS+=		-Ddate_in_gnome_version=false
MESON_ARGS+=		-Ddesktop_docs=false
MESON_ARGS+=		-Dgtk_doc=false
MESON_ARGS+=		-Ddebug_tools=false

BUILD_DEPENDS+=		itstool-[0-9]*:../../textproc/itstool

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.44.0
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
BUILDLINK_API_DEPENDS.gdk-pixbuf2+=	gdk-pixbuf2>=2.36.5
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
BUILDLINK_API_DEPENDS.gsettings-desktop-schemas+=	gsettings-desktop-schemas>=3.5.91
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libxkbfile/buildlink3.mk"
.include "../../x11/xkeyboard-config/buildlink3.mk"
.include "../../devel/meson/build.mk"

.include "../../mk/bsd.pkg.mk"
