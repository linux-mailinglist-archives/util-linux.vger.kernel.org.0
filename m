Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8F9E190A1D
	for <lists+util-linux@lfdr.de>; Tue, 24 Mar 2020 11:02:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726818AbgCXKCU (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 24 Mar 2020 06:02:20 -0400
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:12176 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726167AbgCXKCU (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 24 Mar 2020 06:02:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1585044140; x=1616580140;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Yo54lIuzc+NlHMJeCVUQjgMSjHul7Wc7GNrUbkYmSeQ=;
  b=RoCe7/VBhUcSB3NZ6eMulX8fBhtlIgVXvIyvuo3FKf91+O59rfCmVR/1
   AVlOOOnUCq6sv7Tol3HL0zJR6OyjF10ZaS4tC7r6rIuAdnRp5O9MhMVSA
   +6XcYmZyoKopdoRtM7chBgbVCe6NkPg+4yCpTlIMew16ifk1K58gJM2h5
   AV5l2TsQIB3Ak5qHm7DFMCfZHAA2kOvvKyma3evIjJf6QSrhQrD+yV0zV
   7P/IdMSiSrxE3PlnY/+495rRmb9yb0ZbNjhbD/ZMRlgT3IZLbYhw3BK0d
   dy5bS4PjV/u8/a9gkJZG3O8mPeo/UhAX9bkJMT9W3zLjomtTCR9kLNWHY
   g==;
IronPort-SDR: DHEviwTSvR9scgER9GbrHC/GHpW0nfnzqZydDTSwKelK6Vql83AgK9wLJqEzoNGH5j1f08rRZY
 atHcxRgwtZtijEsClInR8z0zvMyedAnc74Uks54mxH5Tj8P4P8cWURR58VGfH86fO8czG8aO4o
 LP+5LbKrdr88z/HerHUcM/j0MCtkJ7X3LOW6mp6mPHkY95txYWbI5wg09vzYMWQfXCBm8DlzT2
 nWmun0V0lmMrdvKTlHVjji9bQJTey5VAe9REeh9fexy+GWpOWIsVo9CCYm/VlKcqWzZKyBEbPP
 w9w=
X-IronPort-AV: E=Sophos;i="5.72,300,1580745600"; 
   d="scan'208";a="134798439"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 24 Mar 2020 18:02:19 +0800
IronPort-SDR: PJZvzv57RQIcHD4rtouwW3MD6Tor/U7+1CF7VavPmXyiAkUagH7RjaF8JiiT+YLLZOTyOYzWyT
 Wy6iYpEUhESt4IrUmsscPANUKTToxKD5p90tc172jzHZN7+Br6pzGubYBZXKl2h2jcNvyHFzS+
 bRfxxbPWXFRnL9xMG9HEYb8Z5JvI7U5zRRTKrSfVsnOt52vz27ot64MvoUy5skwUlJ2Uoj2uZh
 7zjCI7kLEh9WXKh7fTjwz/K9uYQKlnfC/4O78byfO2xM6iZR42ThE1owegboTTqPhZ9FBxoHzf
 /kmGYpU7vAtJEYVCqx4EfkSC
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2020 02:53:32 -0700
IronPort-SDR: EDXyrjL/IRxdoRBjtT7W+U9v6ffxys7KlpauZB9QqwuAg3MC+dyvpqz2H2BTLWSOXH/UHdu6Kc
 0UIYB7nS7Dy1Ou8mYVOBNzNHqb4cSBJAEc2k/bbM/UEWc+BrgW6TmD89h3dLOGXpucqioVP2Uy
 t9AFP7M6a0ZVgXSKxGjskO4U9NDkiurrfXRl5DtNEEUgObjKi5kQaz2gPhXkSBvMCqNdO4Y5gg
 0lWzbNtNxbjd60KfXrqixAlwRWHs7hSBil3Oi6Oripv5kVDfViyD+SN9PBPABgb8dK+VQMZFt4
 CFw=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
  by uls-op-cesaip01.wdc.com with ESMTP; 24 Mar 2020 03:02:19 -0700
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     util-linux@vger.kernel.org, Karel Zak <kzak@redhat.com>,
        Benno Schulenberg <bensberg@justemail.net>
Cc:     Aravind Ramesh <Aravind.Ramesh@wdc.com>,
        Hans Holmnerg <Hans.Holmberg@wdc.com>
Subject: [PATCH v2] blkzone: add open/close/finish commands
Date:   Tue, 24 Mar 2020 19:02:17 +0900
Message-Id: <20200324100217.47549-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

From: Aravind Ramesh <Aravind.Ramesh@wdc.com>

Introduce blkzone open, close and finish commands, issuing BLKOPENZONE,
BLKCLOSEZONE and BLKFINISHZONE ioctl commands to open, close or finish
a range of zones of a zoned block device.

Since these three commands are similar to the existing zone reset
command, the existing zone reset command implementation is changed into
the generic blkzone_action() internal handler function for processing
all zone actions.

The BLKOPENZONE, BLKCLOSEZONE and BLKFINISHZONE ioctl commands codes are
defined in linux/blkzoned.h starting with kernel version 5.5. To ensure
that the blkzone utility compiles even with older blkzoned.h kernel
header versions, these ioctl commands are internally defined if the
blkzoned.h header definition is not present. Execution of these commands
on kernels older than 5.5 will result in a -ENOTTY error (missing
ioctl).

Signed-off-by: Aravind Ramesh <Aravind.Ramesh@wdc.com>
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Tested-by: Hans Holmberg <Hans.Holmberg@wdc.com>
Reviewed-by: Hans Holmberg <Hans.Holmberg@wdc.com>
---
 sys-utils/blkzone.8 | 27 +++++++++++++++--
 sys-utils/blkzone.c | 74 ++++++++++++++++++++++++++++++++++++++++-----
 2 files changed, 91 insertions(+), 10 deletions(-)

diff --git a/sys-utils/blkzone.8 b/sys-utils/blkzone.8
index 83d3dd7ce..f50e3f5df 100644
--- a/sys-utils/blkzone.8
+++ b/sys-utils/blkzone.8
@@ -55,10 +55,31 @@ x?:Reserved conditions (should not be reported)
 The command \fBblkzone reset\fP is used to reset one or more zones. Unlike
 .BR sg_reset_wp (8),
 this command operates from the block layer and can reset a range of zones.
+
+.SS open
+The command \fBblkzone open\fP is used to explicitly open one or more zones.
+Unlike
+.BR sg_zone (8),
+open action, this command operates from the block layer and can open a range
+of zones.
+
+.SS close
+The command \fBblkzone close\fP is used to close one or more zones. Unlike
+.BR sg_zone (8),
+close action, this command operates from the block layer and can close a range
+of zones.
+
+.SS finish
+The command \fBblkzone finish\fP is used to finish (transition to full condition)
+one or more zones. Unlike
+.BR sg_zone (8),
+finish action, this command operates from the block layer and can finish a range
+of zones.
+
 .PP
-By default, the command will operate from the zone at device
-sector 0 and reset all zones. Options may be used to modify this behavior
-as well as specify the operation to be performed on the zone, as explained below.
+By default, the reset, open, close and finish commands will operate from the zone
+at device sector 0 and operate on all zones. Options may be used to modify this
+behavior as explained below.
 
 .SH OPTIONS
 The
diff --git a/sys-utils/blkzone.c b/sys-utils/blkzone.c
index 715f03fef..b6ddaf8ab 100644
--- a/sys-utils/blkzone.c
+++ b/sys-utils/blkzone.c
@@ -44,10 +44,23 @@
 #include "sysfs.h"
 #include "optutils.h"
 
+/*
+ * These ioctls are defined in linux/blkzoned.h starting with kernel 5.5.
+ */
+#ifndef BLKOPENZONE
+#define BLKOPENZONE	_IOW(0x12, 134, struct blk_zone_range)
+#endif
+#ifndef BLKCLOSEZONE
+#define BLKCLOSEZONE	_IOW(0x12, 135, struct blk_zone_range)
+#endif
+#ifndef BLKFINISHZONE
+#define BLKFINISHZONE	_IOW(0x12, 136, struct blk_zone_range)
+#endif
+
 struct blkzone_control;
 
 static int blkzone_report(struct blkzone_control *ctl);
-static int blkzone_reset(struct blkzone_control *ctl);
+static int blkzone_action(struct blkzone_control *ctl);
 
 struct blkzone_command {
 	const char *name;
@@ -71,9 +84,28 @@ struct blkzone_control {
 
 static const struct blkzone_command commands[] = {
 	{ "report",	blkzone_report, N_("Report zone information about the given device") },
-	{ "reset",	blkzone_reset,  N_("Reset a range of zones.") }
+	{ "reset",	blkzone_action, N_("Reset a range of zones.") },
+	{ "open",	blkzone_action, N_("Open a range of zones.") },
+	{ "close",	blkzone_action, N_("Close a range of zones.") },
+	{ "finish",	blkzone_action, N_("Set a range of zones to Full.") }
+};
+
+/*
+ * The action values must match the command index in the command array.
+ */
+enum blkzone_action {
+	BLK_ZONE_NO_ACTION = 0,
+	BLK_ZONE_RESET,
+	BLK_ZONE_OPEN,
+	BLK_ZONE_CLOSE,
+	BLK_ZONE_FINISH,
 };
 
+static enum blkzone_action command_action(const struct blkzone_command *command)
+{
+	return command - &commands[0];
+}
+
 static const struct blkzone_command *name_to_command(const char *name)
 {
 	size_t i;
@@ -246,15 +278,41 @@ static int blkzone_report(struct blkzone_control *ctl)
 }
 
 /*
- * blkzone reset
+ * blkzone reset, open, close, and finish.
  */
-static int blkzone_reset(struct blkzone_control *ctl)
+
+static int blkzone_action(struct blkzone_control *ctl)
 {
 	struct blk_zone_range za = { .sector = 0 };
 	unsigned long zonesize;
+	unsigned long ioctl_cmd;
+	const char *ioctl_name;
 	uint64_t zlen;
 	int fd;
 
+	switch (command_action(ctl->command)) {
+	case BLK_ZONE_RESET:
+		ioctl_cmd = BLKRESETZONE;
+		ioctl_name = "BLKRESETZONE";
+		break;
+	case BLK_ZONE_OPEN:
+		ioctl_cmd = BLKOPENZONE;
+		ioctl_name = "BLKOPENZONE";
+		break;
+	case BLK_ZONE_CLOSE:
+		ioctl_cmd = BLKCLOSEZONE;
+		ioctl_name = "BLKCLOSEZONE";
+		break;
+	case BLK_ZONE_FINISH:
+		ioctl_cmd = BLKFINISHZONE;
+		ioctl_name = "BLKFINISHZONE";
+		break;
+	case BLK_ZONE_NO_ACTION:
+		/* fallthrough */
+	default:
+		errx(EXIT_FAILURE, _("Invalid zone action"));
+	}
+
 	zonesize = blkdev_chunk_sectors(ctl->devname);
 	if (!zonesize)
 		errx(EXIT_FAILURE, _("%s: unable to determine zone size"), ctl->devname);
@@ -288,11 +346,13 @@ static int blkzone_reset(struct blkzone_control *ctl)
 	za.sector = ctl->offset;
 	za.nr_sectors = zlen;
 
-	if (ioctl(fd, BLKRESETZONE, &za) == -1)
-		err(EXIT_FAILURE, _("%s: BLKRESETZONE ioctl failed"), ctl->devname);
+	if (ioctl(fd, ioctl_cmd, &za) == -1)
+		err(EXIT_FAILURE, _("%s: %s ioctl failed"),
+		    ctl->devname, ioctl_name);
 	else if (ctl->verbose)
-		printf(_("%s: successfully reset in range from %" PRIu64 ", to %" PRIu64),
+		printf(_("%s: successfull %s of zones in range from %" PRIu64 ", to %" PRIu64),
 			ctl->devname,
+			ctl->command->name,
 			ctl->offset,
 			ctl->offset + zlen);
 	close(fd);
-- 
2.25.1

