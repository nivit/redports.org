# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/www/py-Lightbox/Makefile 371122 2014-10-18 13:14:09Z rm $

PORTNAME=	Lightbox
PORTVERSION=	2.1
PORTREVISION=	3
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP \
		http://nivi.interfree.it/distfiles/${PORTNAME}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Lightbox photo display widget for TurboGears

LICENSE=	MIT

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}TurboGears>=1.1.2:${PORTSDIR}/www/py-turbogears
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}scriptaculous>=1.8.1:${PORTSDIR}/www/py-scriptaculous

USES=		python:2 zip
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
