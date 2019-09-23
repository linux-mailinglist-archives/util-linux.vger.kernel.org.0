Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A066DBBDF9
	for <lists+util-linux@lfdr.de>; Mon, 23 Sep 2019 23:32:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389703AbfIWVcJ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 23 Sep 2019 17:32:09 -0400
Received: from mail.stikonas.eu ([82.71.3.19]:56458 "EHLO mail.stikonas.eu"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729120AbfIWVcJ (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Mon, 23 Sep 2019 17:32:09 -0400
X-Greylist: delayed 543 seconds by postgrey-1.27 at vger.kernel.org; Mon, 23 Sep 2019 17:32:08 EDT
Received: from pine.stikonas.eu (localhost [127.0.0.1])
        by mail.stikonas.eu (Postfix) with ESMTP id 15742303117E;
        Mon, 23 Sep 2019 22:23:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=stikonas.eu; s=mail;
        t=1569273784; bh=FOzgGvE32Yg9sxs3s/IIWxgK2RVM6WQ+jIIFFqjaa9o=;
        h=From:To:Cc:Subject:Date;
        b=aAyA38Axq2O5TFLDYtLKQIJEG49mgTBrmfBwniB2nqTu2y4WUGtzeLeuRilqVb6Sr
         r73IdEbBfjkYFpgF1GlduK7jK4isbPyl68JDtUVOZ27Onw0wLtRgz97AJLU0CHN1Ny
         8JcjrJJu7Z41iwSBsEsj18z+UKDGXQ9pnQIn34+0=
Received: from localhost.localdomain ([2a02:8010:6548:0:303d:3dca:5381:d54d])
        by pine.stikonas.eu with ESMTPSA
        id Ic6kA7g3iV2yDgAAtWO0jw
        (envelope-from <andrius@stikonas.eu>); Mon, 23 Sep 2019 22:23:04 +0100
From:   =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>
To:     util-linux@vger.kernel.org
Cc:     =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>
Subject: [PATCH] docs: fix mixtyped constant.
Date:   Mon, 23 Sep 2019 22:22:48 +0100
Message-Id: <20190923212248.2972-1-andrius@stikonas.eu>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Andrius Štikonas <andrius@stikonas.eu>
---
 libfdisk/src/iter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/libfdisk/src/iter.c b/libfdisk/src/iter.c
index 9a0b0801c..abc3d35a4 100644
--- a/libfdisk/src/iter.c
+++ b/libfdisk/src/iter.c
@@ -57,7 +57,7 @@ void fdisk_free_iter(struct fdisk_iter *itr)
 /**
  * fdisk_reset_iter:
  * @itr: iterator pointer
- * @direction: FDISK_INTER_{FOR,BACK}WARD or -1 to keep the direction unchanged
+ * @direction: FDISK_ITER_{FOR,BACK}WARD or -1 to keep the direction unchanged
  *
  * Resets the iterator.
  */
-- 
2.21.0

