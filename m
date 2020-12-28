Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACB232E3343
	for <lists+util-linux@lfdr.de>; Mon, 28 Dec 2020 01:15:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726286AbgL1APG (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 27 Dec 2020 19:15:06 -0500
Received: from ns1.namespace.at ([213.208.148.230]:48086 "EHLO
        nlay-fle-service01.in.namespace.at" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726226AbgL1APF (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Sun, 27 Dec 2020 19:15:05 -0500
X-Greylist: delayed 711 seconds by postgrey-1.27 at vger.kernel.org; Sun, 27 Dec 2020 19:15:05 EST
Received: from [10.100.0.62] (helo=debbuild.in.namespace.at)
        by nlay-fle-service01.in.namespace.at with smtp (Exim 4.92)
        (envelope-from <zeha@debian.org>)
        id 1ktfzd-00BvP9-6d
        for util-linux@vger.kernel.org; Mon, 28 Dec 2020 01:02:33 +0100
Received: (nullmailer pid 3971600 invoked by uid 1000);
        Mon, 28 Dec 2020 00:02:33 -0000
From:   Chris Hofstaedtler <zeha@debian.org>
To:     util-linux@vger.kernel.org
Subject: [PATCH] cfdisk: show Q option when choosing label type
Date:   Mon, 28 Dec 2020 00:02:33 +0000
Message-Id: <20201228000233.3971550-1-zeha@debian.org>
X-Mailer: git-send-email 2.30.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

The new message is quite terse, but fits into 78 characters.

Bug-Debian: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=894555
Signed-off-by: Chris Hofstaedtler <zeha@debian.org>
---
 disk-utils/cfdisk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/disk-utils/cfdisk.c b/disk-utils/cfdisk.c
index d96b6e9e0..f3eb9a3fa 100644
--- a/disk-utils/cfdisk.c
+++ b/disk-utils/cfdisk.c
@@ -2150,7 +2150,7 @@ static int ui_create_label(struct cfdisk *cf)
 
 		if (refresh_menu) {
 			ui_draw_menu(cf);
-			ui_hint(_("Select a type to create a new label or press 'L' to load script file."));
+			ui_hint(_("Select a type to create a new label, press 'L' to load script file, 'Q' quits."));
 			refresh();
 			refresh_menu = 0;
 		}
-- 
2.30.0.rc2

