Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 541771B576D
	for <lists+util-linux@lfdr.de>; Thu, 23 Apr 2020 10:43:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726101AbgDWInZ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 23 Apr 2020 04:43:25 -0400
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]:44840 "EHLO
        7.mo2.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725884AbgDWInZ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 23 Apr 2020 04:43:25 -0400
X-Greylist: delayed 304 seconds by postgrey-1.27 at vger.kernel.org; Thu, 23 Apr 2020 04:43:25 EDT
Received: from player755.ha.ovh.net (unknown [10.110.103.169])
        by mo2.mail-out.ovh.net (Postfix) with ESMTP id 389E61D41F4
        for <util-linux@vger.kernel.org>; Thu, 23 Apr 2020 10:38:19 +0200 (CEST)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player755.ha.ovh.net (Postfix) with ESMTPSA id BA78211C04364;
        Thu, 23 Apr 2020 08:38:16 +0000 (UTC)
From:   Stephen Kitt <steve@sk2.org>
To:     util-linux@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Stephen Kitt <steve@sk2.org>
Subject: [PATCH] docs: nsenter(1): fix further details in PID namespace section
Date:   Thu, 23 Apr 2020 10:37:02 +0200
Message-Id: <20200423083702.14466-1-steve@sk2.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 6051430525373271540
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrgeelgddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefuthgvphhhvghnucfmihhtthcuoehsthgvvhgvsehskhdvrdhorhhgqeenucfkpheptddrtddrtddrtddpkedvrdeihedrvdehrddvtddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehhedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtohepuhhtihhlqdhlihhnuhigsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

The "Further details" sentence in the PID namespace section got merged
with the surrounding text; this patch moves it to the end, to match
the other namespace sections, and adds the missing clone(2) reference.

Fixes: 894efece9eb89 ("Provide better cross references for namespace concepts")
Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 sys-utils/nsenter.1 | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/sys-utils/nsenter.1 b/sys-utils/nsenter.1
index 9cce839c0..c51d9b04a 100644
--- a/sys-utils/nsenter.1
+++ b/sys-utils/nsenter.1
@@ -61,17 +61,18 @@ flag in
 .B PID namespace
 Children will have a set of PID to process mappings separate from the
 .B nsenter
-process
+process.
+.B nsenter
+will fork by default if changing the PID namespace, so that the new program
+and its children share the same PID namespace and are visible to each other.
+If \fB\-\-no\-fork\fP is used, the new program will be exec'ed without forking.
 For further details, see
 .BR pid_namespaces (7)
 and
 the discussion of the
 .B CLONE_NEWPID
 flag in
-.B nsenter
-will fork by default if changing the PID namespace, so that the new program
-and its children share the same PID namespace and are visible to each other.
-If \fB\-\-no\-fork\fP is used, the new program will be exec'ed without forking.
+.BR clone (2).
 .TP
 .B user namespace
 The process will have a distinct set of UIDs, GIDs and capabilities.
-- 
2.20.1

