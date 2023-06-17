Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE19173418D
	for <lists+util-linux@lfdr.de>; Sat, 17 Jun 2023 16:03:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233775AbjFQODK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 17 Jun 2023 10:03:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232182AbjFQODJ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 17 Jun 2023 10:03:09 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1773010D8
        for <util-linux@vger.kernel.org>; Sat, 17 Jun 2023 07:03:08 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-987f7045f9aso53326866b.1
        for <util-linux@vger.kernel.org>; Sat, 17 Jun 2023 07:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687010586; x=1689602586;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wB8rTqdx6QMXq2wGB7aMKvmRbYSt04US7F6OClp8Rf4=;
        b=F7T4HDP7P/YIyaKx82KFakw6/7kjjRsw5hVpxe1Dem+pL1+rMiGP7utk+6mdh8jE7Y
         22DeCn9m7BUkOvl/VCYJQEG35SVYG23eR9LUY76wOxS0JKEFcjEHB3pVoWuIyZjtzwzq
         YBYn7UkC0us6JsesC/reaiCF+XNNl8VthenNnmbuZgqVajEgnlCMq9yE2Um4Q31/oMhG
         1nMcmIMYEjiopNzjW67aPs0bGSfDWND+7+24tozAZRqKydB8wD0NinhO8Pj4M6XurXaN
         cmOKpYdfHervz2Z5LB3319obSWYdIgI00kRG9C/vgPwV5QBBGTAFbAojzvDArxSOP8+L
         e8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687010586; x=1689602586;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wB8rTqdx6QMXq2wGB7aMKvmRbYSt04US7F6OClp8Rf4=;
        b=SnsoPUSlxJdsYW3k0k7soc6AukQRRNNXHKAkouZcuwMCS/Guir8XpoVdivN9QnRArE
         m9yfWf6MnT9fJEGVro7JAazhMX9Wqmqqa9iQfvdPoMSV+9vMBb0tIRnebj6lBcTOZUEo
         udoeNORQIomE8yJ+O/lh4ZZDdjzMlLVzc0KIjTnSgQdtMT1q0KZQsX0mbaIxYMRZ8pXb
         FXw9Wjy/N2c+C/8o7r3RlJucVcqv/9ts0zMwMsdjT5d+8GkeJrv+TOOS4Bg9CCg9vaKL
         CkhHs6eJHtEbOLwHhp0g2FHXWkjyWdtsWe/+dZgWhLjyARVG4/sG7zkY9UJINWj4YO/p
         Z3eA==
X-Gm-Message-State: AC+VfDzDy+mEzSH1l4q8LEceqXf1HipSUsbKmpDKTmzSgn7PwvCRSyah
        9UZn0UKSBzMhFrPonV0Q4q+d9kRsk+dxYoy0KKV1BD3SY7A=
X-Google-Smtp-Source: ACHHUZ5nxYfobdJ7IiQ2e1hQzkSMDDGJG46uBfOJY5PrNp2/CmFHLt3esrBwkITyVjAEzg+wAQVBfEumB+aCV8WrFV8=
X-Received: by 2002:a17:907:e87:b0:973:92cc:fc78 with SMTP id
 ho7-20020a1709070e8700b0097392ccfc78mr6342005ejc.49.1687010135804; Sat, 17
 Jun 2023 06:55:35 -0700 (PDT)
MIME-Version: 1.0
Reply-To: khrystynakostiantyn@gmail.com
Sender: boy823780@gmail.com
Received: by 2002:a05:7412:1210:b0:d4:6d7c:c300 with HTTP; Sat, 17 Jun 2023
 06:55:35 -0700 (PDT)
From:   Khrystyna <khrystynakostiantyn@gmail.com>
Date:   Sat, 17 Jun 2023 06:55:35 -0700
X-Google-Sender-Auth: N4NulPDMvekV1xHpHhtTiUFKdn0
Message-ID: <CAGdSj5kuYdkj71xnPof8uASG0VWTpevqXjo25m5pv4E+EOX3Zw@mail.gmail.com>
Subject: Am Expecting Your Response
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.9 required=5.0 tests=BAYES_50,DEAR_FRIEND,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,LOTS_OF_MONEY,
        MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY,URIBL_BLOCKED,YOU_INHERIT
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was
        *      blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [URIs: kostiantyn.am]
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:634 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [boy823780[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [boy823780[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  2.6 DEAR_FRIEND BODY: Dear Friend? That's not very dear!
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.0 YOU_INHERIT Discussing your inheritance
        *  0.5 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  3.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Dear Friend,
                          news.un.org/en/focus/ukraine
My Name is Khrystyna Kostiantyn.Am 24 Years, am from Ukrainian am
presently in st christopher parish for refugee  Comp under United
Nation High commission for refugee, i lost my parents in the recent
war in Ukrainian, right now in am refugee Comp , please save my life
am danger i need your help in transferring my inheritance my father
left behind for me in a bank is US$ 6,000,000.00 Million,i have every
necessary document for the fund All i needed is a foreigner who stand
as the foreign partner to my father and beneficiary of the fund  i
just  need this fund to be transfer to your bank account so that  i
will come over to your country and complete my education as you know
that my country have been in deep crisis due to the war. and my family
were not  there again because i have nobody again All of my family
were killed in the war.if you are interested to save me and help me
receive my inheritance fund into your bank account with utmost good
faith

please get back to me check this  news.un.org/en/focus/ukraine

Khrystyna Kostiantyn
