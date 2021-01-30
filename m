Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E8E9309861
	for <lists+util-linux@lfdr.de>; Sat, 30 Jan 2021 21:52:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231569AbhA3UwC (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 30 Jan 2021 15:52:02 -0500
Received: from foss.arm.com ([217.140.110.172]:40814 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231565AbhA3UwC (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Sat, 30 Jan 2021 15:52:02 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED5281509;
        Sat, 30 Jan 2021 12:51:16 -0800 (PST)
Received: from e107158-lin.cambridge.arm.com (unknown [10.1.194.78])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D5FE3F73D;
        Sat, 30 Jan 2021 12:51:15 -0800 (PST)
From:   Qais Yousef <qais.yousef@arm.com>
To:     util-linux@vger.kernel.org
Cc:     Karel Zak <kzak@redhat.com>,
        Bernhard Voelker <mail@bernhard-voelker.de>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Dietmar Eggemann <dietmar.eggemann@arm.com>,
        Patrick Bellasi <patrick.bellasi@matbug.net>,
        Vincent Donnefort <vincent.donnefort@arm.com>,
        Qais Yousef <qais.yousef@arm.com>
Subject: [PATCH v2 4/5] uclampset: Plump into the build system
Date:   Sat, 30 Jan 2021 20:50:38 +0000
Message-Id: <20210130205039.581764-5-qais.yousef@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210130205039.581764-1-qais.yousef@arm.com>
References: <20210130205039.581764-1-qais.yousef@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Qais Yousef <qais.yousef@arm.com>
---
 configure.ac             | 9 +++++++++
 schedutils/Makemodule.am | 7 +++++++
 2 files changed, 16 insertions(+)

diff --git a/configure.ac b/configure.ac
index 20b6c3178..8f66d5ec4 100644
--- a/configure.ac
+++ b/configure.ac
@@ -2194,6 +2194,15 @@ AS_IF([test "x$build_chrt" = xyes], [
 	UL_CHECK_SYSCALL([sched_setattr])
 ])
 
+UL_ENABLE_ALIAS([uclampset], [schedutils])
+UL_BUILD_INIT([uclampset])
+UL_REQUIRES_HAVE([uclampset], [schedsetter], [sched_set functions])
+AM_CONDITIONAL([BUILD_UCLAMPSET], [test "x$build_uclampset" = xyes])
+
+AS_IF([test "x$build_uclampset" = xyes], [
+	UL_CHECK_SYSCALL([sched_setattr])
+])
+
 
 AC_ARG_ENABLE([wall],
   AS_HELP_STRING([--disable-wall], [do not build wall]),
diff --git a/schedutils/Makemodule.am b/schedutils/Makemodule.am
index f32d2b307..c781ede63 100644
--- a/schedutils/Makemodule.am
+++ b/schedutils/Makemodule.am
@@ -18,3 +18,10 @@ dist_man_MANS += schedutils/taskset.1
 taskset_SOURCES = schedutils/taskset.c
 taskset_LDADD = $(LDADD) libcommon.la
 endif
+
+if BUILD_UCLAMPSET
+usrbin_exec_PROGRAMS += uclampset
+dist_man_MANS += schedutils/uclampset.1
+uclampset_SOURCES = schedutils/uclampset.c
+uclampset_LDADD = $(LDADD) libcommon.la
+endif
-- 
2.25.1

