Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DE2901B636
	for <lists+util-linux@lfdr.de>; Mon, 13 May 2019 14:44:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727942AbfEMMoV (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 13 May 2019 08:44:21 -0400
Received: from mx2.suse.de ([195.135.220.15]:36818 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726866AbfEMMoU (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Mon, 13 May 2019 08:44:20 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id DDDBBAE79;
        Mon, 13 May 2019 12:44:19 +0000 (UTC)
From:   Nikolay Borisov <nborisov@suse.com>
To:     kzak@redhat.com
Cc:     util-linux@vger.kernel.org, Nikolay Borisov <nborisov@suse.com>
Subject: [PATCH V2 1/2] libblkid: Don't check BLKID_PROBE_INTERVAL in blkid_verify
Date:   Mon, 13 May 2019 15:44:17 +0300
Message-Id: <20190513124418.24157-1-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

That constant is set to 200 seconds and is already check in probe_all().        
It essentially controls how often blkid_probe_all can do a full cache           
revalidation. Since blkid_verify is called from within probe_all() iff at least 
BLKID_PROBE_INTERVAL seconds have elapsed it makes no sense to check this value 
in blkid_verify. 

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---
V2: 
 * Fixed stray { 
 libblkid/src/verify.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/libblkid/src/verify.c b/libblkid/src/verify.c
index 7f44f5497c8e..e630ab1a38c5 100644
--- a/libblkid/src/verify.c
+++ b/libblkid/src/verify.c
@@ -96,8 +96,7 @@ blkid_dev blkid_verify(blkid_cache cache, blkid_dev dev)
 	    st.st_mtime <= dev->bid_time &&
 #endif
 	    (diff < BLKID_PROBE_MIN ||
-		(dev->bid_flags & BLKID_BID_FL_VERIFIED &&
-		 diff < BLKID_PROBE_INTERVAL)))
+		dev->bid_flags & BLKID_BID_FL_VERIFIED))
 		return dev;
 
 #ifndef HAVE_STRUCT_STAT_ST_MTIM_TV_NSEC
-- 
2.7.4

