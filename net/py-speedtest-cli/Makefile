# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/net/py-speedtest-cli/Makefile 378205 2015-01-31 12:55:28Z nivit $

PORTNAME=	speedtest-cli
PORTVERSION=	0.3.2
PORTREVISION=	0
CATEGORIES=	net
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Command line interface for testing internet bandwidth

LICENSE=	APACHE20

RUN_DEPENDS=	ca_root_nss>=3.17.3:${PORTSDIR}/security/ca_root_nss

USES=		python
USE_PYTHON=	autoplist distutils

post-patch:
	        @${REINPLACE_CMD} -e 's,%%LOCALBASE%%,${LOCALBASE},1' \
			                ${WRKSRC}/speedtest_cli.py

.include <bsd.port.mk>
