# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: head/java/eclipse-aptana2/Makefile 367888 2014-09-10 20:50:31Z gerald $

PORTNAME=	aptana
PORTVERSION=	2.0.5.1278522500
#PORTREVISION=	0
PORTREVISION=	1
CATEGORIES=	java devel
MASTER_SITES=	http://nivi.interfree.it/distfiles/eclipse-aptana2/
PKGNAMEPREFIX=	eclipse-
PKGNAMESUFFIX=	2
DISTNAME=	com.aptana.ide.feature.studio-${PORTVERSION}-5-7857HJ97CFF61HN1HZHtem5tN7

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Aptana Studio 2 Web Development Tools (Eclipse plugin)

RUN_DEPENDS=	${LOCALBASE}/bin/eclipse:${PORTSDIR}/java/eclipse

CONFLICTS_INSTALL=	eclipse-aptana-1*

USES=		zip
JAVA_VERSION=	1.6+

NO_BUILD=	yes
NO_WRKSUBDIR=	yes

USE_JAVA=	yes

do-install:
	@(cd ${WRKDIR} && ${COPYTREE_SHARE} "features plugins" ${STAGEDIR}${PREFIX}/lib/eclipse)

.include <bsd.port.mk>
