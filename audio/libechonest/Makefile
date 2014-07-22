# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/audio/libechonest/Makefile 340670 2014-01-21 22:55:59Z bapt $

PORTNAME=	libechonest
PORTVERSION=	2.0.3
#PORTREVISION=	0
CATEGORIES=	audio

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Collection of C++/Qt classes designed to use the APIs of The Echo Nest

LICENSE=	GPLv2

LIB_DEPENDS=	libqjson.so:${PORTSDIR}/devel/qjson

GH_ACCOUNT=	lfranchi
GH_PROJECT=	${PORTNAME}
GH_COMMIT=	c02854c

PLIST_SUB=	PORTVERSION=${PORTVERSION}

USES=		cmake pkgconfig
USE_GITHUB=	yes
USE_LDCONFIG=	yes

USE_QT4=	qmake_build moc_build network qtestlib rcc_build xml

.include <bsd.port.mk>