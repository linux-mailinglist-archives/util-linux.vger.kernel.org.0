Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11CFD22C2BF
	for <lists+util-linux@lfdr.de>; Fri, 24 Jul 2020 12:06:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726754AbgGXKGb (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 24 Jul 2020 06:06:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726114AbgGXKGb (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 24 Jul 2020 06:06:31 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25D9AC0619D3
        for <util-linux@vger.kernel.org>; Fri, 24 Jul 2020 03:06:31 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id f12so9378485eja.9
        for <util-linux@vger.kernel.org>; Fri, 24 Jul 2020 03:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JtPc2pXIDYvVxgHMbSFyTZ7IW3pvcAEbAy57vqKXyxE=;
        b=XWRLQWPIQvxrCLZOH6/MjMJUFsGxHUPgRuj3lMiOd3B7Tyu1XMiaFdHZgDqb7nscCV
         yPxuxasctmSjIerPtBo8kKMcWnP7e/IPPCnXXeAblecDPVPo1HIoYmZ+NqbXq1K3+1Sq
         /L7BoFLiVky1h49bbzI+sO14akoYQZfsoGP5vDdgbLLeSYJ017t8LxecKkMC8ndob6eO
         ZRVGFSVtS2kcgDXmrYjdjAvQPBMmYBUiSmwAG42ZQ8PeLfwZ9C7/0R9DM29Dbh4utxR8
         NhsGc1+sz+JsNtpFhhfL0fTmvuHxgZSaT0Iusf5YEiuj3AQHu+w5e/YcO2/IHXk/uhj2
         99jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JtPc2pXIDYvVxgHMbSFyTZ7IW3pvcAEbAy57vqKXyxE=;
        b=V6bGtj3y9608MqPJzgf9TDfqsUqtDU1TXqiuYoXGproAxM5TJ22VDWxK1u3CkhZ1Kt
         v2zIntHQUzNQuai16U+XtYMKOdyGEjs9g6jUR6+ywujxEBLkECiNwX+uMoLVB5qjNEIo
         YtNGt9pNBwV1I/msdSQIp1UrfcA9F+HjESylcHUcYWgaCh6f8k6LpHGaMKJgB+UlFZDD
         8CDu4atTfw8jBiM9Rq7cuiDzTTUHYxMhPP88NfCJt2tP/pW65Mpb+71c8ATDp5pbjl6v
         ga2HWnW4PXXzbk4tg5qCiRAU2fkdh+x+60ZnhRZovlCfxTYO+x+SUxsk8B02EFjofTUy
         htKA==
X-Gm-Message-State: AOAM530chqQm5p/i9ZEF7ErdgLbY6UNtdIQnWbb2P0jzuImyPLMTTQoX
        bGe7rvohsAnjeTzm1ub5gAc=
X-Google-Smtp-Source: ABdhPJzNbuD+hIr5611pCSb/yStdpf8xtjK6vHmb4huiIoZDyM863XTL6xB88tfOrI2SOizh4On9Pg==
X-Received: by 2002:a17:907:11ce:: with SMTP id va14mr8133654ejb.189.1595585189928;
        Fri, 24 Jul 2020 03:06:29 -0700 (PDT)
Received: from bienne.fritz.box ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id a25sm389355eds.77.2020.07.24.03.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 03:06:29 -0700 (PDT)
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
To:     mtk.manpages@gmail.com, Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: [PATCH 02/12] Manual pages: fsck.cramfs.8: Wording fix
Date:   Fri, 24 Jul 2020 12:06:08 +0200
Message-Id: <20200724100618.584918-2-mtk.manpages@gmail.com>
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
 disk-utils/fsck.cramfs.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/disk-utils/fsck.cramfs.8 b/disk-utils/fsck.cramfs.8
index 1beabd81b..90d794205 100644
--- a/disk-utils/fsck.cramfs.8
+++ b/disk-utils/fsck.cramfs.8
@@ -55,7 +55,7 @@ usage information was printed
 .BR mount (8),
 .BR mkfs.cramfs (8)
 .SH AVAILABILITY
-The example command is part of the util-linux package and is available from
+The fsck.cramfs command is part of the util-linux package and is available from
 .UR https://\:www.kernel.org\:/pub\:/linux\:/utils\:/util-linux/
 Linux Kernel Archive
 .UE .
-- 
2.26.2

