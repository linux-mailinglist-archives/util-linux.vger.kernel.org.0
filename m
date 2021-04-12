Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0F6535CA95
	for <lists+util-linux@lfdr.de>; Mon, 12 Apr 2021 18:01:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239555AbhDLQBY (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 12 Apr 2021 12:01:24 -0400
Received: from ns1.namespace.at ([213.208.148.230]:42352 "EHLO
        nlay-fle-service01.in.namespace.at" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S238498AbhDLQBY (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 12 Apr 2021 12:01:24 -0400
X-Greylist: delayed 692 seconds by postgrey-1.27 at vger.kernel.org; Mon, 12 Apr 2021 12:01:24 EDT
Received: from [10.100.0.62] (helo=debbuild.in.namespace.at)
        by nlay-fle-service01.in.namespace.at with smtp (Exim 4.92)
        (envelope-from <zeha@debian.org>)
        id 1lVyod-00AtxU-KN
        for util-linux@vger.kernel.org; Mon, 12 Apr 2021 17:49:31 +0200
Received: (nullmailer pid 2039858 invoked by uid 1000);
        Mon, 12 Apr 2021 15:49:31 -0000
From:   Chris Hofstaedtler <zeha@debian.org>
To:     util-linux@vger.kernel.org
Subject: [PATCH] hexdump: add "hd" program name to man page
Date:   Mon, 12 Apr 2021 15:49:26 +0000
Message-Id: <20210412154926.2039689-1-zeha@debian.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Chris Hofstaedtler <zeha@debian.org>
Bug-Debian: https://bugs.debian.org/978977
---
 text-utils/hexdump.1.adoc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/text-utils/hexdump.1.adoc b/text-utils/hexdump.1.adoc
index 3198b933f..4f8657676 100644
--- a/text-utils/hexdump.1.adoc
+++ b/text-utils/hexdump.1.adoc
@@ -48,6 +48,8 @@ hexdump - display file contents in hexadecimal, decimal, octal, or ascii
 
 *hexdump* _options file_ ...
 
+*hd* _options file_ ...
+
 == DESCRIPTION
 
 The *hexdump* utility is a filter which displays the specified files, or standard input if no files are specified, in a user-specified format.
-- 
2.31.0

