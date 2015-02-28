# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD$

PORTNAME=	shutter
PORTVERSION=	0.93.1
#PORTREVISION=	0
CATEGORIES=	deskutils
MASTER_SITES=	http://shutter-project.org/wp-content/uploads/releases/tars/

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Screenshot tool

LICENSE=	GPLv3 GPLv2 # the latter for some shipped cursors
LICENSE_COMB=	multi

RUN_DEPENDS=	librsvg2>=2.40.6:${PORTSDIR}/graphics/librsvg2 \
		p5-File-BaseDir>=0.03:${PORTSDIR}/devel/p5-File-BaseDir \
		p5-File-Copy-Recursive>=0.38_1:${PORTSDIR}/devel/p5-File-Copy-Recursive \
		p5-File-Spec-Native>=1.003_1:${PORTSDIR}/devel/p5-File-Spec-Native \
		p5-File-Which>=1.09:${PORTSDIR}/sysutils/p5-File-Which \
		p5-Gnome2-VFS>=1.082:${PORTSDIR}/x11-toolkits/p5-Gnome2-VFS \
		p5-Gnome2>=1.045:${PORTSDIR}/x11-toolkits/p5-Gnome2 \
		p5-Gtk2-ImageView>=0.05:${PORTSDIR}/x11-toolkits/p5-Gtk2-ImageView \
		p5-Gtk2>=1.2491:${PORTSDIR}/x11-toolkits/p5-Gtk2 \
		p5-JSON-XS>=3.01:${PORTSDIR}/converters/p5-JSON-XS \
		p5-JSON>=2.90:${PORTSDIR}/converters/p5-JSON \
		p5-Locale-gettext>=1.05:${PORTSDIR}/devel/p5-Locale-gettext \
		p5-Net-DBus>=1.0.0:${PORTSDIR}/devel/p5-Net-DBus \
		p5-Net-Dropbox-API>=1.9:${PORTSDIR}/net/p5-Net-Dropbox-API \
		p5-Net-OAuth>=0.28:${PORTSDIR}/net/p5-Net-OAuth \
		p5-Path-Class>=0.35:${PORTSDIR}/devel/p5-Path-Class \
		p5-Proc-ProcessTable>=0.51:${PORTSDIR}/devel/p5-Proc-ProcessTable \
		p5-Proc-Simple>=1.31:${PORTSDIR}/devel/p5-Proc-Simple \
		p5-Sort-Naturally>=1.03:${PORTSDIR}/textproc/p5-Sort-Naturally \
		p5-WWW-Mechanize>=1.74:${PORTSDIR}/www/p5-WWW-Mechanize \
		p5-X11-Protocol>=0.56:${PORTSDIR}/x11/p5-X11-Protocol \
		p5-XML-Simple>=2.20:${PORTSDIR}/textproc/p5-XML-Simple \
		xdg-utils>=1.0.2.20130919:${PORTSDIR}/devel/xdg-utils

NO_BUILD=	yes

SHEBANG_FILES=	bin/shutter

USES=	perl5 shebangfix

do-install:
	@(cd ${WRKSRC}/share/shutter && \
	${INSTALL_SCRIPT} bin/shutter ${STAGEDIR}${PREFIX}/bin/shutter && \
	${COPYTREE_SHARE} resources ${STAGEDIR}${DATADIR})

.include <bsd.port.mk>
