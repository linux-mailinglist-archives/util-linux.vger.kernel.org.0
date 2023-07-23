Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37C0875E008
	for <lists+util-linux@lfdr.de>; Sun, 23 Jul 2023 07:51:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbjGWFvk (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 23 Jul 2023 01:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjGWFvj (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 23 Jul 2023 01:51:39 -0400
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com [IPv6:2607:f8b0:4864:20::a41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F93E1BD0
        for <util-linux@vger.kernel.org>; Sat, 22 Jul 2023 22:51:38 -0700 (PDT)
Received: by mail-vk1-xa41.google.com with SMTP id 71dfb90a1353d-4814bea10e0so1223044e0c.1
        for <util-linux@vger.kernel.org>; Sat, 22 Jul 2023 22:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690091497; x=1690696297;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0VQXOMs/Hjsb9VBFRk+N8nxkUq7dGJdSIap86SFdHt8=;
        b=kGYRwZ6Y6lwEw9Elh723YoN2d6brrpYlzGCSEv+eUXGKGP1NSEFtj8r70Quq0tAcWA
         jqdvgkIakAfTFM16FtZ37WB7jPjI//JTXfk09x3oAPZ9mlWud74/BYFVCpqLa9QxdN6n
         +SAgts38kPizgl/NYTasPT68msPg7Ksrn/tVZcyfDusUwlYPo1H0VuXUd/fo80ndYYgs
         yJwVPIBIwJzBsCokm5XYNYUNzV+4Yl4joIBtSrsUjc8k+0pAOtNBEKjBvisqv9yUhg7T
         pXa3fS88AhK44i1jcrSYe2b7pBoBI6bYmAzdZM2s+scRWBq075OHjYMzXLRhbA+YGCZs
         7KFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690091497; x=1690696297;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0VQXOMs/Hjsb9VBFRk+N8nxkUq7dGJdSIap86SFdHt8=;
        b=GSJgaweNzinjdXcHW+S/nAY/5FbMvYGQR3/o5VhPPimTYLjBvGvnEZ2Q3YH/4dEz5q
         A0/p/DLvHnhH0DzT47GjMCnojHe+Ph+cY1d99209ItjhICG6O5Yt0jNsiBnMisWe0HRB
         doZs8ppp3BdF2Kbt3tcfurY/MGohey0YRHw/nTLi7gO/jTuBtFBLtjtF1XOrBE0fhir8
         iGps8uy/JlrjAqhWqVfyWroIs5Bv0B3dTGb527bpE2oV3L0kcdhVb6mm39f9QWHQmYHz
         oCcTzACEoT75V7lsqn0SVmsDwctKnT0jzWQBRjRXAV9iwWVKVisHvyfyu0GGycMMPX5+
         hmDA==
X-Gm-Message-State: ABy/qLZ1or7P5ttCLlPcQQUHSYOtiA4NCjVDto+AI2duuYs6+XmBzvaE
        OYp4zEGxz5eafO661pPJp3rRtv2eC8MkqiUNMNQ=
X-Google-Smtp-Source: APBJJlGikQ7u62K6P3U9uL0NdqL1j7Mnk9yGW82iBRwMGJO7kVHqPEnkwhB1CRlp6CkBovqba1RDCwSfggWx+dpw36s=
X-Received: by 2002:a1f:c1d4:0:b0:481:3423:4f1f with SMTP id
 r203-20020a1fc1d4000000b0048134234f1fmr3075052vkf.4.1690091497395; Sat, 22
 Jul 2023 22:51:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6130:210b:b0:787:74a7:7cb5 with HTTP; Sat, 22 Jul 2023
 22:51:37 -0700 (PDT)
Reply-To: mariamkouame01@hotmail.com
From:   mariam kouame <mariamkouame304@gmail.com>
Date:   Sun, 23 Jul 2023 05:51:37 +0000
Message-ID: <CADR0=AtLqFha_-hDB=7FPcaB5eT28DWGgrmcB_wnrCFeD0kfxg@mail.gmail.com>
Subject: from mariam kouame
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.8 required=5.0 tests=BAYES_50,DEAR_SOMETHING,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: *  0.0 RCVD_IN_DNSWL_BLOCKED RBL: ADMINISTRATOR NOTICE: The query to
        *      DNSWL was blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [2607:f8b0:4864:20:0:0:0:a41 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [mariamkouame304[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mariamkouame01[at]hotmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mariamkouame304[at]gmail.com]
        *  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.7 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Dear sir,

Please grant me permission to share a very crucial discussion with
you. I am looking forward to hearing from you at your earliest
convenience.

Mrs. Mariam Kouame
