# Created by: Nicola Vitale <nivit@email.it>
# $FreeBSD: head/devel/py-turbojson/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	TurboJson
PORTVERSION=	1.3.2
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP \
		http://www.turbogears.org/2.1/downloads/2.1.4/ \
		http://nivi.interfree.it/distfiles/${PORTNAME}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Python template plugin for TurboGears that supports json

LICENSE=	MIT

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}simplejson>=1.9.1:${PORTSDIR}/devel/py-simplejson \
		${PYTHON_PKGNAMEPREFIX}PEAK-Rules>=0:${PORTSDIR}/devel/py-PEAK-Rules
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}simplejson>=1.9.1:${PORTSDIR}/devel/py-simplejson \
		${PYTHON_PKGNAMEPREFIX}PEAK-Rules>=0:${PORTSDIR}/devel/py-PEAK-Rules

USES=		python:2
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
