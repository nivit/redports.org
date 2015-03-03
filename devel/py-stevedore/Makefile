# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/devel/py-stevedore/Makefile 378595 2015-02-07 15:03:01Z bapt $

PORTNAME=	stevedore
PORTVERSION=	1.2.0
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Manage dynamic plugins for Python applications

LICENSE=	APACHE20

BUILD_DEPENDS=	${PKGNAMEPREFIX}pbr>=0.10.0:${PORTSDIR}/devel/py-pbr
RUN_DEPENDS=	${PKGNAMEPREFIX}argparse>=1.2.1:${PORTSDIR}/devel/py-argparse \
		${PKGNAMEPREFIX}pbr>=0.10.0:${PORTSDIR}/devel/py-pbr \
		${PKGNAMEPREFIX}six>=1.7.0:${PORTSDIR}/devel/py-six

USES=		python
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
