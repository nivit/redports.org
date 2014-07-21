# Created by: Nicola Vitale <nivit@email.it>
# $FreeBSD: head/graphics/gle-graphics/Makefile 327733 2013-09-20 18:35:44Z bapt $

PORTNAME=	gle-graphics
DISTVERSION=	4.2.4c
PORTREVISION=	0
CATEGORIES=	graphics print
MASTER_SITES=	SF/glx/gle4%20%28Current%20Active%20Version%29/${DISTVERSION}
DISTNAME=	${PORTNAME}-${DISTVERSION}f-src

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Graphics language that produces images from script files

LICENSE=	BSD3CLAUSE GPLv2
LICENSE_COMB=	multi

RUN_DEPENDS=	gv:${PORTSDIR}/print/gv

OPTIONS_DEFINE=	BITMAP_IMAGES LATEX_GS X11
OPTIONS_DEFAULT=	BITMAP_IMAGES LATEX_GS X11
BITMAP_IMAGES_DESC=	Support for including bitmap images
LATEX_GS_DESC=		Use LaTeX & GhostScript

WRKSRC=	${WRKDIR}/${PORTNAME}-${DISTVERSION}

GNU_CONFIGURE=	yes
# GUI requires QT 4.1.X
CONFIGURE_ARGS=	--with-qt=no --with-debug=yes
MAKE_JOBS_UNSAFE=	yes

PLIST_SUB+=	PORTVERSION=${PORTVERSION}
REINPLACE_FILES=	configure

USE_GCC=	yes
USES=	gmake pathfix

post-patch:
	cd ${WRKSRC} && \
	${REINPLACE_CMD} -E -e 's,kfreebsd,freebsd,g' \
	-e 's,(PKGCONFIGDIR=).*,\1${PREFIX}/libdata/pkgconfig,1' \
	-i.bak ${WRKSRC}/configure ${WRKSRC}/Makefile.in

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MBITMAP_IMAGES}
LIB_DEPENDS+=	libjpeg.so:${PORTSDIR}/graphics/jpeg \
		libpng15.so:${PORTSDIR}/graphics/png \
		libtiffxx.so:${PORTSDIR}/graphics/tiff
CONFIGURE_ARGS+=	 --with-jpeg=${LOCALBASE} --with-tiff=${LOCALBASE} --with-png=${LOCALBASE}
.else
CONFIGURE_ARGS+=	 --with-jpeg=no --with-png=no -with-tiff=no
.endif

.if ${PORT_OPTIONS:MLATEX_GS}
USE_GHOSTSCRIPT_RUN=	yes
USE_TEX=	latex
.endif

.if ${PORT_OPTIONS:MX11}
CONFIGURE_ARGS+=	--with-x
USE_XORG=	x11
.endif

.include <bsd.port.mk>
