Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13F16D39E0
	for <lists+util-linux@lfdr.de>; Fri, 11 Oct 2019 09:15:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727091AbfJKHPj (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 11 Oct 2019 03:15:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:34898 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726679AbfJKHPj (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Fri, 11 Oct 2019 03:15:39 -0400
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id F13F42084C;
        Fri, 11 Oct 2019 07:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570778138;
        bh=omEhQmgLDKQMRGZwWae+73MYYHlWEjmpLxZExgv93/s=;
        h=From:To:Cc:Subject:Date:From;
        b=Gq0eeHDEU763lLCmxbRM4hNYXftJXcRGyj4Hin4VQTNIqM8Sw/EmEnDa/kEd2+ToZ
         NM95rfC6BPhw8TAbHNib8vgniHpTwA1h9OLG5D0grrinduIgQg4La6K55bKcjwfJn6
         c3PuhuWJ5F6X/XCBzyczLfLSGM24Y1s2ppOZOIVg=
From:   Masami Hiramatsu <mhiramat@kernel.org>
To:     util-linux@vger.kernel.org
Cc:     mhiramat@kernel.org, Karel Zak <kzak@redhat.com>
Subject: [BUGFIX PATCH] libmount: Add libselinux dependency to pkgconfig file
Date:   Fri, 11 Oct 2019 16:15:35 +0900
Message-Id: <157077813529.32660.383807974560795120.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Add libselinux dependency to libmount if it is compiled
with selinux support.

Without this fix, 'pkg-config --libs --static mount' doesn't
show libselinux related options.

Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 Makefile.am          |    6 ++++++
 libmount/mount.pc.in |    2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/Makefile.am b/Makefile.am
index 51c649909..9ef752f3c 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -136,6 +136,12 @@ edit_cmd = sed \
 	 -e 's|@LIBFDISK_PATCH_VERSION[@]|$(LIBFDISK_PATCH_VERSION)|g' \
 	 -e 's|@LIBBLKID_VERSION[@]|$(LIBBLKID_VERSION)|g'
 
+if HAVE_SELINUX
+edit_cmd += -e 's|@LIBSELINUX[@]|libselinux|g'
+else
+edit_cmd += -e 's|@LIBSELINUX[@]||g'
+endif
+
 CLEANFILES += $(PATHFILES)
 EXTRA_DIST += $(PATHFILES:=.in)
 
diff --git a/libmount/mount.pc.in b/libmount/mount.pc.in
index 7371b23c1..d5f0d4b55 100644
--- a/libmount/mount.pc.in
+++ b/libmount/mount.pc.in
@@ -17,6 +17,6 @@ includedir=@includedir@
 Name: mount
 Description: mount library
 Version: @LIBMOUNT_VERSION@
-Requires.private: blkid
+Requires.private: blkid @LIBSELINUX@
 Cflags: -I${includedir}/libmount
 Libs: -L${libdir} -lmount

