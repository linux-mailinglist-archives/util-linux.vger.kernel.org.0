Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B55E554EA8
	for <lists+util-linux@lfdr.de>; Wed, 22 Jun 2022 17:06:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358934AbiFVPGl (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 22 Jun 2022 11:06:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359064AbiFVPGj (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 22 Jun 2022 11:06:39 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 773AE3EBA0
        for <util-linux@vger.kernel.org>; Wed, 22 Jun 2022 08:06:38 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id a14so6735031pgh.11
        for <util-linux@vger.kernel.org>; Wed, 22 Jun 2022 08:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=vhZEVnaGNBjosB86GDUW8b2wHjB/+QU31bPXl36TqFE=;
        b=UdjSwRw+6oQ6qiUR+rRkUhjWOua8+J1yFZkG0uO49bJMwCFfyLLueiiFV2vREFvYD3
         QtS2Mf0rebC9FzTRPmreZMcP+LPiYCVXfn0eFFw6XFuKg0kRkGh+vWEx2v/l7D1oKJi9
         hGKEHoX3k08NLkUOnVvzYSZrQfOVoplrWXJZwl842JSBwC1OqwAZ4pzDGSUyMDeJ82oM
         ZkOJTKXBg+R/uW2vJUQ4lrGK0ukdXBHefoDrwFfs2t1CwgmBt9mgd2vmbpntmjRAq8Sv
         1FynTzIPvLnHdJnwSBERrCZIGHp62lUfkUT0AaQOfp2k1f6J2WeAAzrI5UDlUpblHuF0
         +8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=vhZEVnaGNBjosB86GDUW8b2wHjB/+QU31bPXl36TqFE=;
        b=OY0jrosUiELVPNRdrUALf9iRsZ+D54GTotb60Vi1Yy2S+gcxSeByRxeEbItTMHEcLr
         40QxeIXk1s8llhYZl5yIienILHqDvBU0sfo3vwN1pe+KRhav+SOhQuFt0vhk6FD7msXK
         fV3gS/drL/P+qqY258AMjxwYnkO5AqTPUd2N6KQGuZMUS7C0HxyH0M2DLptJyofYDDJC
         we8Ctx9NRjj2aD2YNj3srAWERyhfE58ZFBPsFdq5WlpMv1++q6mHNiYb5zu2ClIH4qDQ
         D2RTUoypvcYZuktBMp2GJcYJu8634Oyj5r0zXQXKtmGWSZFf/GgiPOAofOHcdm53IiS/
         q4Pg==
X-Gm-Message-State: AJIora/itO9msZzQ7z6V7/Gd68k+GgskzXq+KJYMNyoBQO88Do1mdzat
        X2u3wfCh+R516d0FHoOBW9oyqDiUfsmjZ3qUlPg=
X-Google-Smtp-Source: AGRyM1vf/g0ul1trLFEAu7oYWn9j7QPhrxQj2kFug+Wf51rlwJHcE5bY2L1/LDYmR9NhUHUSJA/sC5iD4j6lOoGUUZ4=
X-Received: by 2002:a63:8c50:0:b0:40c:fa26:9738 with SMTP id
 q16-20020a638c50000000b0040cfa269738mr3295495pgn.541.1655910397895; Wed, 22
 Jun 2022 08:06:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:903:2308:b0:16a:1b3f:f74b with HTTP; Wed, 22 Jun 2022
 08:06:37 -0700 (PDT)
Reply-To: sales0212@asonmedsystemsinc.com
From:   Prasad Ronni <lerwickfinance7@gmail.com>
Date:   Wed, 22 Jun 2022 16:06:37 +0100
Message-ID: <CAFkto5thhNhkkGjQ3S6MhMGPs7Qzv1MpCVsUz+gkgdDGLSPYXA@mail.gmail.com>
Subject: Service Needed.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
Hi,

Are you currently open to work as our executive company representative
on contractual basis working remotely? If yes, we will be happy to
share more details. Looking forward to your response.

Regards,
