# Created by: Nicola Vitale	<nivit@FreeBSD.org>
# $FreeBSD: head/graphics/py-gchartwrapper/Makefile 357824 2014-06-15 03:43:49Z nivit $

PORTNAME=	GChartWrapper
PORTVERSION=	0.9
PORTREVISION=	2
CATEGORIES=	graphics python
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Python Google Chart Wrapper

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}imaging>=1.1.6_2:${PORTSDIR}/graphics/py-imaging

PROJECTHOST=	google-chartwrapper
PYDISTUTILS_AUTOPLIST=	yes

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes

.include <bsd.port.mk>
