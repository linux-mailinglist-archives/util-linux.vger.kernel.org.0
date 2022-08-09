Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EAC758E1FC
	for <lists+util-linux@lfdr.de>; Tue,  9 Aug 2022 23:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbiHIVny (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 9 Aug 2022 17:43:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbiHIVno (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 9 Aug 2022 17:43:44 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C1396BD4B
        for <util-linux@vger.kernel.org>; Tue,  9 Aug 2022 14:43:40 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id x19so10473141lfq.7
        for <util-linux@vger.kernel.org>; Tue, 09 Aug 2022 14:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=hnUM0lzwulX2q1QwimZooJGSc8HzCb0oOd/8o0YSo68=;
        b=Obo8X+WIsxMVA2Tf7UR6krVzbQKOdPj0Pn4APLxEhliZv56QAdzPL8c0hX4zoJBg/5
         jzh3QvshMECTYJy7QoHi2SkYOyCvE2QWv+iX6Hvp/dZ1OUZ+6HyFvofI2TODYlFZyzGM
         t5e5ZmEqGCzcflOseMfj1l8MmezHoL7PV26oG4ip+G6Yjts3CkVO1/RWptl8N+pVeQkL
         3TmfDcmHHCVuEHAb4aizoMiX/gj6fMtusnbwKHIVQKwMOknMw5VOcvcTypx6k+/VeVL/
         C6CjzADXCQhrvEP34CFHY+gOkwWivQuAJ2pRaoEVjP9ZggqLaMI7kv1SWTZbQRhjO8Ft
         xWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=hnUM0lzwulX2q1QwimZooJGSc8HzCb0oOd/8o0YSo68=;
        b=qOMwAk0Nvp8WvYd/0fvE/w+rvzY1bV8Ka+20rK/XmImViCvuPBZjQnF7jsuSnTs5sG
         CQ4v+iQ4qspB4krEgJrp/KiFkwoj+ezdMawk46AsO01Qm9B8RzXkmUWF7fP0oqZh8rmi
         qaluZKFVp5bkwZLPBxOGhoj7J27FkuV5qMDk+TY4z4hSCtpblVQWJO21cFxSIH0CcvnS
         2xaQRStJHJfoJ/AZLn6ecrcKprbJTARI7K+UJm4g64A9cyq60vraL30YP5hv17ggCwUZ
         +srERVeQuKFQzk21rtLXmBSnrLuJVciCfA82Mwbv+9gjEu/WeH/gTQn71fuZS3bi9Asz
         UomQ==
X-Gm-Message-State: ACgBeo3JvRsgAxaVv3jQ3mYiZp/d6k/cqjnQSVbsakvr0swOSTLwIvcO
        rkBNqSIzylRkmgNpq9OhXdWi2gUqtjRrijXCeO4=
X-Google-Smtp-Source: AA6agR5Bxl+punbrh4K0n1PyhMPOlZrqssr88U3+b4HZkSFKeijrK9pvYOFVswBgmYnb8RohouMCEoPGiMb+nlX0akI=
X-Received: by 2002:a19:7717:0:b0:48a:eae8:35d with SMTP id
 s23-20020a197717000000b0048aeae8035dmr9136405lfc.276.1660081418455; Tue, 09
 Aug 2022 14:43:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:1985:b0:1d9:6119:6b37 with HTTP; Tue, 9 Aug 2022
 14:43:37 -0700 (PDT)
Reply-To: wijh555@gmail.com
From:   "Mr. Yakubu Abubakar," <yakubuabubakar1884@gmail.com>
Date:   Tue, 9 Aug 2022 14:43:37 -0700
Message-ID: <CANt38eteo68zpc1L2PKiMa_eZCyRmfOgFy6UV_cJ5J9EQbm2WQ@mail.gmail.com>
Subject: Good Day,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:130 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5003]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [yakubuabubakar1884[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [wijh555[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [yakubuabubakar1884[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
Hello,
We the Board Directors believe you are in good health, doing great and
with the hope that this mail will meet you in good condition, We are
privileged and delighted to reach you via email" And we are urgently
waiting to hear from you. and again your number is not connecting.

My regards,
Dr. Yakubu Abubakar..

Sincerely,
Prof. Chin Guang
