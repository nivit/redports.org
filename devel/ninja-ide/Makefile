# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/devel/ninja-ide/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	ninja-ide
PORTVERSION=	2.3
PORTREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://nivit.altervista.org/FreeBSD/ports/distfiles/

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Cross-platform integrated development environment (IDE)

LICENSE=	GPLv3

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}qt4-network>=4.8.5,1:${PORTSDIR}/net/py-qt4-network \
		${PYTHON_PKGNAMEPREFIX}qt4-webkit>=4.8.5:${PORTSDIR}/www/py-qt4-webkit
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}qt4-declarative>=4.10.2:${PORTSDIR}/devel/py-qt4-declarative \
		${PYTHON_PKGNAMEPREFIX}qt4-network>=4.8.5,1:${PORTSDIR}/net/py-qt4-network \
		${PYTHON_PKGNAMEPREFIX}qt4-webkit>=4.8.5:${PORTSDIR}/www/py-qt4-webkit

USES=		python:2
USE_PYTHON=	distutils autoplist

USE_GITHUB=	yes
GH_ACCOUNT=	ninja-ide
GH_COMMIT=	85027df
GH_TAGNAME=	v${PORTVERSION}

.include <bsd.port.mk>
