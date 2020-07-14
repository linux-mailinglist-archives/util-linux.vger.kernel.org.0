Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA02221F175
	for <lists+util-linux@lfdr.de>; Tue, 14 Jul 2020 14:36:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728160AbgGNMg4 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Jul 2020 08:36:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726354AbgGNMg4 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 14 Jul 2020 08:36:56 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEC94C061755
        for <util-linux@vger.kernel.org>; Tue, 14 Jul 2020 05:36:55 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id p20so21526669ejd.13
        for <util-linux@vger.kernel.org>; Tue, 14 Jul 2020 05:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=us7BFYDk7jVdrj22GsxjfJtj7kAb503fJNVWNl37Mrk=;
        b=sCaay9R+jr200ian6qWaQhO1OUs2HarME6X+XqRreJfxYbyTbA7uWawDlrnZ55R3or
         VfTgQ3wb4ZpbA47ktgUtv2HUjQ0xw6lXsjxRIH6rA5ONPuGJ5S4IyCgivA9AfGJjLjOe
         +LWnFLBXTwYIudy2UF6KO8EQFsXhWmMAeYbMR64fZvrdXiDukwzthBispMMGB6lu1Hxx
         trdRK2dITACp3hu7m6uFzqFvu5SGPdthLY1/OSL/0lsQKogLFInw/nCvVOVYOli6caLr
         Tm85lToDTXEWacSCbG3fUSDNJpTDz03M3Bw9fAYtaPQibMCF7D0B8CDjqrDMHDR+XaV5
         mYIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=us7BFYDk7jVdrj22GsxjfJtj7kAb503fJNVWNl37Mrk=;
        b=LuO8Rgcn7rvoqBw1xueHxYpRtAaUfWQRt0dH5NWjYdg0rEtTHUu83RbelkWdfneQzS
         NPLBn+dARhioi+ELFlaqkbg5TRamhScCna7XeoNRlsA17/E5goWST9uZyoV3yNOSY/MC
         6oHmn++xd78UeFlklt/ZI/WDhrXTwigyc+9aaCYH/IEAbWBP25Zlp0ORQeFcE3cKZq6f
         KpPdZaCz+O7KkWJb/DMHBcOgUNN8oWPH6qhBjSGzyCOmJP2uGEkLort0PX5jDXLp7DhJ
         fCqcXkWNlMwunxhlrrNpl1ilMwY9mMz9xR677EyX8UtOzdnaAhL3D/ErP+Do80GZbozt
         xTVw==
X-Gm-Message-State: AOAM532Zl6w8/NgQdQKMS2Zlrm7X5yrzmzsKO7QQ1m0KoXtu2oXDAhS1
        2SbXw6NRhaV26dT4iNWCQGs=
X-Google-Smtp-Source: ABdhPJwP0r465ThLNQwCC8AreWdHL0q9Hjd0zhJoGC6AG1FhKwCk9m4gDSiNSpUqXmOKZAjdwhmCEw==
X-Received: by 2002:a17:906:60c6:: with SMTP id f6mr4031130ejk.265.1594730214484;
        Tue, 14 Jul 2020 05:36:54 -0700 (PDT)
Received: from bienne.fritz.box ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id z1sm12405384eji.92.2020.07.14.05.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 05:36:53 -0700 (PDT)
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
To:     mtk.manpages@gmail.com, Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: [PATCH] Manual pages: su.1: wording fix
Date:   Tue, 14 Jul 2020 14:36:50 +0200
Message-Id: <20200714123650.53000-1-mtk.manpages@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Fix a wording error introduced by a patch I sent earlier today.

Signed-off-by: Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>
---
 login-utils/su.1 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/login-utils/su.1 b/login-utils/su.1
index 80949dae1..9a10e7172 100644
--- a/login-utils/su.1
+++ b/login-utils/su.1
@@ -6,7 +6,7 @@ su \- run a command with substitute user and group ID
 .RI [ user " [" argument ...]]
 .SH DESCRIPTION
 .B su
-allows commands to be with a substitute user and group ID.
+allows commands to be run with a substitute user and group ID.
 .PP
 When called with no
 .I user
-- 
2.26.2

