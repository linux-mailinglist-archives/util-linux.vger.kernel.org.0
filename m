Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CF94500788
	for <lists+util-linux@lfdr.de>; Thu, 14 Apr 2022 09:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234435AbiDNHu3 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 14 Apr 2022 03:50:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237881AbiDNHu2 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 14 Apr 2022 03:50:28 -0400
X-Greylist: delayed 465 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 14 Apr 2022 00:48:02 PDT
Received: from u166.east.ru (u166.east.ru [195.170.63.166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 97D935F4A
        for <util-linux@vger.kernel.org>; Thu, 14 Apr 2022 00:48:02 -0700 (PDT)
Received: by u166.east.ru (Postfix, from userid 1000)
        id 761ED9C433; Thu, 14 Apr 2022 10:40:15 +0300 (MSK)
From:   Anatoly Pugachev <matorola@gmail.com>
To:     util-linux@vger.kernel.org
Cc:     Anatoly Pugachev <matorola@gmail.com>
Subject: [PATCH] tests: test_buffer, return EXIT_SUCCESS at the end
Date:   Thu, 14 Apr 2022 10:39:54 +0300
Message-Id: <20220414073952.285415-1-matorola@gmail.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=3.1 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NML_ADSP_CUSTOM_MED,SPF_HELO_NONE,
        SPF_NONE,SPOOFED_FREEMAIL,SPOOF_GMAIL_MID,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Anatoly Pugachev <matorola@gmail.com>

---
 lib/buffer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/buffer.c b/lib/buffer.c
index 1dba7dd51..4bab52c04 100644
--- a/lib/buffer.c
+++ b/lib/buffer.c
@@ -285,5 +285,7 @@ int main(void)
 	printf("data [%zu] '%s'\n", sz, str);
 
 	ul_buffer_free_data(&buf);
+
+        return EXIT_SUCCESS;
 }
 #endif /* TEST_PROGRAM_BUFFER */
-- 
2.35.2

