Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0C1E1ECAB6
	for <lists+util-linux@lfdr.de>; Wed,  3 Jun 2020 09:41:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726013AbgFCHlE (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 3 Jun 2020 03:41:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725275AbgFCHlD (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 3 Jun 2020 03:41:03 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 906EBC05BD43
        for <util-linux@vger.kernel.org>; Wed,  3 Jun 2020 00:41:02 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id f7so1095532ejq.6
        for <util-linux@vger.kernel.org>; Wed, 03 Jun 2020 00:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kjNkFfoQHEty4FiDo+zq3PbwZn6oaTmFdHxRmFeJY5o=;
        b=GzdBtSSt/HEbZ/Omog+l5K6suON8lsLaVsREAcSTJ6nX6nBpoNNprFjdlFhU+US55Q
         P0tkqMP4Mjzs/0GtbKrFZ0r7BLbXuL60ogCF3keGgzG1ItDEuyvyR0viJLSrn/cx8LQs
         WzJDjf7iOs/xlbDGTFqwGjIvXMdFFI1RoVzsRTfgCzcI+S7wAxNF9fcBzoOisHzrj3Pk
         kFegED6C28qkSIa/HycwNaRN6Yan3nnKxMs0qawfq6FR8GBAKoazxB1V5X6dG23Veq+L
         cgsbbDSO88kc8NZ4/2V/EdY1T+aeNg45rYChjDuF7WQmU3GljT2vjDc1wPRhVhXY1/Ln
         6QZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kjNkFfoQHEty4FiDo+zq3PbwZn6oaTmFdHxRmFeJY5o=;
        b=kOLGVV1zwltgeRQKWpq2OwngInOxZOFyA0O5Fpjp0LknG8QqPwBsY0k6NaP+lZtwoK
         wYKK+zqeWJuxKcSaS3DAG0udRxFS6Xnz1rTbfu0MDZYW0wJWcNVIZg3U4HU6RB9/m/Ki
         V3PUr9fyH5Ea5F5BLfqeLOt0SCVvXjvv+31xP6gHr22d7qqC52e6lmPZ4bFL5/XT1WR3
         VnYGgPjwPYuMyPwso2gNME1KUjjiGVGuL6Iq2NLAHgWsr3gRkpuFmdakL66l3dAj34Gh
         zrJNkVZs3CWp52rCtjK7cYNk48Bw2nwW/5Q1HMpDXoK1VmcCMcfeOS/bTNxnaTNT4orp
         H1Sg==
X-Gm-Message-State: AOAM530etjW/VhH2295oeGkoN5yAp/1z12ifLlD1YTzGIwd2UT+9DxDY
        E3mbT08eAWxVa8SdNO71zvae0vAZRlM=
X-Google-Smtp-Source: ABdhPJx6zABfdZ4PTl3HFeI6PLTFZLmsVvRVhxI5sq9/r1JQ+NCntVQme5WFEhYevBHrP5LRwjCXAQ==
X-Received: by 2002:a17:906:86c5:: with SMTP id j5mr26671557ejy.88.1591170061195;
        Wed, 03 Jun 2020 00:41:01 -0700 (PDT)
Received: from bienne.fritz.box ([2001:a61:2516:6501:a84b:ccd6:785a:2f0f])
        by smtp.gmail.com with ESMTPSA id 38sm747983edq.6.2020.06.03.00.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 00:41:00 -0700 (PDT)
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
To:     mtk.manpages@gmail.com, Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: [PATCH 1/2] Manual pages: unshare.1: clarify description and example for --mount=<path>
Date:   Wed,  3 Jun 2020 09:40:56 +0200
Message-Id: <20200603074057.540157-1-mtk.manpages@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

The existing text is not quite accurate, and I recently injected an
error into the EXAMPLES. This patch fixes both issues.

The text in DESCRIPTION incorrectly states that the propagation type of
the parent mount must be "private". This is not accurate.  Rather, the
propagation type must be something *other than "shared"* (i.e.,
"private", "slave", or "unbindable").

In the EXAMPLES section, I added text that implies that if the
propagation type of the parent mount is "shared", then the child mount
created by --mount=<path> might propagate to another namespace.
Rather, in this situation, an error would result. Clarify that.

Signed-off-by: Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>
---
 sys-utils/unshare.1 | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/sys-utils/unshare.1 b/sys-utils/unshare.1
index a260d02e3..443aac658 100644
--- a/sys-utils/unshare.1
+++ b/sys-utils/unshare.1
@@ -104,8 +104,9 @@ namespace is created by a bind mount.
 .BR \-m , " \-\-mount" [ =\fIfile ]
 Unshare the mount namespace.  If \fIfile\fP is specified, then a persistent
 namespace is created by a bind mount.
-Note that \fIfile\fP has to be located on a filesystem with the propagation
-flag set to \fBprivate\fP.  Use the command \fBfindmnt \-o+PROPAGATION\fP
+Note that \fIfile\fP must be located on a mount whose propagation type
+is not \fBshared\fP (or an error results).
+Use the command \fBfindmnt \-o+PROPAGATION\fP
 when not sure about the current setting.  See also the examples below.
 .TP
 .BR \-n , " \-\-net" [ =\fIfile ]
@@ -307,13 +308,11 @@ FOO
 The following commands
 establish a persistent mount namespace referenced by the bind mount
 .IR /root/namespaces/mnt .
-In order to ensure that this bind mount does not get propagated
-to other mount namespaces,
+In order to ensure that the creation of that bind mount succeeds,
 the parent directory
 .RI ( /root/namespaces )
-is first made a bind mount with
-.I private
-propagation.
+is made a bind mount whose propagation type is not
+.BR shared .
 .PP
 .in +4n
 .EX
-- 
2.26.2

