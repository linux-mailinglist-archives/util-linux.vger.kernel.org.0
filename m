Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB595661170
	for <lists+util-linux@lfdr.de>; Sat,  7 Jan 2023 20:56:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbjAGT4a (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 7 Jan 2023 14:56:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230517AbjAGT42 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 7 Jan 2023 14:56:28 -0500
Received: from aurora.tech (unknown [64.124.54.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3A15C3896
        for <util-linux@vger.kernel.org>; Sat,  7 Jan 2023 11:56:24 -0800 (PST)
Received: by aurora.tech (Postfix, from userid 1001)
        id AB1441640183; Sat,  7 Jan 2023 11:47:23 -0800 (PST)
From:   alison@she-devel.com
To:     util-linux@vger.kernel.org
Cc:     kzak@redhat.com, achaiken@aurora.tech, alison@she-devel.com
Subject: [PATCH 3/3] schedutils: better illustrate the usage of cpu-lists with taskset
Date:   Sat,  7 Jan 2023 11:47:08 -0800
Message-Id: <20230107194708.6878-4-alison@she-devel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230107194708.6878-1-alison@she-devel.com>
References: <20230107194708.6878-1-alison@she-devel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,KHOP_HELO_FCRDNS,MAY_BE_FORGED,
        PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_SOFTFAIL,SPF_SOFTFAIL
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

From: Alison Chaiken <alison@she-devel.com>

Provide a few examples of how to use the cpu-list variant of the taskset
command.
---
 schedutils/taskset.1.adoc | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/schedutils/taskset.1.adoc b/schedutils/taskset.1.adoc
index 9609e0c9c..56084fd3c 100644
--- a/schedutils/taskset.1.adoc
+++ b/schedutils/taskset.1.adoc
@@ -93,6 +93,14 @@ You can also retrieve the CPU affinity of an existing task{colon}::
 Or set it{colon}::
 *taskset -p* _mask pid_
 
+//TRANSLATORS: Keep {colon} untranslated.
+When a cpu-list is specified for an existing process, the 'p' and 'c' options must be grouped together{colon}::
+*taskset -pc* _cpu-list pid_
+
+//TRANSLATORS: Keep {colon} untranslated.
+The *--cpu-list* form is applicable only for launching new commands{colon}::
+*taskset --cpu-list* _cpu-list command_
+
 == PERMISSIONS
 
 A user can change the CPU affinity of a process belonging to the same user. A user must possess *CAP_SYS_NICE* to change the CPU affinity of a process belonging to another user. A user can retrieve the affinity mask of any process.
-- 
2.32.0

