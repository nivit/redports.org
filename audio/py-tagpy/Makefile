# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/audio/py-tagpy/Makefile 366556 2014-08-29 19:33:44Z antoine $

PORTNAME=	tagpy
PORTVERSION=	2013.1
PORTREVISION=	4
CATEGORIES=	audio python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Python bindings for Scott Wheeler's TagLib

LICENSE=	MIT

LIB_DEPENDS=	libboost_python.so:${PORTSDIR}/devel/boost-python-libs \
		libtag.so:${PORTSDIR}/audio/taglib

USES=		compiler:c++11-lang python shebangfix
HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	configure.py
CONFIGURE_ARGS=	--taglib-inc-dir="${LOCALBASE}/include/taglib" \
		--taglib-lib-dir="${LOCALBASE}/lib" \
		--boost-inc-dir="${PYTHON_INCLUDEDIR},${LOCALBASE}/include" \
		--boost-lib-dir="${PYTHON_LIBDIR},${LOCALBASE}/lib" \
		--boost-python-libname="boost_python"
python_OLD_CMD=	/usr/bin/env python
python_CMD=	${PYTHON_CMD}
SHEBANG_FILES=	configure.py
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
