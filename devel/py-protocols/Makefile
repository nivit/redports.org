# Created by: Nicola Vitale
# $FreeBSD: head/devel/py-protocols/Makefile 345007 2014-02-19 06:53:00Z miwi $

PORTNAME=	protocols
PORTVERSION=	0.9.3
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	http://peak.telecommunity.com/dist/
MASTER_SITE_SUBDIR=	${PORTNAME}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	PyProtocols-${PORTVERSION}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Python module extending the PEP 246 adapt() function

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_AUTOPLIST=	yes

post-patch:
	@${RM} -rf ${WRKSRC}/setuptools

.include <bsd.port.mk>
