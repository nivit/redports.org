# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/www/py-poster/Makefile 359715 2014-06-28 20:35:26Z miwi $

PORTNAME=	poster
PORTVERSION=	0.8.1
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	http://atlee.ca/software/poster/dist/${PORTVERSION}/ \
		http://nivi.interfree.it/distfiles/${PORTNAME}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Streaming HTTP uploads and multipart/form-data encoding

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_AUTOPLIST=	yes

post-extract:
	${RM} -r ${WRKSRC}/tests

.include <bsd.port.mk>
