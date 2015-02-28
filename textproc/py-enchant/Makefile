# Created by: Nicola Vitale	<nivit@email.it>
# $FreeBSD: head/textproc/py-enchant/Makefile 367888 2014-09-10 20:50:31Z gerald $

PORTNAME=	enchant
PORTVERSION=	1.6.5
PORTREVISION=	6
CATEGORIES=	textproc devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	py${PORTNAME}-${PORTVERSION}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Spellchecking library for Python based on the Enchant library

LIB_DEPENDS=	libenchant.so:${PORTSDIR}/textproc/enchant

USE_PYTHON=		yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_AUTOPLIST=	yes
USE_WX=		3.0+
WX_COMPS=	python:run

LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
