# Created by: Nicola Vitale	<nivit@email.it>
# $FreeBSD: head/print/py-pyscript/Makefile 362023 2014-07-16 03:00:46Z adamw $

PORTNAME=	pyscript
PORTVERSION=	0.6.1
PORTREVISION=	5
CATEGORIES=	print graphics python
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Python module for producing high quality PostScript graphics

LICENSE=	GPLv2

OPTIONS_DEFINE=	DOCS EXAMPLES

PYSCRIPT_MANUAL=doc/manual/pyscript.pdf

USE_PYDISTUTILS=yes
USE_PYTHON=	yes
USE_TEX=	latex dvipsk

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	@(cd ${WRKSRC}/doc/examples; \
	${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR} "! -name Makefile")
.endif
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PYSCRIPT_MANUAL}  ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>