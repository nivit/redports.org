# Created by: Dryice Liu	<dryice@dryice.name>
# $FreeBSD: head/devel/py-ruledispatch/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	RuleDispatch
PORTVERSION=	0.5.a1.r2717
PORTREVISION=	0
CATEGORIES=	devel python
MASTER_SITES=	http://nivit.altervista.org/FreeBSD/ports/distfiles/ \
		http://peak.telecommunity.com/snapshots/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}-0.5a1.dev-r2717

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Rule-based Dispatching and Generic Functions

LICENSE=	PSFL ZPL21
LICENSE_COMB=	dual

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Extremes>=1.1:${PORTSDIR}/devel/py-extremes \
		${PYTHON_PKGNAMEPREFIX}PyProtocols>=1.0.a0.r2302:${PORTSDIR}/devel/py-protocols-devel

USES=		python
USE_PYTHON=	distutils autoplist

# to have a platform/release indipendent directory (necessary for strip cmd)
pre-build:
	@(cd ${BUILD_WRKSRC}; \
	${SETENV} ${MAKE_ENV} ${PYTHON_CMD} ${PYSETUP} setopt -c build -o build-platlib -s FreeBSD.build)

pre-install:
	@${STRIP_CMD} ${WRKSRC}/FreeBSD.build/dispatch/_d_speedups.so

.include <bsd.port.mk>
