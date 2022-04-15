Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C67B502503
	for <lists+util-linux@lfdr.de>; Fri, 15 Apr 2022 07:55:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242245AbiDOF6F (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 15 Apr 2022 01:58:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350366AbiDOF6A (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 15 Apr 2022 01:58:00 -0400
Received: from nksmu.kylinos.cn (mailgw.kylinos.cn [123.150.8.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD245DE74
        for <util-linux@vger.kernel.org>; Thu, 14 Apr 2022 22:55:31 -0700 (PDT)
X-UUID: a847b08bc3ca4382913610ba892c3da9-20220415
X-UUID: a847b08bc3ca4382913610ba892c3da9-20220415
Received: from cs2c.com.cn [(172.17.111.24)] by nksmu.kylinos.cn
        (envelope-from <lienze@kylinos.cn>)
        (Generic MTA)
        with ESMTP id 913735316; Fri, 15 Apr 2022 13:54:14 +0800
X-ns-mid: postfix-625908CF-7202314884
Received: from localhost.localdomain (unknown [172.30.60.63])
        by cs2c.com.cn (NSMail) with ESMTPSA id AC9A23848674;
        Fri, 15 Apr 2022 05:55:27 +0000 (UTC)
From:   Enze Li <lienze@kylinos.cn>
To:     lienze@kylinos.cn
Cc:     util-linux@vger.kernel.org
Subject: [PATCH v2] build-sys: add blkpr to gitignore
Date:   Fri, 15 Apr 2022 13:55:10 +0800
Message-Id: <20220415055510.714627-1-lienze@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220415033125.3409425-1-lienze@kylinos.cn>
References: <20220415033125.3409425-1-lienze@kylinos.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS,
        SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE,T_SPF_PERMERROR,UNPARSEABLE_RELAY
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Since this commit 627428a95692 ("blkpr: add block persistent
reservations command"), we introduced blkpr, but the compiled generated
binary file is not added to the gitignore, so let's do it.

v2:
- Reorder blkxxx in alphabetical order.

Signed-off-by: Enze Li <lienze@kylinos.cn>
---
 .gitignore | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/.gitignore b/.gitignore
index 3274563ec..05ec48c9b 100644
--- a/.gitignore
+++ b/.gitignore
@@ -73,8 +73,9 @@ GSYMS
 /addpart
 /agetty
 /blkdiscard
-/blkzone
 /blkid
+/blkpr
+/blkzone
 /blockdev
 /cal
 /cfdisk
-- 
2.25.1

