# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/news/xpn/Makefile 377764 2015-01-23 22:08:32Z nivit $

PORTNAME=	xpn
PORTVERSION=	1.2.6
PORTREVISION=	5
CATEGORIES=	news python
MASTER_SITES=	http://xpn.altervista.org/codice/

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	X Python Newsreader

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}gtk2>=2.24.0:${PORTSDIR}/x11-toolkits/py-gtk2 \
		${PYTHON_PKGNAMEPREFIX}sqlite3>=2.7.9:${PORTSDIR}/databases/py-sqlite3

NO_BUILD=	yes

python_OLD_CMD=	/usr/bin/env python
# we want a versioned python command
python_CMD=	${PYTHON_CMD}

SHEBANG_FILES=	${XPN}
SUB_FILES=	${PORTNAME}
SUB_LIST=	PYTHON_CMD=${PYTHON_CMD} XPN=${XPN}

USES=		gettext python:2 shebangfix

XPN=	${PORTNAME}.py

OPTIONS_DEFINE=	DOCS

do-install:
	${MKDIR} ${STAGEDIR}${DATADIR}
	${INSTALL_SCRIPT} ${WRKSRC}/${XPN} ${STAGEDIR}${DATADIR}/${XPN}
	${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	(cd ${WRKSRC} && \
	${COPYTREE_SHARE} . ${STAGEDIR}${DATADIR} "-mindepth 2")
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.html ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
