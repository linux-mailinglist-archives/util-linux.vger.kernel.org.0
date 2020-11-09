Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1BAE2AAFB7
	for <lists+util-linux@lfdr.de>; Mon,  9 Nov 2020 04:04:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728038AbgKIDES (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 8 Nov 2020 22:04:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728104AbgKIDES (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 8 Nov 2020 22:04:18 -0500
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B85FC0613D3
        for <util-linux@vger.kernel.org>; Sun,  8 Nov 2020 19:04:18 -0800 (PST)
Received: by mail-qk1-x741.google.com with SMTP id n132so5681934qke.1
        for <util-linux@vger.kernel.org>; Sun, 08 Nov 2020 19:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YwWBl4ErTLCUawMwoYrRt3mIKYr54ZoeWehuxTuUusk=;
        b=GwYGjYVqK8/vLS4QkRbFIf2GKgN0DGZE63VvuqOs3AZztmnKo/Xix+MwXPZcOgkiv6
         D9tIJ7BqKHW4wHosZaGiBPN9ZoLB77VH3q5KzKWZ5oBkWySoWrH1KkmyVuCfysalkKBN
         hmCHX2CMkskmgqFQz0iwE9nkmZK/wHVMcuNUww7iUpP5azIF8JoNYr4Uo94qd67UHQXa
         QnW3367uoiN2K2Zs7TED4sOsqcS0kTUuXmmjMoPQ/i/xW4cnktWxJvNtRhYZkeiDM955
         8TX3WZGMFAHY5ZRjqVUkxaLmj/sljG88B5msCy9ZNaqMk5CQ4Y+H2syVsqFyH5S+qqyn
         b7Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YwWBl4ErTLCUawMwoYrRt3mIKYr54ZoeWehuxTuUusk=;
        b=p+JzR3EW0s/VybNcksnhcBV+jfBL/VwPf8P+Gp7zZyDYh57QjksX3DeXRNuwas/dod
         s4sMQhBomtWKisrZY72Xbs4GhJ1htc5QUauMxrR5j+eRnbN2/GCrYmFByZwB9akiEpBp
         Da1KD6cpBOUvG76K2Y7Kq/3lvv3Bar0bVWy/sgnjVZBY2JtJ+GXK3qpk5DnJEeCV8o0R
         hsaxdLS+7ueO2nWxzFo4Zz33kQ7T6Y4Tk/y55uby1C7g6PbSxrwm8Qo1/iDwibZq8k+P
         zY26R7+8b7nFKYr0Wocpt37XpAze+Z4UNrzzhxulnhQbYlkU/Ms5bt4dRHTwbHysIZes
         PEjA==
X-Gm-Message-State: AOAM532su6C3TgSZ2Jks/zXvkwogYDGr6m9JdypDkswd92qp6BfuZwWI
        coEfMopgrtYqeOprAm3Ps651EvVBrQ==
X-Google-Smtp-Source: ABdhPJxZ5WxRJ+mP5wlJWrXRqK2Tat7Vpnm+Dy9xh3wgVLo6ZBC/Q5l9uLI3AY8LuVsdfpjSUVVpzw==
X-Received: by 2002:a05:620a:a09:: with SMTP id i9mr11393783qka.119.1604891057453;
        Sun, 08 Nov 2020 19:04:17 -0800 (PST)
Received: from localhost (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com. [209.6.122.159])
        by smtp.gmail.com with ESMTPSA id q1sm5125753qti.95.2020.11.08.19.04.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Nov 2020 19:04:17 -0800 (PST)
From:   Masayoshi Mizuma <msys.mizuma@gmail.com>
To:     util-linux@vger.kernel.org, jbastian@redhat.com
Cc:     Masayoshi Mizuma <msys.mizuma@gmail.com>,
        Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
Subject: [PATCH v4 2/2] lscpu-arm: Remove hard corded model name of Cortex family and X-Gene
Date:   Sun,  8 Nov 2020 22:04:03 -0500
Message-Id: <20201109030403.26821-2-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201109030403.26821-1-msys.mizuma@gmail.com>
References: <20201109030403.26821-1-msys.mizuma@gmail.com>
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

Remove hard corded model name of Cortex family and X-Gene so that
lscpu can show the model name using Processor Version of SMBIOS Type4.

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
---
 sys-utils/lscpu-arm.c | 32 --------------------------------
 1 file changed, 32 deletions(-)

diff --git a/sys-utils/lscpu-arm.c b/sys-utils/lscpu-arm.c
index 3f258a710..6ece27349 100644
--- a/sys-utils/lscpu-arm.c
+++ b/sys-utils/lscpu-arm.c
@@ -53,37 +53,6 @@ static const struct id_part arm_part[] = {
     { 0xb36, "ARM1136" },
     { 0xb56, "ARM1156" },
     { 0xb76, "ARM1176" },
-    { 0xc05, "Cortex-A5" },
-    { 0xc07, "Cortex-A7" },
-    { 0xc08, "Cortex-A8" },
-    { 0xc09, "Cortex-A9" },
-    { 0xc0d, "Cortex-A17" },	/* Originally A12 */
-    { 0xc0f, "Cortex-A15" },
-    { 0xc0e, "Cortex-A17" },
-    { 0xc14, "Cortex-R4" },
-    { 0xc15, "Cortex-R5" },
-    { 0xc17, "Cortex-R7" },
-    { 0xc18, "Cortex-R8" },
-    { 0xc20, "Cortex-M0" },
-    { 0xc21, "Cortex-M1" },
-    { 0xc23, "Cortex-M3" },
-    { 0xc24, "Cortex-M4" },
-    { 0xc27, "Cortex-M7" },
-    { 0xc60, "Cortex-M0+" },
-    { 0xd01, "Cortex-A32" },
-    { 0xd03, "Cortex-A53" },
-    { 0xd04, "Cortex-A35" },
-    { 0xd05, "Cortex-A55" },
-    { 0xd07, "Cortex-A57" },
-    { 0xd08, "Cortex-A72" },
-    { 0xd09, "Cortex-A73" },
-    { 0xd0a, "Cortex-A75" },
-    { 0xd0b, "Cortex-A76" },
-    { 0xd0c, "Neoverse-N1" },
-    { 0xd13, "Cortex-R52" },
-    { 0xd20, "Cortex-M23" },
-    { 0xd21, "Cortex-M33" },
-    { 0xd4a, "Neoverse-E1" },
     { -1, "unknown" },
 };
 
@@ -110,7 +79,6 @@ static const struct id_part cavium_part[] = {
 };
 
 static const struct id_part apm_part[] = {
-    { 0x000, "X-Gene" },
     { -1, "unknown" },
 };
 
-- 
2.27.0

