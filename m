Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAD7222BB0C
	for <lists+util-linux@lfdr.de>; Fri, 24 Jul 2020 02:35:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727778AbgGXAfL (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 23 Jul 2020 20:35:11 -0400
Received: from vn01.namespace.at ([213.208.148.228]:41266 "EHLO
        nlay-fle-service01.in.namespace.at" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726723AbgGXAfL (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Thu, 23 Jul 2020 20:35:11 -0400
Received: from [10.100.0.62] (helo=debbuild.in.namespace.at)
        by nlay-fle-service01.in.namespace.at with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <zeha@debian.org>)
        id 1jylg5-0067nt-I4
        for util-linux@vger.kernel.org; Fri, 24 Jul 2020 02:35:09 +0200
Received: from ch by debbuild.in.namespace.at with local (Exim 4.94)
        (envelope-from <zeha@debian.org>)
        id 1jylg5-0005CA-9H
        for util-linux@vger.kernel.org; Fri, 24 Jul 2020 00:35:09 +0000
From:   Chris Hofstaedtler <zeha@debian.org>
To:     util-linux@vger.kernel.org
Subject: [PATCH] fdisk: fix expected test output on alpha
Date:   Fri, 24 Jul 2020 00:35:09 +0000
Message-Id: <20200724003509.19927-1-zeha@debian.org>
X-Mailer: git-send-email 2.28.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

The last test output update inadvertedly replaced "ext2" with "MS-DOS"
in the alpha-specific data.

Fixes: 3c36438f0
Broken build log: https://buildd.debian.org/status/fetch.php?pkg=util-linux&arch=alpha&ver=2.36-1&stamp=1595550493&raw=0
Signed-off-by: Chris Hofstaedtler <zeha@debian.org>
---
 tests/expected/fdisk/bsd_0_64_alpha.LE | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/expected/fdisk/bsd_0_64_alpha.LE b/tests/expected/fdisk/bsd_0_64_alpha.LE
index 6d41d4a11..ae7dabda8 100644
--- a/tests/expected/fdisk/bsd_0_64_alpha.LE
+++ b/tests/expected/fdisk/bsd_0_64_alpha.LE
@@ -211,7 +211,7 @@ Command (m for help):
 00 unused           05 4.1BSD           09 4.4LFS           0d boot           
 01 swap             06 Eighth Edition   0a unknown          0e ADOS           
 02 Version 6        07 4.2BSD           0b HPFS             0f HFS            
-03 Version 7        08 MS-DOS           0c ISO-9660         10 AdvFS          
+03 Version 7        08 ext2             0c ISO-9660         10 AdvFS          
 04 System V       
 
 Command (m for help): 
-- 
2.28.0.rc1

