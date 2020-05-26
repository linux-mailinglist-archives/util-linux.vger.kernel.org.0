Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 117991CE01F
	for <lists+util-linux@lfdr.de>; Mon, 11 May 2020 18:11:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729956AbgEKQLA (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 11 May 2020 12:11:00 -0400
Received: from sauhun.de ([88.99.104.3]:48632 "EHLO pokefinder.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729877AbgEKQLA (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Mon, 11 May 2020 12:11:00 -0400
Received: from localhost (p54B33735.dip0.t-ipconnect.de [84.179.55.53])
        by pokefinder.org (Postfix) with ESMTPSA id B3FBB2C1F6D;
        Mon, 11 May 2020 18:10:57 +0200 (CEST)
From:   Wolfram Sang <wsa@kernel.org>
To:     util-linux@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>
Subject: [PATCH] sfdisk: avoid unneeded empty lines with '--list-free'
Date:   Mon, 11 May 2020 18:10:48 +0200
Message-Id: <20200511161048.12347-1-wsa@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Similar to commit 4a52959d1 ("(s)fdisk: avoid unneeded empty lines with
'--list'"), there were also two superfluous empty lines when /dev/sr0
didn't contain a medium. Refactor the '--list-free' code the same way as
in the mentioned commit.

Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 disk-utils/fdisk-list.c | 14 ++++++++------
 disk-utils/fdisk-list.h |  2 +-
 disk-utils/sfdisk.c     | 10 +++-------
 3 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/disk-utils/fdisk-list.c b/disk-utils/fdisk-list.c
index 78e17a97f..8cc116281 100644
--- a/disk-utils/fdisk-list.c
+++ b/disk-utils/fdisk-list.c
@@ -383,7 +383,8 @@ int print_device_pt(struct fdisk_context *cxt, char *device, int warnme,
 	return 0;
 }
 
-int print_device_freespace(struct fdisk_context *cxt, char *device, int warnme)
+int print_device_freespace(struct fdisk_context *cxt, char *device, int warnme,
+			   int seperator)
 {
 	if (fdisk_assign_device(cxt, device, 1) != 0) {	/* read-only */
 		if (warnme || errno == EACCES)
@@ -391,6 +392,9 @@ int print_device_freespace(struct fdisk_context *cxt, char *device, int warnme)
 		return -1;
 	}
 
+	if (seperator)
+		fputs("\n\n", stdout);
+
 	list_freespace(cxt);
 	fdisk_deassign_device(cxt, 1);
 	return 0;
@@ -412,15 +416,13 @@ void print_all_devices_pt(struct fdisk_context *cxt, int verify)
 void print_all_devices_freespace(struct fdisk_context *cxt)
 {
 	FILE *f = NULL;
-	int ct = 0;
+	int sep = 0;
 	char *dev;
 
 	while ((dev = next_proc_partition(&f))) {
-		if (ct)
-			fputs("\n\n", stdout);
-		if (print_device_freespace(cxt, dev, 0) == 0)
-			ct++;
+		print_device_freespace(cxt, dev, 0, sep);
 		free(dev);
+		sep = 1;
 	}
 }
 
diff --git a/disk-utils/fdisk-list.h b/disk-utils/fdisk-list.h
index 47518c498..a31ab0a7e 100644
--- a/disk-utils/fdisk-list.h
+++ b/disk-utils/fdisk-list.h
@@ -8,7 +8,7 @@ extern void list_freespace(struct fdisk_context *cxt);
 
 extern char *next_proc_partition(FILE **f);
 extern int print_device_pt(struct fdisk_context *cxt, char *device, int warnme, int verify, int seperator);
-extern int print_device_freespace(struct fdisk_context *cxt, char *device, int warnme);
+extern int print_device_freespace(struct fdisk_context *cxt, char *device, int warnme, int seperator);
 
 extern void print_all_devices_pt(struct fdisk_context *cxt, int verify);
 extern void print_all_devices_freespace(struct fdisk_context *cxt);
diff --git a/disk-utils/sfdisk.c b/disk-utils/sfdisk.c
index 6299cb49c..e0c25fde7 100644
--- a/disk-utils/sfdisk.c
+++ b/disk-utils/sfdisk.c
@@ -673,15 +673,11 @@ static int command_list_freespace(struct sfdisk *sf, int argc, char **argv)
 	fdisk_enable_listonly(sf->cxt, 1);
 
 	if (argc) {
-		int i, ct = 0;
+		int i;
 
-		for (i = 0; i < argc; i++) {
-			if (ct)
-				fputs("\n\n", stdout);
-			if (print_device_freespace(sf->cxt, argv[i], 1) != 0)
+		for (i = 0; i < argc; i++)
+			if (print_device_freespace(sf->cxt, argv[i], 1, i) != 0)
 				fail++;
-			ct++;
-		}
 	} else
 		print_all_devices_freespace(sf->cxt);
 
-- 
2.26.2

