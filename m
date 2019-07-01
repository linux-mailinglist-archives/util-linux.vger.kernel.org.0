Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E8D90129E1
	for <lists+util-linux@lfdr.de>; Fri,  3 May 2019 10:28:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725793AbfECI22 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 3 May 2019 04:28:28 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38261 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725768AbfECI22 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 3 May 2019 04:28:28 -0400
Received: by mail-wr1-f65.google.com with SMTP id k16so6713458wrn.5;
        Fri, 03 May 2019 01:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DsMl+vwcK+f5wnV/EXf52CotvofyKocfJ5vOGZcZdGI=;
        b=WZ6oYLIJePpsZlAmhXiVEHvnIkMPw1yCGWLs+8j1RLhXijDQEGcx9eCiwBxPSiw3Nr
         geWeBR2dhLI6lfIrG6DALSVz0jyogTOyAW9o030dB76F0i00KFhqLHBdlK1RiHpBNfXn
         1LzhGt+NWHESLCut1UqbHhCo21aaQNWJ1TlYcIAXuJRQA2J9How7yfjor0tmdero2r60
         Vu+zkzC8ZKfDmXH/qmqSuAkqyvsa9dNuemlMcDrroyCE20RxrfZNBKWsY74iMwGH8cag
         V/YrXNdIFhMRA9ByG7uDAtk7haL2cN/rfITtTPBlcYs0bo6P0xnAixZgrQx4RYI77vMv
         s85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DsMl+vwcK+f5wnV/EXf52CotvofyKocfJ5vOGZcZdGI=;
        b=n7Mg4GO0IOWV1PcV8hAoUmUo4yH06mAqQrGRWXL3WZvvVCAjjIPxwzaAGsMfKK7RnA
         Ur6gzh3aEMDgNKFPTtBg830ap0S7YLiYvmT4OOZGsuaV1JsZufuzyUx25Y/dV3LZmH4M
         KMYtSxSRTU0ZCwl3eQKvT94+DWap6Vq7XSf0P2VqlTWOvIDJAHQwVo2WAdtHpGO+qtXB
         k5h5TIFyMJob8KCsc7z30kdWTNs4/MMLKGSLqpqLSMIz4eh7mwkXLPlD7uJxPZSx+QpZ
         IyR/FFvkrJkH8OYKRmirfxsDuUPxLzEX4qYOPXLc7qnElEd75YW8cyU/KXv2D7LLTIVw
         xVdg==
X-Gm-Message-State: APjAAAV12UXWMJb/z7nMfyAI4Otjqu8MXcOMVawjX5/FBs1AUGj8Y0nI
        FeM5fLGIriOU7SQLAE91rZ/z82vY
X-Google-Smtp-Source: APXvYqwqydQxSxXdeB2EJx8kCuZEhiLf+dw5jAutjsGakcuFiSb5TaVWLUAawR8MOAbPvuZ9AXdy1Q==
X-Received: by 2002:adf:e88b:: with SMTP id d11mr6082532wrm.327.1556872106605;
        Fri, 03 May 2019 01:28:26 -0700 (PDT)
Received: from 5WDYG62.mdi (static-css-cqn-143221.business.bouyguestelecom.com. [176.149.143.221])
        by smtp.gmail.com with ESMTPSA id t81sm1643962wmb.47.2019.05.03.01.28.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 May 2019 01:28:25 -0700 (PDT)
From:   Romain Izard <romain.izard.pro@gmail.com>
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org, linux-block@vger.kernel.org,
        Romain Izard <romain.izard.pro@gmail.com>
Subject: [PATCH] lib/loopdev.c: Retry LOOP_SET_STATUS64 on EAGAIN
Date:   Fri,  3 May 2019 10:28:19 +0200
Message-Id: <20190503082819.23112-1-romain.izard.pro@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

A recent bugfix in the Linux kernel made it possible for the
LOOP_SET_STATUS64 ioctl to fail when called with a non-null offset,
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
 lib/loopdev.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/lib/loopdev.c b/lib/loopdev.c
index 5d2e95b7e..88436713e 100644
--- a/lib/loopdev.c
+++ b/lib/loopdev.c
@@ -1275,7 +1275,7 @@ static int loopcxt_check_size(struct loopdev_cxt *lc, int file_fd)
  */
 int loopcxt_setup_device(struct loopdev_cxt *lc)
 {
-	int file_fd, dev_fd, mode = O_RDWR, rc = -1, cnt = 0;
+	int file_fd, dev_fd, mode = O_RDWR, rc = -1, cnt = 0, err;
 	int errsv = 0;
 
 	if (!lc || !*lc->device || !lc->filename)
@@ -1354,7 +1354,10 @@ int loopcxt_setup_device(struct loopdev_cxt *lc)
 		goto err;
 	}
 
-	if (ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info)) {
+	do {
+		err = ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info);
+	} while (err && errno == EAGAIN);
+	if (err) {
 		rc = -errno;
 		errsv = errno;
 		DBG(SETUP, ul_debugobj(lc, "LOOP_SET_STATUS64 failed: %m"));
@@ -1399,7 +1402,7 @@ err:
  */
 int loopcxt_ioctl_status(struct loopdev_cxt *lc)
 {
-	int dev_fd, rc = -1;
+	int dev_fd, rc = -1, err;
 
 	errno = 0;
 	dev_fd = loopcxt_get_fd(lc);
@@ -1410,7 +1413,10 @@ int loopcxt_ioctl_status(struct loopdev_cxt *lc)
 	}
 	DBG(SETUP, ul_debugobj(lc, "device open: OK"));
 
-	if (ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info)) {
+	do {
+		err = ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info);
+	} while (err && errno == EAGAIN);
+	if (err) {
 		rc = -errno;
 		DBG(SETUP, ul_debugobj(lc, "LOOP_SET_STATUS64 failed: %m"));
 		return rc;
-- 
2.17.1

