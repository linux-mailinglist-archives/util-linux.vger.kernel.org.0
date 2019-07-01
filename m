Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72B4012F6D
	for <lists+util-linux@lfdr.de>; Fri,  3 May 2019 15:42:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727231AbfECNmb (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 3 May 2019 09:42:31 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:46042 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726789AbfECNmb (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 3 May 2019 09:42:31 -0400
Received: by mail-wr1-f68.google.com with SMTP id s15so7914455wra.12;
        Fri, 03 May 2019 06:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Hs7JbXZEu6n4q3pR0h963x1gcyvcu1OIej7nyo9+CZo=;
        b=c1Huxf7OR34CM+PPfohumy2YGVuMgDBYH/nqho8Vxw8rhXPxb2qNlnLC9Mq6BMv4Dg
         6r9CvcKd48OVxbbYKgsQwdtxgsMdvngrCOoVTFGdQzHZYg/fc4E4mv628EPukiWpTLhh
         OcLJaJFANYe6ydK2ptquCdTfw2Rj3giFTqh7Ra73Qlx0GfvKFt8dGEd6u1Xst+LJtOui
         Uu3pZJrXtbrEdyk2UpIcNDQSz0Yc1lwfCKHRsn1Z12N4UmTrOS/At8f32bRxHIh2wckf
         kZolD7YTY5nvKqY3jkhZceek2RV7MxytQhRzcLRpVtLuna+T9RKcTc/ThkF3NS3kdyTr
         XkpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Hs7JbXZEu6n4q3pR0h963x1gcyvcu1OIej7nyo9+CZo=;
        b=Dag5sDxx8SkI42txz8iFebhy+uRTGX7rDtpav5jNb7P/e8k7oz5aqjV9YUy26iM3K2
         Yd3pOH8dFIkjptq1kMf4TFYSV07IaCgZnPx2nRlVyVxtkHyiAlbYlA3PwzHBRER9CKUB
         XB78F9NbA9U1ZoD+JJSFA5jnalm7njBT8STJIpYHn+IXYTnP8fVnMDfGYfxGRH281bJg
         XT1CWL8KDiCyxe0nIeBDdLA+wWoH8eNZhh+JM+0NeyM4xg2g+nCcgHvSVY6VwJuiyswz
         L6tqPy/VfgUyVsQO4p1H3yA8ecI6IzxjsF/HWBg3pETUMio2heKaEOY6IGrAm7G8fvPs
         dSlw==
X-Gm-Message-State: APjAAAWNSG3YYuGUm3Kizq6XJbZ3B+Tf3YUTAEiswFNgDu0ror2UWq8h
        8NjRJSjDMSi2CHmCVPErlEA=
X-Google-Smtp-Source: APXvYqwoGh70rm9qHwWJpIbzh1NzC1K4G9kplXRGc24ohHTqNc9TARUOyut5TvB1Z294htiiuajbyQ==
X-Received: by 2002:a5d:434c:: with SMTP id u12mr933649wrr.92.1556890949822;
        Fri, 03 May 2019 06:42:29 -0700 (PDT)
Received: from 5WDYG62.mdi (static-css-cqn-143221.business.bouyguestelecom.com. [176.149.143.221])
        by smtp.gmail.com with ESMTPSA id s3sm3871960wre.97.2019.05.03.06.42.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 May 2019 06:42:29 -0700 (PDT)
From:   Romain Izard <romain.izard.pro@gmail.com>
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org, linux-block@vger.kernel.org,
        Romain Izard <romain.izard.pro@gmail.com>
Subject: [PATCH v2] lib/loopdev.c: Retry LOOP_SET_STATUS64 on EAGAIN
Date:   Fri,  3 May 2019 15:42:22 +0200
Message-Id: <20190503134222.3050-1-romain.izard.pro@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

A recent bugfix in the Linux kernel made it possible for the
LOOP_SET_STATUS64 ioctl to fail when called with a non-zero offset,
with an EAGAIN errno:

5db470e229e2 loop: drop caches if offset or block_size are changed

This fix changes a silent failure (where mount could sometimes access
the backing loop image through the cache without the specified offset)
to an explicit failure, and it has also been backported on stable
branches.

On a 5.0 kernel, other changes to the loop driver make it hard to get
generate the EAGAIN error, but this bugfix has also been backported to
stables branches, without these changes. At least with the 4.14 stable
branch, the EAGAIN error can be quickly generated with the following loop:

while mount -o loop,offset=239 disk point && umount point; do :; done

Retry the ioctl when it fails with EAGAIN, which means that mount or
losetup will eventually succeed when encountering this case.

Signed-off-by: Romain Izard <romain.izard.pro@gmail.com>
---
v2: Add a delay between retries

---
 lib/loopdev.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/lib/loopdev.c b/lib/loopdev.c
index 5d2e95b7e..22305ecd9 100644
--- a/lib/loopdev.c
+++ b/lib/loopdev.c
@@ -1275,7 +1275,7 @@ static int loopcxt_check_size(struct loopdev_cxt *lc, int file_fd)
  */
 int loopcxt_setup_device(struct loopdev_cxt *lc)
 {
-	int file_fd, dev_fd, mode = O_RDWR, rc = -1, cnt = 0;
+	int file_fd, dev_fd, mode = O_RDWR, rc = -1, cnt = 0, err, again;
 	int errsv = 0;
 
 	if (!lc || !*lc->device || !lc->filename)
@@ -1354,7 +1354,13 @@ int loopcxt_setup_device(struct loopdev_cxt *lc)
 		goto err;
 	}
 
-	if (ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info)) {
+	do {
+		err = ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info);
+		again = err && errno == EAGAIN;
+		if (again)
+			usleep(250000);
+	} while (again);
+	if (err) {
 		rc = -errno;
 		errsv = errno;
 		DBG(SETUP, ul_debugobj(lc, "LOOP_SET_STATUS64 failed: %m"));
@@ -1399,7 +1405,7 @@ err:
  */
 int loopcxt_ioctl_status(struct loopdev_cxt *lc)
 {
-	int dev_fd, rc = -1;
+	int dev_fd, rc = -1, err, again;
 
 	errno = 0;
 	dev_fd = loopcxt_get_fd(lc);
@@ -1410,7 +1416,13 @@ int loopcxt_ioctl_status(struct loopdev_cxt *lc)
 	}
 	DBG(SETUP, ul_debugobj(lc, "device open: OK"));
 
-	if (ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info)) {
+	do {
+		err = ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info);
+		again = err && errno == EAGAIN;
+		if (again)
+			usleep(250000);
+	} while (again);
+	if (err) {
 		rc = -errno;
 		DBG(SETUP, ul_debugobj(lc, "LOOP_SET_STATUS64 failed: %m"));
 		return rc;
-- 
2.17.1

