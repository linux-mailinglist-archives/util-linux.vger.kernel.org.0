Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB28D1BD71
	for <lists+util-linux@lfdr.de>; Mon, 13 May 2019 20:53:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728925AbfEMSxY (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 13 May 2019 14:53:24 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:34954 "EHLO
        mail-qt1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728918AbfEMSxX (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 13 May 2019 14:53:23 -0400
Received: by mail-qt1-f195.google.com with SMTP id a39so15223682qtk.2
        for <util-linux@vger.kernel.org>; Mon, 13 May 2019 11:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FdVK3Q7+5g3G+veqtHAnl/anatK8rflb2ChmtKLTZ2M=;
        b=b4E1UC5HCC93nNKNxKyAI2++ZPfAKsM+xyYLeCFtis8Gyb5TyXwDkmYg+mqdwphOUe
         09nQ3QL8SYSFUzA8Ab473pfrRhHY/35oqnbOJF3pCg4jIXzXeTFFCg3h2MWFd+3eQF3M
         dRoJFrU6N964/5FaQkPGsqMLbw1/iZv3ZXvX+NGKvIQgcmDz+BWW/xubqyNZoQfjeW18
         zRVzh6qYchxSBfR7KNHDFEu/4hD4dZLp9zP2+i6tHgGF//aDHWE3aJIl1FwMALwtOelM
         rNAvPlNYgpQCieLs/yJozPDentRiqbqTRQtJgCGPc3kAoUe5dqxV0TTXsFj5VFQCp72I
         lukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FdVK3Q7+5g3G+veqtHAnl/anatK8rflb2ChmtKLTZ2M=;
        b=PEBdUdmThsoAsPCm/cdG3R8jEuqF1OG8spXPWPOCzqRE2WRcsgmHxP1vru6ONMQhdE
         HFjv2gsnKUI+C1mrJL0ovE1OD9PwNJQHjV31qp93Wg0HA4f0FzbW8x8SKEnzGUjE+C/w
         lQm7ACpMWfEZwvBigA2PDASKLxOd1pvGgEvDqvaPYt/YmDNWJ0HqqDTcncBmu/n1XNTw
         GZhOkYx/cXdonWOmqwbn4ik/feT7dje1i2iQ96NDKV1nrmUC/SdJgc9wJrb26x8letTL
         uOm4OPmm1g6Hm9clHRgWgRA7pWhbW+i8HdNEfFpegEpq35aDoRQguVRnSpZYNJqWUWRg
         5CzQ==
X-Gm-Message-State: APjAAAUL2gfMRUaXcdUj8M17qNcBITO5/ogBskF06xfO+9lYPUEg+LLj
        6Gi83nqN/nHEVgpWkNyvjWK0/TNU05Q=
X-Google-Smtp-Source: APXvYqz0ZYR8L4iPanDM+1OTfJnlcIHm+i6fmBXlvtpBxVkDo3R1fvRjx98FWAs81XJpYuDIJGJYxw==
X-Received: by 2002:ac8:1a59:: with SMTP id q25mr26447734qtk.154.1557773602643;
        Mon, 13 May 2019 11:53:22 -0700 (PDT)
Received: from austin2.ad.gaikai.biz ([100.42.103.4])
        by smtp.gmail.com with ESMTPSA id n66sm7577631qkf.49.2019.05.13.11.53.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 May 2019 11:53:21 -0700 (PDT)
From:   Austin English <austinenglish@gmail.com>
To:     util-linux@vger.kernel.org
Cc:     Austin English <austinenglish@gmail.com>
Subject: [PATCH 1/6] lib/colors.c: fix "maybe be" duplication
Date:   Mon, 13 May 2019 13:53:14 -0500
Message-Id: <20190513185319.28853-1-austinenglish@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Austin English <austinenglish@gmail.com>
---
 lib/colors.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/colors.c b/lib/colors.c
index bea7bd1d7..4a6c8afa4 100644
--- a/lib/colors.c
+++ b/lib/colors.c
@@ -36,7 +36,7 @@
 #include "debug.h"
 
 /*
- * Default behavior, maybe be override by terminal-colors.d/{enable,disable}.
+ * Default behavior, may be overriden by terminal-colors.d/{enable,disable}.
  */
 #ifdef USE_COLORS_BY_DEFAULT
 # define UL_COLORMODE_DEFAULT	UL_COLORMODE_AUTO	/* check isatty() */
-- 
2.21.0

