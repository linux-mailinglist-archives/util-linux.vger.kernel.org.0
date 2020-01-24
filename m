Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1AFFE148CFF
	for <lists+util-linux@lfdr.de>; Fri, 24 Jan 2020 18:30:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388034AbgAXR37 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 24 Jan 2020 12:29:59 -0500
Received: from outgoing-auth-1.mit.edu ([18.9.28.11]:36995 "EHLO
        outgoing.mit.edu" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2387661AbgAXR37 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 24 Jan 2020 12:29:59 -0500
Received: from callcc.thunk.org (rrcs-67-53-201-206.west.biz.rr.com [67.53.201.206])
        (authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
        by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 00OHTp7j001023
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 24 Jan 2020 12:29:53 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
        id 62C5842014A; Fri, 24 Jan 2020 12:29:50 -0500 (EST)
From:   "Theodore Ts'o" <tytso@mit.edu>
To:     kzak@redhat.com
Cc:     util-linux@vger.kernel.org, "Theodore Ts'o" <tytso@mit.edu>
Subject: [PATCH] build-sys: fix configure --without-systemd
Date:   Fri, 24 Jan 2020 12:29:47 -0500
Message-Id: <20200124172947.877099-1-tytso@mit.edu>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Theodore Ts'o <tytso@mit.edu>
---
 configure.ac | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/configure.ac b/configure.ac
index 84b375543..595d57cf1 100644
--- a/configure.ac
+++ b/configure.ac
@@ -2215,7 +2215,7 @@ AM_CONDITIONAL([HAVE_BTRFS], [test "x$have_btrfs" = xyes])
 
 AC_ARG_WITH([systemd],
   AS_HELP_STRING([--without-systemd], [do not build with systemd support]),
-  [], [with_systemd=check]
+  [], [with_systemd=no]
 )
 
 have_systemd=no
-- 
2.24.1

