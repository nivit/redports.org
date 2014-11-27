# Created by: Nicola Vitale
# $FreeBSD: head/devel/py-protocols/Makefile 371280 2014-10-20 16:04:12Z mva $

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

USES=		python
USE_PYTHON=	distutils autoplist

post-patch:
	@${RM} -rf ${WRKSRC}/setuptools

.include <bsd.port.mk>
