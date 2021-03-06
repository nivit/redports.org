# Created by: Francisco Cabrita <include@npf.pt.freebsd.org>
# $FreeBSD: head/www/joomla31/Makefile 348899 2014-03-23 23:08:49Z nivit $

PORTNAME=	joomla
PORTVERSION=	3.2.3
CATEGORIES=	www
PKGNAMESUFFIX=	3

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Dynamic web content management system (CMS)

LICENSE=	GPLv2

GH_ACCOUNT=	${PORTNAME}
GH_PROJECT=	${PORTNAME}-cms
GH_COMMIT=	e912c5a

NO_BUILD=	yes

PLIST_SUB=	WWWOWN=${WWWOWN} WWWGRP=${WWWGRP}
php_OLD_CMD=	C:\\\xampp\\\php\\\.\\\php.exe

REINPLACE_ARGS=	-i '' -E -e 's,(${php_OLD_CMD})|(/usr/bin/php),${LOCALBASE}/bin/php,g'
REINPLACE_FILES=	build/indexmaker.php tests/system/phpunit.php \
			tests/system/webdriver/tests/phpunit.php

SUB_FILES=	pkg-message

USE_GITHUB=	yes
USE_MYSQL=	yes
USE_PHP=	gd json mbstring mysql mysqli pcre pdf session simplexml xml zip zlib

WANT_PHP_WEB=	yes
WWWDIR=	${PREFIX}/www/${PORTNAME}${PORTVERSION:R:R}

pre-patch:
	@(cd ${WRKSRC} && ${REINPLACE_CMD} ${REINPLACE_FILES})

do-install:
	@${MKDIR} ${STAGEDIR}${WWWDIR}
	@(cd ${WRKSRC} && \
		${FIND} . -type d -exec ${MKDIR} ${STAGEDIR}${WWWDIR}/{} \;)
	@(cd ${WRKSRC} && \
		${FIND} . \! -type d -and \! \( -name .gitignore -or -name .travis.yml \
			-or -name travisci-phpunit.xml -or -name LICENSE.txt \
			-or -name README.md \) \
			-exec ${INSTALL_DATA} {} ${STAGEDIR}${WWWDIR}/{} \;)

.include <bsd.port.mk>
