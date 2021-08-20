Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE8E63F2A3B
	for <lists+util-linux@lfdr.de>; Fri, 20 Aug 2021 12:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhHTKmb (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 20 Aug 2021 06:42:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhHTKmb (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 20 Aug 2021 06:42:31 -0400
X-Greylist: delayed 656 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 20 Aug 2021 03:41:52 PDT
Received: from nlay-fle-service01.in.namespace.at (nlay-fle-service01.in.namespace.at [IPv6:2a01:190:1801:100::24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BA98C061575
        for <util-linux@vger.kernel.org>; Fri, 20 Aug 2021 03:41:52 -0700 (PDT)
Received: from [10.100.0.62] (helo=debbuild.in.namespace.at)
        by nlay-fle-service01.in.namespace.at with smtp (Exim 4.92)
        (envelope-from <zeha@debian.org>)
        id 1mH1nY-008FmU-R2
        for util-linux@vger.kernel.org; Fri, 20 Aug 2021 12:30:52 +0200
Received: (nullmailer pid 1636837 invoked by uid 1000);
        Fri, 20 Aug 2021 10:30:52 -0000
From:   Chris Hofstaedtler <zeha@debian.org>
To:     util-linux@vger.kernel.org
Subject: [PATCH] Skip lsns/ioctl_ns test if unshare fails
Date:   Fri, 20 Aug 2021 10:30:50 +0000
Message-Id: <20210820103050.1636810-1-zeha@debian.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Some parts of the Debian build infrastructure uses unshare to run the
package build, and that appears to cause a "nested" unshare in the
lsns/ioctl_ns test to fail. Unfortunately the tests then hang at this
point.

Try running unshare before the actual test, and skip the test if unshare
already fails.

---
 tests/ts/lsns/ioctl_ns | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tests/ts/lsns/ioctl_ns b/tests/ts/lsns/ioctl_ns
index ef6360607..15dd1af74 100755
--- a/tests/ts/lsns/ioctl_ns
+++ b/tests/ts/lsns/ioctl_ns
@@ -34,6 +34,8 @@ ts_check_prog "mkfifo"
 ts_check_prog "touch"
 ts_check_prog "uniq"
 
+$TS_CMD_UNSHARE --user --pid --mount-proc true || ts_skip "Namespace support failure"
+
 ts_cd "$TS_OUTDIR"
 
 # The parent process receives namespaces ids via FIFO_DATA from bash
-- 
2.33.0

