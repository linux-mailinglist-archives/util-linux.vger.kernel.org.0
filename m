Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBDC830985F
	for <lists+util-linux@lfdr.de>; Sat, 30 Jan 2021 21:52:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230095AbhA3Uv6 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 30 Jan 2021 15:51:58 -0500
Received: from foss.arm.com ([217.140.110.172]:40794 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231565AbhA3Uv6 (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Sat, 30 Jan 2021 15:51:58 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC3A4147A;
        Sat, 30 Jan 2021 12:51:12 -0800 (PST)
Received: from e107158-lin.cambridge.arm.com (unknown [10.1.194.78])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C80B3F73D;
        Sat, 30 Jan 2021 12:51:11 -0800 (PST)
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
Subject: [PATCH v2 3/5] uclampset: Add man page
Date:   Sat, 30 Jan 2021 20:50:37 +0000
Message-Id: <20210130205039.581764-4-qais.yousef@arm.com>
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
 schedutils/uclampset.1 | 174 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 174 insertions(+)
 create mode 100644 schedutils/uclampset.1

diff --git a/schedutils/uclampset.1 b/schedutils/uclampset.1
new file mode 100644
index 000000000..d877ac6b9
--- /dev/null
+++ b/schedutils/uclampset.1
@@ -0,0 +1,174 @@
+.\" uclampset(1) manpage
+.\"
+.\" Copyright (C) 2020-2021 Qais Yousef <qais.yousef@arm.com>
+.\" Copyright (C) 2020-2021 Arm Ltd
+.\"
+.\" This is free documentation; you can redistribute it and/or
+.\" modify it under the terms of the GNU General Public License,
+.\" version 2, as published by the Free Software Foundation.
+.\"
+.\" The GNU General Public License's references to "object code"
+.\" and "executables" are to be interpreted as the output of any
+.\" document formatting or typesetting system, including
+.\" intermediate and printed output.
+.\"
+.\" This manual is distributed in the hope that it will be useful,
+.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
+.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+.\" GNU General Public License for more details.
+.\"
+.\" You should have received a copy of the GNU General Public License along
+.\" with this program; if not, write to the Free Software Foundation, Inc.,
+.\" 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+.\"
+.TH UCLAMPSET 1 "August 2020" "util-linux" "User Commands"
+.SH NAME
+uclampset \- manipulate the utilization clamping attributes of the system or
+a process.
+.SH SYNOPSIS
+.B uclampset
+[options]
+.RI [ -m\ uclamp_min ]\ [ -M\ uclamp_max ]\ command\  [ argument ...]
+.br
+.B uclampset
+[options]
+.RI [ -m\ uclamp_min ]\ [ -M\ uclamp_max ]
+.B \-p
+.RI pid
+.SH DESCRIPTION
+.B uclampset
+sets or retrieves the utilization clamping attributes of an existing \fIpid\fR,
+or runs \fIcommand\fR with the given attributes.
+
+Utilization clamping is a new feature added in v5.3. It gives a hint to the
+scheduler about the allowed range of utilization the task should be operating
+at.
+
+The utilization of the task affects frequency selection and task placement.
+Only schedutil cpufreq governor understands handling util clamp hints at the
+time of writing. Consult your kernel docs for further info about other
+cpufreq governors support.
+
+If you're running on asymmetric heterogeneous system like Arm's big.LITTLE.
+Utilization clamping can help bias task placement. If the task is boosted such
+that
+.B util_min
+value is higher than the little cores' capacity, then the scheduler will do its
+best to place it on a big core.
+
+Similarly, if
+.B util_max
+is smaller than or equal the capacity of the little cores, then the scheduler
+can still choose to place it there even if the actual utilization of the task
+is at max.
+
+Setting a task's
+.B uclamp_min
+to a none zero value  will effectively boost the task as when it runs it'll
+always start from this utilization value.
+
+By setting a task's
+.B uclamp_max
+below 1024, this will effectively cap the task as when it runs it'll never be
+able to go above this utilization value.
+
+The full utilization range is: [0:1024].
+The special value -1 is used to reset to system's default.
+
+.SH OPTIONS
+.TP
+.B \-m
+Set util_min value.
+.TP
+.B \-M
+Set util_max value.
+.TP
+.BR \-a ,\  \-\-all-tasks
+Set or retrieve the utilization clamping attributes of all the tasks (threads)
+for a given PID.
+.TP
+.BR \-p ,\  \-\-pid
+Operate on an existing PID and do not launch a new task.
+.TP
+.BR \-s ,\  \-\-system
+Set or retrieve the system-wide utilization clamping attributes.
+.TP
+.BR \-R ,\  \-\-reset-on-fork
+Set
+.B SCHED_FLAG_RESET_ON_FORK
+flag
+.TP
+.BR \-v ,\  \-\-verbose
+Show status information.
+.TP
+.BR \-V ,\  \-\-version
+Display version information and exit.
+.TP
+.BR \-h ,\  \-\-help
+Display help text and exit.
+.SH USAGE
+.TP
+The default behavior is to run a new command:
+.B uclampset
+.I [-m\ uclamp_min]
+.I [-M\ uclamp_max]
+.IR command\  [ arguments ]
+.TP
+You can also retrieve the utilization clamping attributes of an existing task:
+.B uclampset \-p
+.I pid
+.TP
+Or set them:
+.B uclampset \-p
+.I pid
+.I [-m\ uclamp_min]
+.I [-M\ uclamp_max]
+.TP
+Or control the system-wide attributes:
+.B uclampset \-s
+.I [-m\ uclamp_min]
+.I [-M\ uclamp_max]
+.SH PERMISSIONS
+A user must possess
+.B CAP_SYS_NICE
+to change the scheduling attributes of a process.  Any user can retrieve the
+scheduling information.
+
+.SH NOTES
+The system wide utilization clamp attributes are there to control the _allowed_
+range the tasks can use. By default both
+.B uclamp_min
+and
+.B uclamp_max
+are set to 1024. This means users can set the utilization clamp values for
+their task across the full range [0:1024].
+
+.TP
+For example:
+.B uclampset \-s
+.I -m\ 512
+.I -M\ 700
+.PP
+will prevent any task from being boosted higher than 512. And all tasks in the
+systems are capped to a utilization of 700. Effectively rendering the maximum
+performance of the system to 700.
+
+Consult your kernel docs for the exact expected behavior on that kernel.
+.SH AUTHORS
+.UR qais.yousef@arm.com
+Qais Yousef
+.UE
+.SH SEE ALSO
+.BR nice (1),
+.BR renice (1),
+.BR taskset (1),
+.BR sched (7)
+.sp
+See
+.BR sched_setscheduler (2)
+and
+.BR sched_setattr (2)
+for a description of the Linux scheduling scheme.
+.SH AVAILABILITY
+The uclampset command is part of the util-linux package and is available from
+https://www.kernel.org/pub/linux/utils/util-linux/.
-- 
2.25.1

