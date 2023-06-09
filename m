Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29A60728D2C
	for <lists+util-linux@lfdr.de>; Fri,  9 Jun 2023 03:37:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237851AbjFIBhe (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 8 Jun 2023 21:37:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237871AbjFIBhb (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 8 Jun 2023 21:37:31 -0400
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AAC230ED
        for <util-linux@vger.kernel.org>; Thu,  8 Jun 2023 18:37:26 -0700 (PDT)
X-UUID: 6b6d6c32400a4dc5a2c2ec8b16259b6e-20230609
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:572910a0-7f0c-4e38-b0e1-9af79caa9365,IP:15,
        URL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
        ON:release,TS:0
X-CID-INFO: VERSION:1.1.22,REQID:572910a0-7f0c-4e38-b0e1-9af79caa9365,IP:15,UR
        L:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION
        :release,TS:0
X-CID-META: VersionHash:120426c,CLOUDID:b631dc3d-de1e-4348-bc35-c96f92f1dcbb,B
        ulkID:230609093414VJACSBO5,BulkQuantity:1,Recheck:0,SF:24|17|19|44|102,TC:
        nil,Content:0,EDM:-3,IP:-2,URL:11|1,File:nil,Bulk:40,QS:nil,BEC:nil,COL:0,
        OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: 6b6d6c32400a4dc5a2c2ec8b16259b6e-20230609
X-User: lienze@kylinos.cn
Received: from ubuntu.. [(39.156.73.12)] by mailgw
        (envelope-from <lienze@kylinos.cn>)
        (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
        with ESMTP id 2077850085; Fri, 09 Jun 2023 09:37:17 +0800
From:   Enze Li <lienze@kylinos.cn>
To:     util-linux@vger.kernel.org
Cc:     Enze Li <lienze@kylinos.cn>
Subject: [PATCH 2/2] build-sys: add enosys and syscalls.h to gitignore
Date:   Fri,  9 Jun 2023 09:37:04 +0800
Message-Id: <20230609013704.2926603-2-lienze@kylinos.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609013704.2926603-1-lienze@kylinos.cn>
References: <20230609013704.2926603-1-lienze@kylinos.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

After compiling enosys, the syscalls.h file and the executable enosys are
generated, let's add these two files to the .gitignore file.

Signed-off-by: Enze Li <lienze@kylinos.cn>
---
 .gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/.gitignore b/.gitignore
index 456811ac6..f727ec16a 100644
--- a/.gitignore
+++ b/.gitignore
@@ -62,6 +62,7 @@ mkinstalldirs
 stamp-h
 stamp-h.in
 stamp-h1
+syscalls.h
 tags
 test-suite.log
 tests/run.sh.log
@@ -96,6 +97,7 @@ ylwrap
 /delpart
 /dmesg
 /eject
+/enosys
 /fadvise
 /fallocate
 /fdformat
-- 
2.34.1

