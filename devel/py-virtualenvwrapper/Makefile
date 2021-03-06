# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/devel/py-virtualenvwrapper/Makefile 378207 2015-01-31 13:32:06Z nivit $

PORTNAME=	virtualenvwrapper
PORTVERSION=	4.3.2
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Set of extensions to virtualenv

LICENSE=	MIT

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pbr>=0.5.19:${PORTSDIR}/devel/py-pbr
RUN_DEPENDS=	${PKGNAMEPREFIX}stevedore>=0.3:${PORTSDIR}/devel/py-stevedore \
		${PKGNAMEPREFIX}virtualenv>=1.4.8:${PORTSDIR}/devel/py-virtualenv \
		${PKGNAMEPREFIX}virtualenv-clone>=0.2.4:${PORTSDIR}/devel/py-virtualenv-clone

OPTIONS_DEFINE=	DOCS

DOCS_BUILD_DEPENDS=	sphinx-build:${PORTSDIR}/textproc/py-sphinx \
			${PYTHON_PKGNAMEPREFIX}sphinxcontrib-bitbucket>=1.0:${PORTSDIR}/textproc/py-sphinxcontrib-bitbucket

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MDOCS}
DOCSDIR=			${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}
PYDISTUTILS_BUILD_TARGET+=	build_sphinx -a -E

post-patch:
	@${REINPLACE_CMD} -e 's|python setup.py|${PYTHON_CMD} setup.py|' \
		${WRKSRC}/docs/source/conf.py

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	@cd ${WRKSRC}/build/sphinx/html && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR}
.endif

.include <bsd.port.post.mk>
