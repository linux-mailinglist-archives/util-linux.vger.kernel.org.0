Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A99C54C4D56
	for <lists+util-linux@lfdr.de>; Fri, 25 Feb 2022 19:09:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231284AbiBYSJl (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 25 Feb 2022 13:09:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbiBYSJl (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 25 Feb 2022 13:09:41 -0500
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02B351AE67D;
        Fri, 25 Feb 2022 10:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
        MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
        Content-ID:Content-Description:In-Reply-To:References;
        bh=guR3hcibdcrqTbpixvKm64JfcQytu3zT11iDRFrtiLk=; b=mjNSOKH7lOPIncTH6QZIjlLL+K
        +D6SkjsvnhgTKU/y2MU83ti7+WUDjbP+Nt8FXCi3JJ1giE00XQnRfNOe08iKbR6nbRNGupuqqGOLD
        XmdSbEPK2tsRU1ZRWKsDQJvghQs90Z8WU/HBwJFYuLNGFyyb0BlURbh6+t6GlxuCjkILoErirTufz
        SqC8n21V03Se02TT2U7cYqGl80wKea3+y5nnAtKSRvd6YQHYWrzjD7FRkySDPsaFfSnyr/heq0SPD
        +UtKSj3GAyVKn57uQrZjF/t1EMiWj4kFv8tkpuUt2CyLxJJiTseU+hdtC5T0Qqn3jqeNnYQ8c6Ny6
        Yx65HVEw==;
Received: from 089144202139.atnat0011.highway.a1.net ([89.144.202.139] helo=localhost)
        by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
        id 1nNf1e-006TgU-Ne; Fri, 25 Feb 2022 18:09:07 +0000
From:   Christoph Hellwig <hch@lst.de>
To:     util-linux@vger.kernel.org
Cc:     linux-block@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>
Subject: [PATCH] losetup: don't skip adding a new device if it already has a device node
Date:   Fri, 25 Feb 2022 19:09:03 +0100
Message-Id: <20220225180903.1341819-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Linux plans to deprecate the auto-creation of block devices based on
access to the devic node starting from kernel 5.18.  Without that feature
losetup will fail to create the loop device if a device node already
exists, but the loop device to back it in the kernel does not exist yet.
This is a scenario that should not happen in modern udev based
distributions, but apparently there still are various scripts around that
manually call the superflous mknod.

Change losetup to unconditionally call loopcxt_add_device when a specific
device node is specified on the command line.  If the loop device
already exists the LOOP_CTL_ADD ioctl will fail, but given that losetup
ignores the return value from loopcxt_add_device that failure has no
further effect.

Reported-by: Luis Chamberlain <mcgrof@kernel.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 sys-utils/losetup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sys-utils/losetup.c b/sys-utils/losetup.c
index c400cbf12..09c028b6b 100644
--- a/sys-utils/losetup.c
+++ b/sys-utils/losetup.c
@@ -522,7 +522,7 @@ static int create_loop(struct loopdev_cxt *lc,
 		}
 	}
 
-	if (hasdev && !is_loopdev(loopcxt_get_device(lc)))
+	if (hasdev)
 		loopcxt_add_device(lc);
 
 	/* losetup --noverlap /dev/loopN file.img */
-- 
2.30.2

