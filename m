Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D7CE1C599B
	for <lists+util-linux@lfdr.de>; Tue,  5 May 2020 16:32:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729148AbgEEOb7 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 5 May 2020 10:31:59 -0400
Received: from mx2.suse.de ([195.135.220.15]:56460 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729123AbgEEOb7 (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 5 May 2020 10:31:59 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id AC0A1AE37;
        Tue,  5 May 2020 14:32:00 +0000 (UTC)
From:   Anthony Iliopoulos <ailiop@suse.com>
To:     util-linux@vger.kernel.org
Cc:     ailiop@suse.com
Subject: [PATCH] lsblk: add dax (direct access) capability column
Date:   Tue,  5 May 2020 16:31:44 +0200
Message-Id: <20200505143145.9852-1-ailiop@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Anthony Iliopoulos <ailiop@suse.com>
---
 misc-utils/lsblk.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/misc-utils/lsblk.c b/misc-utils/lsblk.c
index 72ac7b483..51b9f6ad7 100644
--- a/misc-utils/lsblk.c
+++ b/misc-utils/lsblk.c
@@ -117,6 +117,7 @@ enum {
 	COL_REV,
 	COL_VENDOR,
 	COL_ZONED,
+	COL_DAX
 };
 
 /* basic table settings */
@@ -208,6 +209,7 @@ static struct colinfo infos[] = {
 	[COL_REV]    = { "REV",   4, SCOLS_FL_RIGHT, N_("device revision") },
 	[COL_VENDOR] = { "VENDOR", 0.1, SCOLS_FL_TRUNC, N_("device vendor") },
 	[COL_ZONED]  = { "ZONED", 0.3, 0, N_("zone model") },
+	[COL_DAX]    = { "DAX", 1, SCOLS_FL_RIGHT, N_("dax-capable device"), COLTYPE_BOOL },
 };
 
 struct lsblk *lsblk;	/* global handler */
@@ -1031,6 +1033,9 @@ static char *device_get_data(
 	case COL_ZONED:
 		ul_path_read_string(dev->sysfs, &str, "queue/zoned");
 		break;
+	case COL_DAX:
+		ul_path_read_string(dev->sysfs, &str, "queue/dax");
+		break;
 	};
 
 	return str;
-- 
2.26.2

