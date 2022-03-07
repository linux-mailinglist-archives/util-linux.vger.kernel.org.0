Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AE094CF1A0
	for <lists+util-linux@lfdr.de>; Mon,  7 Mar 2022 07:07:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232491AbiCGGIq (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 7 Mar 2022 01:08:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232683AbiCGGIp (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Mon, 7 Mar 2022 01:08:45 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BB081AF39
        for <util-linux-ng@vger.kernel.org>; Sun,  6 Mar 2022 22:07:51 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id g26so28803929ybj.10
        for <util-linux-ng@vger.kernel.org>; Sun, 06 Mar 2022 22:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=7Im1JG6q3q15hqSa7NWQHVGGERLfnPf1iBbuaSTqgJQ=;
        b=j/sl3tGgN80YTM456lvU34pwf4ks9xekVM+SinjDUxg/2XQIxEZoA3PYL9FZF+ZvT1
         5iYOjch6nwI3UAnXyEXt6BsJy8Sjh7wZep59KHFG0ZqFKua595GZm122sRjwQeWGfGOg
         hpUfLDJzuDo0gEwf6G6s86u6xGH6nyLYM82r0t5CzBOmwG8nICTY2eD3R6xrrwmB9GPw
         KvjGAiB/p3AYCCCOk1MM6e2udMgN4fDEyCDmpNB1TB3riMS/NcKFJ7fpm70Q+WIvKjtF
         qyLqNAmmxPsKZNWVCogeCAT1wQHZeuubSq8gKIowykYzdsHlz8GeE5Mm2cXcyUoQkgGr
         rD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=7Im1JG6q3q15hqSa7NWQHVGGERLfnPf1iBbuaSTqgJQ=;
        b=vIMTie+kcMkehTASu1A8HBRD3TIdi/LEwjlKIUWIyi2EW00sBIW/ewNPFDVLUtOpZq
         0ZAPThBPrq6AITQMgVbhH+kviN1+ooVbTBk2PdQIyRWkSfPnYE0TQYJfNC75cd5ogWBk
         E9gD3bx0FwP79ukovA8k/LNFKtI6tg2vkzyiigz1L4bj5JpGn1Q9swevguMLLiv3qr5S
         VE+tDld0Q/gZ0HUfJ8TMlh9MAUmVaVS/LgCkgpX8Xz3D7bys+/04jS7yMsG0dkGTcNzG
         as8kcOk0jV/9Hd6WugsSJwlU5wtS0l3qRAjg0Q6B/CqYbqhRsYYqjFcLnMrOgHrFUKlA
         jIEA==
X-Gm-Message-State: AOAM533J+bBN9vATvRbSug8vo54X+uIDCsJEFpqcdP6OxloucdIj/mnT
        rOpCBawyKi8Ozuh7l/p7wQQrzVr8u/jVWnd2E60=
X-Google-Smtp-Source: ABdhPJzVNm4o7IPLEvDjqNGP/mErivcRRRj6vjdT6LS86kEshG6qEd/gDuADoWMnSxRjX6tHwgpSDUJTrSssiHxEz8s=
X-Received: by 2002:a25:7481:0:b0:628:9995:351f with SMTP id
 p123-20020a257481000000b006289995351fmr6852705ybc.648.1646633270086; Sun, 06
 Mar 2022 22:07:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6918:b986:b0:a4:b698:78d9 with HTTP; Sun, 6 Mar 2022
 22:07:49 -0800 (PST)
Reply-To: markwillima00@gmail.com
From:   Mark <markpeterdavid@gmail.com>
Date:   Sun, 6 Mar 2022 22:07:49 -0800
Message-ID: <CAC_St2_=JZZLALG5ToDf+cmiTdcvFm=Un1=h2Cv0Kdt7mTmf0g@mail.gmail.com>
Subject: Re: Greetings!
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.4 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:b33 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [markwillima00[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [markpeterdavid[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello,
Good day,

The HSBC Bank is a financial institution in United Kingdom. We
promotes long-term,sustainable and broad-based economic growth in
developing and emerging countries by providing financial support like
loans and investment to large, small and
medium-sized companies (SMEs) as well as fast-growing enterprises
which in turn helps to create secure and permanent jobs and reduce
poverty.

If you need fund to promotes your business, project(Project Funding),
Loan, planning, budgeting and expansion of your business(s) , do not
hesitate to indicate your interest as we are here to serve you better
by granting your request.


Thank you
Mr:Mark
