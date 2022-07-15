Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 807B2575EC2
	for <lists+util-linux@lfdr.de>; Fri, 15 Jul 2022 11:42:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbiGOJk6 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 15 Jul 2022 05:40:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbiGOJk5 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 15 Jul 2022 05:40:57 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87C9D491DC
        for <util-linux@vger.kernel.org>; Fri, 15 Jul 2022 02:40:56 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id v15so1378084ljc.1
        for <util-linux@vger.kernel.org>; Fri, 15 Jul 2022 02:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=5/UmqluA7Jh4baRJC2F+0GGvQnHdiYOaoe5qnf0gA9c=;
        b=hFsShPVB4oHotbC2gBEiSG24AqX0xKRyqtYNZZUJd0xeXG+U+cDlOz7+HCoUU7fBzD
         aamqXiZzM5rXuCvvMqo0SpNcxa+RYpzHc7bUYMbBql5LJVZutiBRDwMYr6j7GfxlkYqm
         7FLj2WK5RHKvwusvRAqKcAvueV63oOoxMZSZBLb/jkEYI85r/OO3b+kx8dA2keer0TmH
         IG2LIIzRhZ+T8Xq1zxAm7flOhK2WcYF2epR6dUNBFiZMV4jTwNUP6yqzaEsa7d4WIkIJ
         MYDmrOO7auyl+q8MtB0kgZ6IR4s2prH6l4KzutcT9YBjzJgknaWn1+qNZ7p4LRoVSXk7
         Q9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=5/UmqluA7Jh4baRJC2F+0GGvQnHdiYOaoe5qnf0gA9c=;
        b=2S2UjZ1oEEWIj2o3Uk7g+yJ42nMNCmpPEeoESTJC1xyHLktRQcT5RiPhkT3d+nOUiA
         lZkv2X2XQkJjB0LIXFnwNYuAZKK0D69Y6QaS7neY/OdMLVaC7rFASe2AYVJC/xrpTjm9
         pRYfn3xh9Anyf5Fb/yznw9HffRhv6FW3TnP5zuuKxaw0jvyrsBlhnk5eE5yrdB4qS/uZ
         S7MG1QcfNxvYGo7sYHT+8865gwvtWnS+AVX0uMaxmrpIa3qS3axnf9x6ttJlXEVPTBTW
         ag3+01giabZq0RPQzRdQqrtkYtoA5LZFo1Uzxw7lnnaBjpX0Vvj0vU00H7x2CtqbdxMd
         dtcw==
X-Gm-Message-State: AJIora8QxG1KSCmB6s2rVcXlAPZJ+pKdcgIPabDGbwKtPZ1G7Yf9cvSE
        /8IK2DsW96TuUgd7Xu7j6CMKYcyR4MhMdigoXYE=
X-Google-Smtp-Source: AGRyM1v5z2yrKcQeU6lcUpkwbPHFoUX/BdF8DMkkBnlEQb74v8mUPq/7r7ExEbJyteO7GuXd+909ry4W1J76js3r07w=
X-Received: by 2002:a2e:be09:0:b0:25d:610d:7948 with SMTP id
 z9-20020a2ebe09000000b0025d610d7948mr6162344ljq.423.1657878054535; Fri, 15
 Jul 2022 02:40:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6512:1282:0:0:0:0 with HTTP; Fri, 15 Jul 2022 02:40:53
 -0700 (PDT)
Reply-To: westernunionagent303@gmail.com
From:   WESTERN UNION AGENT <odetadejoseph@gmail.com>
Date:   Fri, 15 Jul 2022 02:40:53 -0700
Message-ID: <CAAe66sbArMPM10tpdMDrMYsDX6y-WXvNxwdGC0QOVAx2Hv3DSQ@mail.gmail.com>
Subject: Dear E-mail Owner,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_FILL_THIS_FORM_SHORT,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Dear E-mail Owner,

We have deposited the check of your fund ($1.500`000`00USD) through
Western Union department after our finally meeting regarding your
fund, All you will do is to contact Western Union director David Peters
via E-mail:(westernunionagent303@gmail.com) He will give you
direction on how you will be receiving the funds daily.Remember to
send him your Full information to avoid wrong transfer such as,

Receiver's Name_______________
Address: ________________
Country: _____________
Phone Number: _____________

Though, Mrs. Franklin Moore has sent $5000 in your name today so
contact David Peters  soon as you receive this email and tell
him to give you the Mtcn, sender name and question/answer to pick the
$5000 Please let us know as soon as you received all your fund,

Best Regards.
WESTERN UNION AGENT
