Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C508F22C2C0
	for <lists+util-linux@lfdr.de>; Fri, 24 Jul 2020 12:06:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726768AbgGXKGg (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 24 Jul 2020 06:06:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726114AbgGXKGg (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 24 Jul 2020 06:06:36 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFBF8C0619D3
        for <util-linux@vger.kernel.org>; Fri, 24 Jul 2020 03:06:35 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id h28so6638939edz.0
        for <util-linux@vger.kernel.org>; Fri, 24 Jul 2020 03:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XIQhiAiUu9YL4hn9J9QlCGJZi+AGx9GkU4/RDw3UxaY=;
        b=Y4WUb8vNXzHEco/bgrlZPvGpjTpmbUpMszFRXoLPCM0CMlipNMDSDbL/8MEqL4CdB9
         THYnzvpU3EVYKn7/hmrenT8JDdtAfc7gKqY17THxpSqgt6KbZI5Feq7ZW1yZrm9avJ/W
         Ux+p9SBlb7vXDZXpED+Vysvqohyk5vcYXMt4witV+/VrW0rB1bhc4o7dRVOoh5YartPP
         FXoNKGVWPyiKO9Tdu2aPBJC9uZlhWHdhHidq0G12PJxFztqepulqaHsiVCnNKw2yhyc/
         dLiKIw51g29wu5TrD9sf5m0iitKC0+Q/8z1rXfI+WhW7lRNVy3GZmZjuSP8St8QCO83y
         cjcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XIQhiAiUu9YL4hn9J9QlCGJZi+AGx9GkU4/RDw3UxaY=;
        b=gidB/iC6I0p+7YF4UX/1iVivvdrTQ/4ANHb5ezKLYFQzjjhJ+gI6EdOJewQocSqQdu
         sL/FzKDYnzwj/ntoxVC3fhObJYIUpf0VBO9T5jXY/Nma6K/YKCzvySwIujmqvVy5P5Xa
         /B0m9beeNhTcqLh64f9UbPIXj6O/tkAovxfXq2IyiZEdvvPR4FDDLllxpZ5HyIKEL3l2
         rK+DOmwfaAJIKCTHKmLHvQb9LxULjvuAJYFA3II6WrKFYh8hJfP9RWfDLFp9KSsYvpi0
         fHfsAyZcg0SSS63G4l5CvPH1YgXmzXB+RDKt0j3sEuMWebZay3Hj7SvcC7P6ySSfN2BO
         r5sw==
X-Gm-Message-State: AOAM533GfuPz0I7RUqAXuefekZTeu7nvPWfi+cFEXdz1axirkhHoMqq3
        1nAbVelPwMGlirEvubGr/eE=
X-Google-Smtp-Source: ABdhPJyAGAVD9cRfuE1GQprPHK9/uQ/vmBW3L0Qd+0NG6pgVKKj+LFtHK1UUkDSxt4GQhfi2McKf9A==
X-Received: by 2002:aa7:cd18:: with SMTP id b24mr8571328edw.3.1595585194523;
        Fri, 24 Jul 2020 03:06:34 -0700 (PDT)
Received: from bienne.fritz.box ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id b3sm424708edm.53.2020.07.24.03.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 03:06:34 -0700 (PDT)
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
To:     mtk.manpages@gmail.com, Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: [PATCH 03/12] Manual pages: raw.8: Minor formatting and wording fixes
Date:   Fri, 24 Jul 2020 12:06:09 +0200
Message-Id: <20200724100618.584918-3-mtk.manpages@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200724100618.584918-1-mtk.manpages@gmail.com>
References: <20200724100618.584918-1-mtk.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>
---
 disk-utils/raw.8 | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/disk-utils/raw.8 b/disk-utils/raw.8
index ba9fd256a..d569507b8 100644
--- a/disk-utils/raw.8
+++ b/disk-utils/raw.8
@@ -34,10 +34,10 @@ device numbers, or as a path name
 to an existing block device file.
 .PP
 The bindings already in existence can be queried with the
-.I \-q
+.B \-q
 option, which is used either with a raw device filename to query that one
 device, or with the
-.I \-a
+.B \-a
 option to query all bound raw devices.
 .PP
 Unbinding can be done by specifying major and minor 0.
@@ -66,8 +66,8 @@ will query an existing binding instead of setting a new one.
 .TP
 \fB\-a\fR, \fB\-\-all\fR
 With
-.B \-q
-, specify that all bound raw devices should be queried.
+.BR \-q ,
+specify that all bound raw devices should be queried.
 .TP
 \fB\-h\fR, \fB\-\-help\fR
 Display help text and exit.
@@ -78,20 +78,23 @@ Display version information and exit.
 .SH NOTES
 Rather than using raw devices applications should prefer
 .BR open (2)
-devices, such as /dev/sda1, with the O_DIRECT flag.
+devices, such as
+.IR /dev/sda1 ,
+with the
+.B O_DIRECT
+flag.
 .SH BUGS
 The Linux
 .BR dd (1)
 command should be used without the \fBbs=\fR option, or the blocksize
 needs to be a multiple of the sector size of the device (512 bytes usually),
 otherwise it will fail with "Invalid Argument" messages (EINVAL).
-
 .PP
 Raw I/O devices do not maintain cache coherency with the Linux block
 device buffer cache.  If you use raw I/O to overwrite data already in
 the buffer cache, the buffer cache will no longer correspond to the
 contents of the actual storage device underneath.  This is deliberate,
-but is regarded either a bug or a feature depending on who you ask!
+but is regarded as either a bug or a feature, depending on who you ask!
 .SH AUTHORS
 Stephen Tweedie (sct@redhat.com)
 .SH AVAILABILITY
-- 
2.26.2

