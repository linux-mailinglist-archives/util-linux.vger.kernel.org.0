Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E2054CFB18
	for <lists+util-linux@lfdr.de>; Tue,  8 Oct 2019 15:15:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730555AbfJHNPX (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 8 Oct 2019 09:15:23 -0400
Received: from szxga06-in.huawei.com ([45.249.212.32]:57650 "EHLO huawei.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1730371AbfJHNPW (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 8 Oct 2019 09:15:22 -0400
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
        by Forcepoint Email with ESMTP id CFA01C2FD2877EEBB3E5
        for <util-linux@vger.kernel.org>; Tue,  8 Oct 2019 21:15:20 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Tue, 8 Oct 2019 21:15:10 +0800
From:   John Garry <john.garry@huawei.com>
To:     <util-linux@vger.kernel.org>
CC:     <linuxarm@huawei.com>, John Garry <john.garry@huawei.com>
Subject: [PATCH] lscpu: Add HiSilicon aarch64 tsv110 cpupart
Date:   Tue, 8 Oct 2019 21:12:21 +0800
Message-ID: <1570540341-233493-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Add an entry for the HiSilicon aarch64 part tsv110.

Another known alias for this part is TaishanV110, and it can be
found in the Kunpeng920/Hi1620 SoC.

Signed-off-by: John Garry <john.garry@huawei.com>

diff --git a/sys-utils/lscpu-arm.c b/sys-utils/lscpu-arm.c
index fd9ab3f47..b45cbe346 100644
--- a/sys-utils/lscpu-arm.c
+++ b/sys-utils/lscpu-arm.c
@@ -170,6 +170,11 @@ static const struct id_part intel_part[] = {
     { -1, "unknown" },
 };
 
+static const struct id_part hisi_part[] = {
+    { 0xd01, "tsv110" },
+    { -1, "unknown" },
+};
+
 static const struct id_part unknown_part[] = {
     { -1, "unknown" },
 };
@@ -185,6 +190,7 @@ static const struct hw_impl hw_implementer[] = {
     { 0x42, brcm_part,    "Broadcom" },
     { 0x43, cavium_part,  "Cavium" },
     { 0x44, dec_part,     "DEC" },
+    { 0x48, hisi_part,  "HiSilicon" },
     { 0x4e, nvidia_part,  "Nvidia" },
     { 0x50, apm_part,     "APM" },
     { 0x51, qcom_part,    "Qualcomm" },
-- 
2.17.1

