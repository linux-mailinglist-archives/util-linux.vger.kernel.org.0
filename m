Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C9E84D740B
	for <lists+util-linux@lfdr.de>; Sun, 13 Mar 2022 10:44:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234200AbiCMJpb (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 13 Mar 2022 05:45:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233001AbiCMJpa (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 13 Mar 2022 05:45:30 -0400
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.186])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 189FF84EF8
        for <util-linux@vger.kernel.org>; Sun, 13 Mar 2022 01:44:21 -0800 (PST)
X-KPN-MessageId: 1f447b53-a2b2-11ec-a506-00505699b430
Received: from smtp.kpnmail.nl (unknown [10.31.155.8])
        by ewsoutbound.so.kpn.org (Halon) with ESMTPS
        id 1f447b53-a2b2-11ec-a506-00505699b430;
        Sun, 13 Mar 2022 10:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=telfort.nl; s=telfort01;
        h=mime-version:message-id:date:subject:to:from;
        bh=5zXJ03ZFW02bMWX2oENH7h7RYKjPGSk86ybIZFxwqU4=;
        b=rjKCk19LEQbTdkZfzE3IvD2ouGPckKT+LWdcML/Rz7odl50iQYGzM1NPisdJl5huc8F3I8pIUD+kx
         8kd+srDuUkWxOTd4XafM4mmR/Mlb4GPAAQgab/Kl/zkHPmhhqSA1c0qHuSq+rEPwBzg2IWFu31AYAG
         wRJTp3KEWeHMqKy8=
X-KPN-MID: 33|F3XSS3sv4XlDHNlDfYNOnnoVP7QkqKDtS/mkPl3QF2sV5DkOEqw7Y5vax/fG8Sn
 C5g8Ij7ApeSXYDrN/6MVweQ==
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|31PsYWqzGREJOlMBFI/w4ye58Jf2nTILYDL/sRf4cRPDf4rb2ekXnJ2oruhf+dM
 +JloOJv+ZOCZENK/TN8Wdow==
X-Originating-IP: 82.168.50.91
Received: from localhost (82-168-50-91.fixed.kpn.net [82.168.50.91])
        by smtp.kpnmail.nl (Halon) with ESMTPSA
        id 27404439-a2b2-11ec-9cff-00505699d6e5;
        Sun, 13 Mar 2022 10:44:19 +0100 (CET)
From:   Benno Schulenberg <bensberg@telfort.nl>
To:     util-linux@vger.kernel.org
Subject: [PATCH 2/2 v2] hardlink: grammaticalize the main description in the man page
Date:   Sun, 13 Mar 2022 10:43:57 +0100
Message-Id: <20220313094357.2546-2-bensberg@telfort.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220313094357.2546-1-bensberg@telfort.nl>
References: <20220313094357.2546-1-bensberg@telfort.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

(Also, hard-wrap the extremely long line to reasonable widths,
so that later small changes are easier to observe in git.)

Signed-off-by: Benno Schulenberg <bensberg@telfort.nl>
---
 misc-utils/hardlink.1.adoc | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/misc-utils/hardlink.1.adoc b/misc-utils/hardlink.1.adoc
index 851bb285d..2fab57c57 100644
--- a/misc-utils/hardlink.1.adoc
+++ b/misc-utils/hardlink.1.adoc
@@ -22,9 +22,21 @@ hardlink - link multiple copies of a file
 
 == DESCRIPTION
 
-*hardlink* is a tool which replaces copies of a file with hardlinks or copy-on-write clones, therefore saving space.
-
-*hardlink* creates a binary tree from file sizes and after that, it compares files with the same sizes. There are two basic content comparison methods. *memcmp* method directly reads data blocks from files and compares them. The other method is based on checksums (like SHA256), in this case for each data block is calculated checksum by Linux kernel crypto API, and this checksum is stored in userspace and used for files comparison. For each file is also cached "intro" buffer (32 bytes), this buffer is used independently on the comparison method and requested cache-size and io-size. The "intro" buffer dramatically reduces operations with data content as files are very often different from the beginning.
+*hardlink* is a tool that replaces copies of a file with either hardlinks
+or copy-on-write clones, thus saving space.
+
+*hardlink* first creates a binary tree of file sizes and then compares
+the content of files that have the same size. There are two basic content
+comparison methods. The *memcmp* method directly reads data blocks from
+files and compares them. The other method is based on checksums (like SHA256);
+in this case for each data block a checksum is calculated by the Linux kernel
+crypto API, and this checksum is stored in userspace and used for file
+comparisons.
+
+For each file also an "intro" buffer (32 bytes) is cached. This buffer is used
+independently from the comparison method and requested cache-size and io-size.
+The "intro" buffer dramatically reduces operations with data content as files
+are very often different from the beginning.
 
 == OPTIONS
 
-- 
2.34.1

