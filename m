Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BA562F8ED6
	for <lists+util-linux@lfdr.de>; Sat, 16 Jan 2021 20:12:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726210AbhAPTMJ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 16 Jan 2021 14:12:09 -0500
Received: from foss.arm.com ([217.140.110.172]:58686 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725979AbhAPTMJ (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Sat, 16 Jan 2021 14:12:09 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B1417ED1;
        Sat, 16 Jan 2021 11:11:23 -0800 (PST)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com [10.1.194.78])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7D5E3F70D;
        Sat, 16 Jan 2021 11:11:22 -0800 (PST)
From:   Qais Yousef <qais.yousef@arm.com>
To:     util-linux@vger.kernel.org
Cc:     "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Dietmar Eggemann <dietmar.eggemann@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Patrick Bellasi <patrick.bellasi@matbug.net>,
        Qais Yousef <qais.yousef@arm.com>
Subject: [PATCH 0/5] Add a new uclampset utility
Date:   Sat, 16 Jan 2021 19:09:35 +0000
Message-Id: <20210116190940.2320819-1-qais.yousef@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Since kernel v5.3 we have a new feature called utilization clamping that allows
influencing the utilization signals of a task, ultimately influencing the
performance of these tasks.

The series adds a new utility called uclampset that allows the user to
manipulate util clamp (or uclamp for short) for existing running processes or
when running a new command; in a similar spirit to how taskset and chrt
currently work.

Peter/Dietmar/Vincent/Patrick; reviewing the manpage (patch 3) to make sure it
explains this feature right would be much appreciated.

Thanks

--
Qais Yousef

Qais Yousef (5):
  Move sched_attr struct and syscall definitions into header file
  Add uclampset schedutil
  uclampset: Add man page
  uclampset: Plump into the build system
  uclampset: Plumb in bash-completion

 .gitignore                    |   1 +
 bash-completion/Makemodule.am |   3 +
 bash-completion/uclampset     |  39 ++++
 configure.ac                  |   9 +
 include/sched_attr.h          | 127 ++++++++++++
 schedutils/Makemodule.am      |   7 +
 schedutils/chrt.c             |  77 +------
 schedutils/uclampset.1        | 169 +++++++++++++++
 schedutils/uclampset.c        | 378 ++++++++++++++++++++++++++++++++++
 9 files changed, 734 insertions(+), 76 deletions(-)
 create mode 100644 bash-completion/uclampset
 create mode 100644 include/sched_attr.h
 create mode 100644 schedutils/uclampset.1
 create mode 100644 schedutils/uclampset.c

-- 
2.25.1

