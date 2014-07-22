# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/textproc/sassc/Makefile 360717 2014-07-05 03:23:35Z nivit $

PORTNAME=	sassc
PORTVERSION=	1.0.1
PORTREVISION=	1
CATEGORIES=	textproc

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Wrapper around libsass

LICENSE=	MIT

LIB_DEPENDS=	libsass.so:${PORTSDIR}/textproc/libsass

AUTOMAKE_ARGS=	--add-missing

CPPFLAGS+=	-I${LOCALBASE}/include

GH_ACCOUNT=	sass
GH_COMMIT=	9451dd7
GH_TAGNAME=	v${PORTVERSION}

LDFLAGS+=	-L${LOCALBASE}/lib

PLIST_FILES=	bin/sassc

USE_AUTOTOOLS=	aclocal autoconf autoheader automake libtoolize
USE_GITHUB=	yes

.include <bsd.port.mk>
