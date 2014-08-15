# $FreeBSD: head/Mk/Uses/gssapi.mk 358131 2014-06-17 15:42:45Z bapt $
#
# handle dependency on Kerberos port
#
# Feature:	gssapi
# Usage:	USES=gssapi or USES=gssapi:ARGS
# Valid ARGS:	base (default, implicit), heimdal, mit.
#		"bootstrap" is a special prefix only for krb5 or heimdal ports.
#		("bootstrap,mit")
#		flags is a special suffix to define CFLAGS, LDFLAGS, and LDADD.
#		("base,flags")
#
# MAINTAINER:	hrs@FreeBSD.org
#
# User defined variables:
#  HEIMDAL_HOME (default: ${LOCALBASE})
#  KRB5_HOME (default: ${LOCALBASE})
#
# Exported variables:
#  GSSAPIBASEDIR
#  GSSAPICPPFLAGS
#  GSSAPIINCDIR
#  GSSAPILDFLAGS
#  GSSAPILIBDIR
#  GSSAPILIBS
#  GSSAPI_CONFIGURE_ARGS
#
# Affected variables:
#  PREFIX (bootstrap)
#  CFLAGS (flags)
#  LDADD (flags)
#  LDCFLAGS
#
# Notes:
#   - GSSAPILIBDIR is prepended to "-Wl,-rpath," in LDFLAGS.
#   - bootstrap sets PREFIX based on KRB5_HOME or HEIMDAL_HOME.
#
# Usage:
#
#  A typical example:
#
#   OPTIONS_SINGLE= GSSAPI
#   OPTIONS_SINGLE_GSSAPI= GSSAPI_BASE GSSAPI_HEIMDAL GSSAPI_MIT GSSAPI_NONE
#
#   GSSAPI_BASE_USES=	gssapi
#   GSSAPI_BASE_CONFIGURE_ON= \
#	--with-gssapi=${GSSAPIBASEDIR} ${GSSAPI_CONFIGURE_ARGS}
#
#   GSSAPI_HEIMDAL_USES=gssapi:heimdal
#   GSSAPI_HEIMDAL_CONFIGURE_ON= \
#	--with-gssapi=${GSSAPIBASEDIR} ${GSSAPI_CONFIGURE_ARGS}
#
#   GSSAPI_MIT_USES=	gssapi:mit
#   GSSAPI_MIT_CONFIGURE_ON= \
#	--with-gssapi=${GSSAPIBASEDIR} ${GSSAPI_CONFIGURE_ARGS}
#
#   GSSAPI_NONE_CONFIGURE_ON= --without-gssapi
#
#  If pathname is required for Kerberos implementation, use ${GSSAPIBASEDIR}.
#
#  CFLAGS, LDFLAGS, and LDADD can automatically be set by using "flags"
#  modifier.  It is useful if the port does not use a configure script.
#
# How To Debug:
#
#  A port maintainer can try "make debug-krb" to confirm if building
#  a GSSAPI library works fine.  It will perform a library link test and
#  show which library and what parameters will be used.
#  If it works but your port does not build, some parameters are missing in
#  the building phase of the port.  If it does not work, the problem is in
#  the GSSAPI library, not your port.  Please contact MAINTAINER of this file
#  in that case.
#
.if !defined(_INCLUDE_USES_GSSAPI_MK)
_INCLUDE_USES_GSSAPI_MK=	yes

GSSAPILIBDIR=	${GSSAPIBASEDIR}/lib
GSSAPIINCDIR=	${GSSAPIBASEDIR}/include

_HEIMDAL_DEPENDS=${GSSAPILIBDIR}/libgssapi.so:${PORTSDIR}/security/heimdal
_MITKRB5_DEPENDS=${GSSAPILIBDIR}/libkrb5support.so:${PORTSDIR}/security/krb5
_HEADERS=	sys/types.h sys/stat.h stdint.h

gssapi_ARGS?=	base
.for _A in ${gssapi_ARGS:S/,/ /g}
_local:=	${_A}
.if ${_local} == "base"
HEIMDAL_HOME=	/usr
GSSAPIBASEDIR=	${HEIMDAL_HOME}
_HEADERS+=	gssapi/gssapi.h gssapi/gssapi_krb5.h krb5.h
GSSAPICPPFLAGS=	-I${GSSAPIINCDIR}
GSSAPILIBS=	-lkrb5 -lgssapi -lgssapi_krb5
GSSAPILDFLAGS=	-L"${GSSAPILIBDIR}"
.elif ${_local} == "heimdal"
HEIMDAL_HOME?=	${LOCALBASE}
GSSAPIBASEDIR=	${HEIMDAL_HOME}
.if !defined(_KRB_BOOTSTRAP)
BUILD_DEPENDS+=	${_HEIMDAL_DEPENDS}
RUN_DEPENDS+=	${_HEIMDAL_DEPENDS}
_HEADERS+=	gssapi/gssapi.h gssapi/gssapi_krb5.h krb5.h
.else
PREFIX=		${HEIMDAL_HOME}
.endif
GSSAPICPPFLAGS=	-I${GSSAPIINCDIR}
GSSAPILIBS=	-lkrb5 -lgssapi
GSSAPILDFLAGS=	-L"${GSSAPILIBDIR}"
_RPATH=		${GSSAPILIBDIR}
.elif ${_local} == "mit"
KRB5_HOME?=	${LOCALBASE}
GSSAPIBASEDIR=	${KRB5_HOME}
.if !defined(_KRB_BOOTSTRAP)
BUILD_DEPENDS+=	${_MITKRB5_DEPENDS}
RUN_DEPENDS+=	${_MITKRB5_DEPENDS}
_HEADERS+=	gssapi/gssapi.h gssapi/gssapi_krb5.h krb5.h
.else
PREFIX=		${KRB5_HOME}
.endif
GSSAPILIBS=	-lkrb5 -lgssapi_krb5
GSSAPICPPFLAGS=	-I"${GSSAPIINCDIR}"
GSSAPILDFLAGS=	-L"${GSSAPILIBDIR}"
_RPATH=		${GSSAPILIBDIR}
.elif ${_local} == "bootstrap"
_KRB_BOOTSTRAP=	1
.elif ${_local} == "flags"
_KRB_USEFLAGS=	1
.else
IGNORE=	USES=gssapi - invalid args: [${_local}] specified
.endif
.endfor

# Fix up -Wl,-rpath in LDFLAGS
.if defined(_RPATH) && !empty(_RPATH)
.if !empty(LDFLAGS:M-Wl,-rpath,*)
.for F in ${LDFLAGS:M-Wl,-rpath,*}
LDFLAGS:=	-Wl,-rpath,${_RPATH}:${F:S/-Wl,-rpath,//} \
		${LDFLAGS:N-Wl,-rpath,*}
.endfor
.else
LDFLAGS+=	-Wl,-rpath,${_RPATH}:/usr/lib
.endif
_DEBUG_KRB_RPATH=	-Wl,-rpath,${_RPATH}
.endif
.if defined(_KRB_USEFLAGS) && !empty(_KRB_USEFLAGS)
CFLAGS+=	${GSSAPICPPFLAGS}
LDFLAGS+=	${GSSAPILDFLAGS}
LDADD+=		${GSSAPILIBS}
.endif
GSSAPI_CONFIGURE_ARGS=	\
	CFLAGS="${GSSAPICPPFLAGS} ${CFLAGS}" \
	LDFLAGS="${GSSAPILDFLAGS} ${LDFLAGS}" \
	LIBS="${GSSAPILIBS} ${LIBS}"

debug-krb:
	@(for I in ${_HEADERS}; do echo "#include <$$I>"; done; \
	    echo "int main() { gss_acquire_cred(0, 0, 0, 0, 0, 0, 0, 0);" \
	    "krb5_init_context(0);" \
	    "gsskrb5_register_acceptor_identity(0); return 0;}" \
	) > /tmp/${.TARGET}.c
	${CC} ${CFLAGS} -o /tmp/${.TARGET}.x ${GSSAPICPPFLAGS} \
	    ${GSSAPILIBS} ${GSSAPILDFLAGS} ${_DEBUG_KRB_RPATH} \
	    /tmp/${.TARGET}.c && \
	    ldd /tmp/${.TARGET}.x; \
	    rm -f /tmp/${.TARGET}.x
	@echo "PREFIX: ${PREFIX}"
	@echo "GSSAPIBASEDIR: ${GSSAPIBASEDIR}"
	@echo "GSSAPIINCDIR: ${GSSAPIINCDIR}"
	@echo "GSSAPILIBDIR: ${GSSAPILIBDIR}"
	@echo "GSSAPILIBS: ${GSSAPILIBS}"
	@echo "GSSAPICPPFLAGS: ${GSSAPICPPFLAGS}"
	@echo "GSSAPILDFLAGS: ${GSSAPILDFLAGS}"
	@echo "GSSAPI_CONFIGURE_ARGS: ${GSSAPI_CONFIGURE_ARGS}"
	@echo "CFLAGS: ${CFLAGS}"
	@echo "LDFLAGS: ${LDFLAGS}"
	@echo "LDADD: ${LDADD}"
.endif
