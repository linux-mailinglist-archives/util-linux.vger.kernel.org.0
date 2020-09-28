Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61FBE27AB61
	for <lists+util-linux@lfdr.de>; Mon, 28 Sep 2020 11:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726497AbgI1J7C (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 28 Sep 2020 05:59:02 -0400
Received: from mgwkm03.jp.fujitsu.com ([202.219.69.170]:12657 "EHLO
        mgwkm03.jp.fujitsu.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726477AbgI1J7C (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 28 Sep 2020 05:59:02 -0400
X-Greylist: delayed 665 seconds by postgrey-1.27 at vger.kernel.org; Mon, 28 Sep 2020 05:59:01 EDT
Received: from kw-mxauth.gw.nic.fujitsu.com (unknown [192.168.231.132]) by mgwkm03.jp.fujitsu.com with smtp
         id 206f_4b57_f756d6dd_9053_41aa_a13a_44b509e6b9cd;
        Mon, 28 Sep 2020 18:47:49 +0900
Received: from pumpkin.openstacklocal (pumpkin.fct.css.fujitsu.com [10.130.70.189])
        by kw-mxauth.gw.nic.fujitsu.com (Postfix) with ESMTP id CAE23AC00AC
        for <util-linux@vger.kernel.org>; Mon, 28 Sep 2020 18:47:48 +0900 (JST)
Received: by pumpkin.openstacklocal (Postfix, from userid 1012)
        id DAAD7900C; Mon, 28 Sep 2020 18:46:39 +0900 (JST)
From:   Shunsuke Nakamura <nakamura.shun@jp.fujitsu.com>
To:     util-linux@vger.kernel.org
Cc:     Shunsuke Nakamura <nakamura.shun@jp.fujitsu.com>,
        Shunsuke Nakamura <nakamura.shun@fujitsu.com>
Subject: [PATCH] lscpu: Add FUJITSU aarch64 A64FX cpupart
Date:   Mon, 28 Sep 2020 18:46:14 +0900
Message-Id: <20200928094614.3648619-1-nakamura.shun@jp.fujitsu.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Add an entry for FUJITSU aarch64 part A64FX.
I tested it on the FX1000.

Signed-off-by: Shunsuke Nakamura <nakamura.shun@fujitsu.com>
---
 sys-utils/lscpu-arm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/sys-utils/lscpu-arm.c b/sys-utils/lscpu-arm.c
index 270866191..c9997d062 100644
--- a/sys-utils/lscpu-arm.c
+++ b/sys-utils/lscpu-arm.c
@@ -171,6 +171,11 @@ static const struct id_part intel_part[] = {
     { -1, "unknown" },
 };
 
+static const struct id_part fujitsu_part[] = {
+    { 0x001, "A64FX" },
+    { -1, "unknown" },
+};
+
 static const struct id_part hisi_part[] = {
     { 0xd01, "Kunpeng-920" },	/* aka tsv110 */
     { -1, "unknown" },
@@ -191,6 +196,7 @@ static const struct hw_impl hw_implementer[] = {
     { 0x42, brcm_part,    "Broadcom" },
     { 0x43, cavium_part,  "Cavium" },
     { 0x44, dec_part,     "DEC" },
+    { 0x46, fujitsu_part, "FUJITSU" },
     { 0x48, hisi_part,    "HiSilicon" },
     { 0x4e, nvidia_part,  "Nvidia" },
     { 0x50, apm_part,     "APM" },
-- 
2.25.1

