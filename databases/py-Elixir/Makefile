# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/databases/py-Elixir/Makefile 343584 2014-02-10 05:20:14Z rm $

PORTNAME=	Elixir
PORTVERSION=	0.7.1
PORTREVISION=	2
CATEGORIES=	databases python
MASTER_SITES=	CHEESESHOP \
		http://nivi.interfree.it/distfiles/${PORTNAME}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Declarative Mapper for SQLAlchemy

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sqlalchemy06>=0.4.0:${PORTSDIR}/databases/py-sqlalchemy06

USE_PYTHON=		yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_AUTOPLIST=	yes

.include <bsd.port.mk>
