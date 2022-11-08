Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 855FE620ECD
	for <lists+util-linux@lfdr.de>; Tue,  8 Nov 2022 12:23:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233438AbiKHLXx (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 8 Nov 2022 06:23:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233856AbiKHLXZ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 8 Nov 2022 06:23:25 -0500
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3FD49B7D
        for <util-linux@vger.kernel.org>; Tue,  8 Nov 2022 03:23:24 -0800 (PST)
Received: by mail-io1-xd30.google.com with SMTP id b2so11159343iof.12
        for <util-linux@vger.kernel.org>; Tue, 08 Nov 2022 03:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5B7dfi7xVJ3OslQ0ALi00lhJojz9IHhiYsVHA/RHqOE=;
        b=SKxoMXk71fzsH4RiXsi+C/6DrTYSmJg4y1x26aHehdukMfOTxbvTz1RDZUF5ezzzn/
         SQHYV4p3Y0wU6zNmLXlSGC0M0pB4u1QXpkiFBqj96YkCT31bBeSPHVyC9vbsQojRcKKa
         SwDbPs5WKRvZ1NoWEDhTso55tNTqvUdAli9jMSpajt514Wj81lAxmYoGpi6DQ4M8d/YW
         uNuOs+TGP30ZU5GtAl8fFqJCJVBKD4dazlRxiLu29LiZYp1FL2RFvwqDLOuunnObSg9E
         p/NuCd3UGlvOiIG98Srp88iAS0c7bT56QT5PdmY+ak3wAUeTvaY55MnBzDy9nfsyKYCp
         Znkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5B7dfi7xVJ3OslQ0ALi00lhJojz9IHhiYsVHA/RHqOE=;
        b=Ytj5meLZiWQBKuUfNwAZbaUtJX4Yxw1ywxk98bUvZekCTnNkTicaIEWlDSyKB18bjx
         fK8oUTFkFvs+XDvHOkLGWGq3cwzb78Ka3JGTBLRBksT5gRY5gJv1B6SWh3pDLJpKobwV
         UtxUEzl+c+HJvsN7rRoMKoafrvAfNj+Exuji2VVmB5FqTL9ZdujZlQiB1ndL1LRPEL4W
         Y9J01Eh1NmZphHDzoVdv41VyFTrsjSlc7ERJ5lmiOMs2JRESjf+8b39JDZ1JR6lmtiwx
         8WT8BictZ/HK2DEZzuGDro7GlKVfJxfd80CGyQMi5pRosaBTt9+qosqPRhX4PhF43iRv
         l33g==
X-Gm-Message-State: ACrzQf2l463890CV/UivrNRwXppVobw40TmdBEyJmSY9n4rehzTT8EXz
        4icrFbZtiBEjRdWOZ2JnXQJ5MAC7eAhSUQrKrUg=
X-Google-Smtp-Source: AMsMyM7+myFlW6XFCXeSKLT27SlDPwGDh9RuXs3znV2KSQYgkg4ZcNfREnZlVBvtvS1gzBfTPQfDB8rVRvELVHxJ/ls=
X-Received: by 2002:a05:6638:2:b0:363:8330:d75 with SMTP id
 z2-20020a056638000200b0036383300d75mr32884715jao.33.1667906603907; Tue, 08
 Nov 2022 03:23:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6638:1921:0:0:0:0 with HTTP; Tue, 8 Nov 2022 03:23:23
 -0800 (PST)
Reply-To: mrinvest1010@gmail.com
From:   "K. A. Mr. Kairi" <ctocik10@gmail.com>
Date:   Tue, 8 Nov 2022 03:23:23 -0800
Message-ID: <CAEbPynvgXcwj+VPyZrCxfVHXTsPyXOo7WiLoVkUCLehN3kB_iQ@mail.gmail.com>
Subject: Re: My Response..
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:d30 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5001]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mrinvest1010[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [ctocik10[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [ctocik10[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
Dear

How are you, I have a serious client, whom will be interested to
invest in your country, I got your Details through the Investment
Network and world Global Business directory.

Let me know if you are interested for more details.....

Sincerely,
Mr. Kairi Andrew
