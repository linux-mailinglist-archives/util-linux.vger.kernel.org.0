Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FFA71FF3A6
	for <lists+util-linux@lfdr.de>; Thu, 18 Jun 2020 15:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729035AbgFRNsj (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 18 Jun 2020 09:48:39 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:39076 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727921AbgFRNsj (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 18 Jun 2020 09:48:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1592488118;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc; bh=GtKRr5+Rb5AWJz3kEWQrd0EeF1KKClCpr0heKL4SrgY=;
        b=GYnuuz9VJhTYS3HzOrQ2T3nE1GKjjGDpa11jHfc6OBjRLTRygznDrKYoB+Hgh7iyHRDk8O
        h6YPNodTfyqWvx/y+O5HjRlCM40EyQdTCacfhBeplGSLH4PcwROYqC3WuGu1NMOzNv8SQY
        il3/yUV37wKeq+JiDkQyaccQn51mRK0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-DcMTDENGNQuK88-e_4wMQQ-1; Thu, 18 Jun 2020 09:48:36 -0400
X-MC-Unique: DcMTDENGNQuK88-e_4wMQQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F16BC107ACF2
        for <util-linux@vger.kernel.org>; Thu, 18 Jun 2020 13:48:35 +0000 (UTC)
Received: from rgirase.pnq.csb (unknown [10.74.10.21])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E214460F88;
        Thu, 18 Jun 2020 13:48:33 +0000 (UTC)
From:   Rupesh Girase <rgirase@redhat.com>
To:     util-linux@vger.kernel.org
Cc:     Rupesh Girase <rgirase@redhat.com>
Subject: [PATCH] Manual pages: losetup.8: Fix "--direct-io" defaults
Date:   Thu, 18 Jun 2020 19:17:41 +0530
Message-Id: <1592488061-1868-1-git-send-email-rgirase@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

"--direct-io" option is "off" by default while configuring
loop device but it's mentioned "on" in man page.

Signed-off-by: Rupesh Girase <rgirase@redhat.com>
---
 sys-utils/losetup.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sys-utils/losetup.8 b/sys-utils/losetup.8
index 7b51921..c3ff5fe 100644
--- a/sys-utils/losetup.8
+++ b/sys-utils/losetup.8
@@ -134,7 +134,7 @@ Set up a read-only loop device.
 .BR \-\-direct\-io [ =on | off ]
 Enable or disable direct I/O for the backing file.  The optional argument
 can be either \fBon\fR or \fBoff\fR.  If the argument is omitted, it defaults
-to \fBon\fR.
+to \fBoff\fR.
 .TP
 .BR \-v , " \-\-verbose"
 Verbose mode.
-- 
1.8.3.1

