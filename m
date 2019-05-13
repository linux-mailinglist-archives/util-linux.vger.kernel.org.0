Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 547B91B637
	for <lists+util-linux@lfdr.de>; Mon, 13 May 2019 14:44:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726866AbfEMMoV (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 13 May 2019 08:44:21 -0400
Received: from mx2.suse.de ([195.135.220.15]:36828 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727613AbfEMMoV (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Mon, 13 May 2019 08:44:21 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id 44BEDAF1E;
        Mon, 13 May 2019 12:44:20 +0000 (UTC)
From:   Nikolay Borisov <nborisov@suse.com>
To:     kzak@redhat.com
Cc:     util-linux@vger.kernel.org, Nikolay Borisov <nborisov@suse.com>
Subject: [PATCH V2 2/2] libblkid: Set BLKID_BID_FL_VERIFIED in case revalidation is not needed
Date:   Mon, 13 May 2019 15:44:18 +0300
Message-Id: <20190513124418.24157-2-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513124418.24157-1-nborisov@suse.com>
References: <20190513124418.24157-1-nborisov@suse.com>
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

If blkid_verify deems that device revalidation is not needed since BLKID_PROBE_MIN
seconds haven't elapsed since the last revalidation of the device it returns    
a blkid_dev. However, if this device has been read from the cache file on disk then 
it wont' have BLKID_BID_FL_VERIFIED bit set. This in turn could lead to a later 
call to blkid_dev_get free this device in case its part of a multi device       
configuration. This is particularly relevant to btrfs raid configurations.      
                                                                                
Namely this  was exhibited by btrfs-progs which use blkid for device enumeration.
In case of a multi-device filesystem (i.e raid10) running xfstest btrfs/011     
would fail sporadically since cached devices read from cache were not revalidated
due to being recently validated (according to timestamp in the cache file) at   
the same time their in-memory blkid_dev structures didn't have BLKID_BID_FL_VERIFIED
set. This lead to their untimely removal from the cache from blkid_get_dev.     
                                                                                
Fix this by setting the BLKID_BID_FL_VERIFIED when returning from blkid_verify  
with a valid device irrespective of whether full revalidation was performed or  
the device is deemed valid due to being recently validated.

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---
V2:
 * Adjust context based on previous patch's fix. 

 libblkid/src/verify.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/libblkid/src/verify.c b/libblkid/src/verify.c
index e630ab1a38c5..58b347751e73 100644
--- a/libblkid/src/verify.c
+++ b/libblkid/src/verify.c
@@ -96,8 +96,10 @@ blkid_dev blkid_verify(blkid_cache cache, blkid_dev dev)
 	    st.st_mtime <= dev->bid_time &&
 #endif
 	    (diff < BLKID_PROBE_MIN ||
-		dev->bid_flags & BLKID_BID_FL_VERIFIED))
+		dev->bid_flags & BLKID_BID_FL_VERIFIED)) {
+		dev->bid_flags |= BLKID_BID_FL_VERIFIED;
 		return dev;
+	}
 
 #ifndef HAVE_STRUCT_STAT_ST_MTIM_TV_NSEC
 	DBG(PROBE, ul_debug("need to revalidate %s (cache time %lu, stat time %lu,\t"
-- 
2.7.4

