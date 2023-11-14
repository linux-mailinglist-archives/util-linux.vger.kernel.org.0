Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6569D7EA8B1
	for <lists+util-linux@lfdr.de>; Tue, 14 Nov 2023 03:21:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjKNCVf (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 13 Nov 2023 21:21:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbjKNCVf (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 13 Nov 2023 21:21:35 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A90A11A
        for <util-linux@vger.kernel.org>; Mon, 13 Nov 2023 18:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699928490;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=CzWJN7QFvuQWUTujnU3SUTX0+8TfJ2+m0rr0BLKz3ZM=;
        b=SaVNWy2z+joJVga9rRuNvnm/pexJy5HfsDLSO/ObT+i8Nm4e6K50y0rjM8iBmKo7spkx77
        U2kPjil/npe2BQRW8OPVHcavWs9ktRcFkVHQ5rdyg1axj7Uk6fFx/4iHFiuulWAAMHrRG2
        xzQJdhB5H+G26dU9yfY9mi+pqFTXhwo=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-288-mI2Y_fd7MSqcH-TyN5NMww-1; Mon,
 13 Nov 2023 21:21:28 -0500
X-MC-Unique: mI2Y_fd7MSqcH-TyN5NMww-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4763A3C025BC;
        Tue, 14 Nov 2023 02:21:28 +0000 (UTC)
Received: from dev64.localdomain.com (unknown [10.64.240.70])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 0769F492BFD;
        Tue, 14 Nov 2023 02:21:26 +0000 (UTC)
From:   Masatake YAMATO <yamato@redhat.com>
To:     util-linux@vger.kernel.org
Cc:     glaubitz@physik.fu-berlin.de, Masatake YAMATO <yamato@redhat.com>
Subject: [PATCH] tests: (lsfd::column-xmode) ignore "rwx" mappings
Date:   Tue, 14 Nov 2023 11:21:22 +0900
Message-ID: <20231114022122.1292703-1-yamato@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,LOTS_OF_MONEY,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

This change fixes the issue about lsfd reported in
https://marc.info/?l=util-linux-ng&m=169972678725084&w=2

column-xmode test case assumes an executable file has only
one "x" mapping like:

    % pmap $$ | grep ${SHELL##*/}
    1292343:   zsh
    0000562386c1c000     92K r---- zsh
    0000562386c33000    716K r-x-- zsh <<
    0000562386ce6000     88K r---- zsh
    0000562386cfc000      8K r---- zsh
    0000562386cfe000     24K rw--- zsh

However, this assumption is wrong on Sparc64:

    % pmap $$
    1490470:   zsh
    0000010000000000    792K r-x-- zsh <<
    00000100001fe000      8K r---- zsh
    0000010000200000     32K rwx-- zsh <<

Two "x" mappings are found.
As a result, the original test case failed.

Signed-off-by: Masatake YAMATO <yamato@redhat.com>
---
 tests/ts/lsfd/column-xmode | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/ts/lsfd/column-xmode b/tests/ts/lsfd/column-xmode
index 7fea4b0ec..dd8539837 100755
--- a/tests/ts/lsfd/column-xmode
+++ b/tests/ts/lsfd/column-xmode
@@ -82,7 +82,7 @@ ts_init_subtest "XMODE-w-bit"
 wait "${MKFDS_PID}"
 ts_finalize_subtest
 
-EXPR='(ASSOC == "mem") and (INODE == '"$INO"') and (MODE != "r--") and (MODE != "rw-")'
+EXPR='(ASSOC == "mem") and (INODE == '"$INO"') and (MODE != "r--") and (MODE != "rw-") and (MODE != "rwx")'
 ts_init_subtest "MODE-x-bit"
 if [ "$QEMU_USER" == "1" ]; then
     ts_skip_subtest "running under qemu-user emulation"
-- 
2.41.0

