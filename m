Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5A44DB3BB
	for <lists+util-linux@lfdr.de>; Wed, 16 Mar 2022 15:52:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350764AbiCPOyK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 16 Mar 2022 10:54:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234470AbiCPOyJ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 16 Mar 2022 10:54:09 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A5D8634E
        for <util-linux@vger.kernel.org>; Wed, 16 Mar 2022 07:52:53 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id o83so2696985oif.0
        for <util-linux@vger.kernel.org>; Wed, 16 Mar 2022 07:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=UJCaRbPtK6SCIQ6BpFErZM6KcF2iH3hSGKbO/P5fiZlnafmgDBuNYyTtA030oQfrx+
         MpwEDW6cWKCruHXOnVu1h0EFZI7XmLbcbYIB8j1QeoQV7uZ+XiX7sIkwgxPpzn6KrgWb
         T9E/rfu5dpWb4YLNETJya3LXoWcY+73eWsafRUXqaew3/MXoNJgaHPqgDkP7vot3RpJq
         TGHDT+BZPaEUTxhZ6Q9GOGNooDCZNn8G8CTOU/tPEXG7jFM1P1Mcitd0Daa+hmfSPtfv
         xf5N9bDvGJ3MUaLj1WhlzzSUMpzbNBtJZdz1/HSCIoJqPajAeIVoKrlLtc67qt+SYe3K
         UxXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=s6MlglFmZ5D6hFURDxSg9P1SU5UzO+S0JCkz6M1yP9o8LyDu0vBQ0nL9zy3WYKFGN6
         x+swnuqfTfeg67rhSgOoYT9u9fiJdYtSaukC5qCusbOSpN/9D09K7AsiU88ENCSBPGHO
         vCB+G1xCQyeeh5cNWEYZYHykwco1Pk1A36UCN3Ky4s15QhUjxntupF5Nc3Dt0rgyUg5i
         4TCzAlHDRE8qjk1rNKf6vzKVSfmsFluTSguO/RRf4XXeIKF3YmbXb7W/F/qk0FzMcXSh
         FmrXTSQ7K+Lsfnlr4GKq0ixprlfnp2hdwoeveA5+gVw4tKfY6VEwCHV21cZr/SHTyzRW
         YFnw==
X-Gm-Message-State: AOAM532++05PKSK3WmCp/2iLABUqJBJxh5X85z5Hfu95qzI/G717xIiX
        IcSNtlecmPsvhj0KZ6Kks7EhquiQ2/q3MYjqKTM=
X-Google-Smtp-Source: ABdhPJweDWSIXT+8GxPXQByyWp9sJ43CgFfbUayw/mxrgd952bdlGW/MXVoGjWD1w2/PKGuqAlQTp0KvgNZbkkyu3RQ=
X-Received: by 2002:aca:2b06:0:b0:2ec:9f1b:c1b with SMTP id
 i6-20020aca2b06000000b002ec9f1b0c1bmr3823212oik.34.1647442372634; Wed, 16 Mar
 2022 07:52:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6838:7c0b:0:0:0:0 with HTTP; Wed, 16 Mar 2022 07:52:52
 -0700 (PDT)
Reply-To: avamedicinemed3@gmail.com
From:   Dr Ava Smith <mistracywiliams@gmail.com>
Date:   Wed, 16 Mar 2022 07:52:52 -0700
Message-ID: <CAJH5YeM_4ozC0h3c6aZfFd7BT3YeHNpxuOeH6AQR1v-dfCtoDw@mail.gmail.com>
Subject: From Dr Ava Smith from United States
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:22a listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4373]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mistracywiliams[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [avamedicinemed3[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.7 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
