Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1649F1E6503
	for <lists+util-linux@lfdr.de>; Thu, 28 May 2020 16:58:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403851AbgE1O6m (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 28 May 2020 10:58:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403951AbgE1O6c (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 28 May 2020 10:58:32 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A230C08C5C7
        for <util-linux@vger.kernel.org>; Thu, 28 May 2020 07:58:32 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x14so22878372wrp.2
        for <util-linux@vger.kernel.org>; Thu, 28 May 2020 07:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wDDgdYpD6fUuaI0MV6z7s4Ahzwj8Ct3ocXUgTDduQEQ=;
        b=XttlBDpv9GrGMlPOb1eYe4y4IongUBdZmHSGlNPzXmoHMpcagrLqQ/G2ep0tGO4i/n
         k3TQS/auWrG/EbTrf0loXipeOziUQbGa0ehG2IDQvBqUfC1fi3xG47n6bqHS9U4jMCDy
         lWxU6CC6eaQkqbM2tmIBbV6WcIqEVbS1sZGG2Vmy3wxMNZCgF1ApC5ELrPnLWurAbZdd
         v70utapVa18v2pndUFW8e8rGDigicysSNmJ44JXMyuggy8mQ3QSEJaXKA62xaqjfyjdX
         7tEwXjxWWT9hapgdQEsagcKi8PbOgS4zmWS9qGsS/qt2j9R+9uxDJ2b/9LydiCSUm4vj
         qV/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wDDgdYpD6fUuaI0MV6z7s4Ahzwj8Ct3ocXUgTDduQEQ=;
        b=nriCxkVfJbouWJbmy3XggsAUimOrGjqE9iETMkWFpipblCC4KexQqJ7kHK+QaPfO8n
         PqX0F2a/3IxxJqBqFnd0uZdRU8rGontl9n95uCl2Bmp4Si4bhTAQ0sRSx+T0OegyC4xE
         PTlqalNFBpxSShE7dvjRgzLMxoDJX+Vx3WfeLR8+67PH3JIqN5S+922KjjjAeprVevTW
         iljonSSILRIiARV0ycp8OXGJFFcJ2Z6z3iJ/85eVeBmEDkr9ZudtPlBU1q0Ni4bv0vqc
         EHE3ssQuxt4c9a90Rp+vbrIANHu6sCjKvMTX8mKhLPZXvoOGzTGW07mu/VWEwREfFm4f
         /65g==
X-Gm-Message-State: AOAM531LoxkMlgWfq5wCciVXK5kBcWlSxNXMuOd3xxs+kzBuBumOIZaM
        sBfgcSpCbibWgHF/5RKbCmA=
X-Google-Smtp-Source: ABdhPJx1X2GKZxtpfuTvsL0QASyiBGj3tOBsBmil64IwNC+Z6Vy4ywxoG7LdxB15oQI3H5X6h2qThA==
X-Received: by 2002:adf:ed49:: with SMTP id u9mr3872785wro.414.1590677910106;
        Thu, 28 May 2020 07:58:30 -0700 (PDT)
Received: from bienne.fritz.box ([2001:a61:2516:6501:a84b:ccd6:785a:2f0f])
        by smtp.gmail.com with ESMTPSA id v7sm6482630wre.93.2020.05.28.07.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 07:58:29 -0700 (PDT)
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
To:     mtk.manpages@gmail.com, Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: [PATCH 02/10] Manual pages: unshare.1: typo fix
Date:   Thu, 28 May 2020 16:58:16 +0200
Message-Id: <20200528145823.978508-2-mtk.manpages@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200528145823.978508-1-mtk.manpages@gmail.com>
References: <20200528145823.978508-1-mtk.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

(Introduced in one of my earlier commits)

Signed-off-by: Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>
---
 sys-utils/unshare.1 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sys-utils/unshare.1 b/sys-utils/unshare.1
index e3a23f78c..a260d02e3 100644
--- a/sys-utils/unshare.1
+++ b/sys-utils/unshare.1
@@ -19,7 +19,7 @@ By default, a new namespace persists only as long as it has member processes.
 A new namespace can be made persistent even when it has no member processes
 by bind mounting
 /proc/\fIpid\fR/ns/\fItype\fR files to a filesystem path.
-A namespace that has been made persistent in this was can subsequently
+A namespace that has been made persistent in this way can subsequently
 be entered with
 .BR \%nsenter (1)
 even after the \fIprogram\fR terminates (except PID namespaces where
-- 
2.26.2

