# $FreeBSD: head/Mk/Uses/scons.mk 355494 2014-05-27 12:13:05Z bapt $
#
# Provide support to use the scons
#
# Feature:		scons
# Usage:		USES=scons
#
# MAINTAINER: python@FreeBSD.org

.if !defined(_INCLUDE_USES_SCONS_MK)
_INCLUDE_USES_SCONS_MK=	yes

.if defined(scons_ARGS)
IGNORE=	Incorrect 'USES+= scons:${scons_ARGS}' scons takes no arguments
.endif

MAKEFILE=		#
MAKE_FLAGS=		#
ALL_TARGET=		#
LIBPATH?=		${LOCALBASE}/lib
CPPPATH?=		${LOCALBASE}/include
SCONS=			${LOCALBASE}/bin/scons
BUILD_DEPENDS+=		${SCONS}:${PORTSDIR}/devel/scons
MAKE_CMD?=		${SCONS}
MAKE_ARGS+=	CCFLAGS="${CCFLAGS}" CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="${LINKFLAGS}" PKGCONFIGDIR="${PKGCONFIGDIR}"  \
		CPPPATH="${CPPPATH}" LIBPATH="${LIBPATH}" PREFIX="${PREFIX}" \
		CC="${CC}" CXX="${CXX}"

.if !defined(NO_STAGE)
MAKE_ARGS+=		${DESTDIRNAME:tl}=${STAGEDIR}
.endif

.endif
