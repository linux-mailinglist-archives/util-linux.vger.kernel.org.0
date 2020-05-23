Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1334B1DF538
	for <lists+util-linux@lfdr.de>; Sat, 23 May 2020 08:43:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387604AbgEWGnc (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 23 May 2020 02:43:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387457AbgEWGn3 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 23 May 2020 02:43:29 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74590C061A0E
        for <util-linux@vger.kernel.org>; Fri, 22 May 2020 23:43:29 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id se13so15415480ejb.9
        for <util-linux@vger.kernel.org>; Fri, 22 May 2020 23:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j6dOnuMeioIZZl7GybPZdhPaCGd4MBMxXJyfYfoRxUM=;
        b=RPJZjY6JL8ghiVeSLD7lh8tAijMwEoMJkW3uAo+AxQcydtLoKV5o765ggQNCtO335d
         1J2An1GgvF2H+5xbVS60LpkoDdiWbbyGHnheFKqKA0q77IRQr/ZzfYE7WpdLUMKsNEUs
         aVJldAhKz1QhAsCUlfTHAmlz1By+uUhbmwphg9mXXVtq0yRPiDwc9l7VGYuN5BZ6cI7z
         r/Yed656rCe8kDy743FoPfLI+8OxyGC1Zsf7J+VCodTslwY6iiiQEsnN0VELuC3hDTzx
         dewhj8frlQsa7+/sANnL/QW7vNxmn4o4poYqqAo3ubjwGjTJw7TsNqwWCWtS7hlxk4nF
         W7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j6dOnuMeioIZZl7GybPZdhPaCGd4MBMxXJyfYfoRxUM=;
        b=jOslqQI5mTt+H8+LqINvrjQZrkTEpJHgB7MUCxTGOJshyP2M48pbUCYoaP4DXss6cW
         R7Fn4KrvAD10CgFp1OCy70IdWLsyTa7deGA6FLfvaLSvOeEV+ZN43TkR+/rdP91Tpf6Z
         lQqcr3AmgqgFeCOOK0JYN/gtMjI1P4YzgjADqnQO1Me6TTzhxgo9yZ7pUqZuOCMdUanr
         wYybwE/bziWP9z+1DdQdFQNbz85bTSmStz+sEAIWA1A+FQPfmPWcXcQl/cbZNNynZlDZ
         33PsOXZ4AaiKBC1a6ypFGIJaeCu0CGN1fKz3o5YGnjf3fhowGV1jsN93Go+byHPzCQbd
         71iA==
X-Gm-Message-State: AOAM531KneWZzqBvrbS5WBZIMEg1cjTXp2slBt7xZhf73+Jq29c5wRKt
        F0kSyHV2uOeG5E8LxfRFhgw=
X-Google-Smtp-Source: ABdhPJxeO/xUc2Eu6VhCnWhDCEE8U4UzPmz4PSaUuzwo0P0H4/L52kVh6zCW3NKA+tac/xL3HMhoTw==
X-Received: by 2002:a17:906:9719:: with SMTP id k25mr11523430ejx.411.1590216208071;
        Fri, 22 May 2020 23:43:28 -0700 (PDT)
Received: from bienne.fritz.box ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id q22sm3240523edg.97.2020.05.22.23.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2020 23:43:27 -0700 (PDT)
From:   Michael Kerrisk <mtk.manpages@gmail.com>
To:     mtk.manpages@gmail.com, Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: [PATCH 1/9] Manual pages: nsenter.1, unshare.1: update references to *_namespaces(7) pages
Date:   Sat, 23 May 2020 08:43:17 +0200
Message-Id: <20200523064325.78491-1-mtk.manpages@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Nowadays, the Linux man-pages project provides separate Section 7
manual pages for each type of namespace. Update the cross references
in nsenter.1 and unshare.1 to reflect this.

Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
---
 sys-utils/nsenter.1 | 6 +++---
 sys-utils/unshare.1 | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/sys-utils/nsenter.1 b/sys-utils/nsenter.1
index 424e22dc9..2f45df66d 100644
--- a/sys-utils/nsenter.1
+++ b/sys-utils/nsenter.1
@@ -27,7 +27,7 @@ flag in
 .B UTS namespace
 Setting hostname or domainname will not affect the rest of the system.
 For further details, see
-.BR namespaces (7)
+.BR uts_namespaces (7)
 and the discussion of the
 .B CLONE_NEWUTS
 flag in
@@ -38,7 +38,7 @@ The process will have an independent namespace for POSIX message queues
 as well as System V message queues,
 semaphore sets and shared memory segments.
 For further details, see
-.BR namespaces (7)
+.BR ipc_namespaces (7)
 and the discussion of the
 .B CLONE_NEWIPC
 flag in
@@ -52,7 +52,7 @@ and
 .I /sys\:/class\:/net
 directory trees, sockets, etc.
 For further details, see
-.BR namespaces (7)
+.BR network_namespaces (7)
 and the discussion of the
 .B CLONE_NEWNET
 flag in
diff --git a/sys-utils/unshare.1 b/sys-utils/unshare.1
index 7b35bc0b6..2665ca0af 100644
--- a/sys-utils/unshare.1
+++ b/sys-utils/unshare.1
@@ -48,7 +48,7 @@ Note that \fBprivate\fP is the kernel default.
 .B UTS namespace
 Setting hostname or domainname will not affect the rest of the system.
 For further details, see
-.BR namespaces (7)
+.BR uts_namespaces (7)
 and the discussion of the
 .B CLONE_NEWUTS
 flag in
@@ -59,7 +59,7 @@ The process will have an independent namespace for POSIX message queues
 as well as System V \%message queues,
 semaphore sets and shared memory segments.
 For further details, see
-.BR namespaces (7)
+.BR ipc_namespaces (7)
 and the discussion of the
 .B CLONE_NEWIPC
 flag in
@@ -70,7 +70,7 @@ The process will have independent IPv4 and IPv6 stacks, IP routing tables,
 firewall rules, the \fI/proc/net\fP and \fI/sys/class/net\fP directory trees,
 sockets, etc.
 For further details, see
-.BR namespaces (7)
+.BR network_namespaces (7)
 and the discussion of the
 .B CLONE_NEWNET
 flag in
-- 
2.26.2

