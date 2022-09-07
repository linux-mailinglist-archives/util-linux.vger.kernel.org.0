Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF0A5AFA61
	for <lists+util-linux@lfdr.de>; Wed,  7 Sep 2022 05:05:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbiIGDFk (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 6 Sep 2022 23:05:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbiIGDFi (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 6 Sep 2022 23:05:38 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B30B083072
        for <util-linux@vger.kernel.org>; Tue,  6 Sep 2022 20:05:37 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id 10so10512832iou.2
        for <util-linux@vger.kernel.org>; Tue, 06 Sep 2022 20:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=A5xw1RXA7URkhZt0d4QwQray2K8PrBTb0YGQaP4ujfs=;
        b=lhjvWFwB+2Q6tM5j90kv2H1bDSoU5YlMvVVe3E6YvEctLoOWLZTvm+StBPrDD6x/oe
         EtOOt/7JyZdmOMuTccQATFyBq4xlSGODRgmIb7ZcJMlCgGdokx70gOvsU2se5MgyChEd
         H4aLVOQ9BToEgzkps6dzLyHbYSLohhLT3S/WI8b6UAgruf4evzEu+Er0vFBdf+3KeoYr
         HM11oP8GWYPKI05cFDjszMWZ8uytfeR8sB3K5OBW1pmC5pyZBA3O14uNojAONKQyLCht
         RmUBzVJMQNhn06W34bvNNwn0Wdb7s5HBHpchfsskfGTojiofHyAOTKLtOZAzmAMbdO9q
         va2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=A5xw1RXA7URkhZt0d4QwQray2K8PrBTb0YGQaP4ujfs=;
        b=ztV2ARrb1AkRyMWfG9UEG3uGzuL1DFH9rQOKzWw134oV33XAwS48Idqj0ZHb8/Nd6l
         MAAhcb3iDHM3E3qiDOQSCOuwpez4S4nC7vYZCl74gMO/g7yWBcpv0+iLV++AtiCOtei9
         Ms22awn3qqDfrur0SzeCu1nOUNHBI75izi1T2tYcRKr7F2VS/FwUFAuPL7s2J2Ku0HTQ
         g9RAN+i+bZGY/59A1pF1xJHKqkHyOMe/lqyQgbYNupBjbVaXYm8epNWZeuDXTYZfzf1W
         0eEjHhp0c6qemmODWGqqOTCUbI/4S63KOlQs0FcXMly54OSfyvxIlY2+t2dN/C8Sp+qy
         WDBQ==
X-Gm-Message-State: ACgBeo3NrBF/+2E1LFXxLN1AeDaJql367U6oFfhdOrJzVfGQwwTvZeCw
        WEwJ6Hf3/vu9WidC6kW/QxdxPqvc/S4he+tFfdc=
X-Google-Smtp-Source: AA6agR7z+HljS3Kl4wQQpRboiBgpGPX78f6KKnn49HCx6mADljXceNuOFH85aTDxhv/mB7PVI6ZsJnrgV0njql7mlao=
X-Received: by 2002:a05:6602:1593:b0:689:b4e7:7e21 with SMTP id
 e19-20020a056602159300b00689b4e77e21mr764274iow.151.1662519937151; Tue, 06
 Sep 2022 20:05:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6e02:2141:0:0:0:0 with HTTP; Tue, 6 Sep 2022 20:05:36
 -0700 (PDT)
Reply-To: morganwalter642@gmail.com
From:   Morgan Walter <jessica.d.walter12@gmail.com>
Date:   Wed, 7 Sep 2022 04:05:36 +0100
Message-ID: <CAMtGy2puqkgEGcJDUw3C-mz-Rm-JqhyjmAO+nCg5SaS=P2fe6w@mail.gmail.com>
Subject: Re:
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [morganwalter642[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [jessica.d.walter12[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [jessica.d.walter12[at]gmail.com]
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:d2f listed in]
        [list.dnswl.org]
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
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

I have been waiting to hear from you or don't you received my past E-mail?
