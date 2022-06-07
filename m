Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC02353FAA1
	for <lists+util-linux@lfdr.de>; Tue,  7 Jun 2022 11:59:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236840AbiFGJ6z (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 7 Jun 2022 05:58:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240498AbiFGJ6s (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 7 Jun 2022 05:58:48 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE4A6EAD20
        for <util-linux@vger.kernel.org>; Tue,  7 Jun 2022 02:58:40 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id i29so10709271lfp.3
        for <util-linux@vger.kernel.org>; Tue, 07 Jun 2022 02:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=p7cyveT4bvEtCVZfKnt9HMSBuDucwLXScRMPEQg6smQ=;
        b=nfbQAU03r8kreNkupbdE6fG+5k4l7uQJJzQllDNFkb1+MW65CtgrIcDYp+uu1IQyUe
         0fPi/ipf11mptMpqnmGQE2NqniE7zfG3CG86ppZqa34c4CbL+0Gwlj0ah+F+A1LNETrH
         WJ5DmhrZtdJm6SzgNDQ8jsorgO8Qvf4dtJB2K+XFa6t8NpgmMXeOqM8cgemPYdTD17xc
         0XqTnRkkTinYVwVZ/23AsqmJcIvW1htBK//elb4W7BEL9ffBrow5yXkzlipmTDv/uvxg
         UN7t0RBzGQco6VFlcBreqvMZRCo1nOFx9px7ilwzx+HaoGIUniaTAMycE8eXVB9i2XrV
         fvSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=p7cyveT4bvEtCVZfKnt9HMSBuDucwLXScRMPEQg6smQ=;
        b=hM9ypCR2CGno/+O5D06IUgwBlQc2wBoSa8xHjTKx5CS26t1f79JbQV6f5v9sA2ZjAd
         5xdnAnAqIfDZEFr018Tufg03jyeTFSu8nFbny4SjArUoIpETfoB7SKQhZaB/pxS8QlPo
         +F3X8HHefZSlOUlnxnLJW4L2MCtl9XzubnHOuNfkmGDELK0NVbJa3deQbVXPyeuVpSX1
         pFeZpuFGgKBkLRME/1mf34dc3p/6OIOvVMlj3zsn3YtTVsnZM+DIeIxVTc92MWAlCGpJ
         4HfQ4pL/ikNLlY/B+0RKYVXXXFXtZDQ5sjIS3KAI01UOGD4SVQuJPHb4pmRH7487DD5t
         xB1w==
X-Gm-Message-State: AOAM5328m/KXEAQD4lQ9opdMI/+WQID7XLdtJjhMhwnWPAwrZYp3Hzsm
        4BCBreTj9Pgvxg/SbEgBROQV7CM1hfy+Gv+q3/A=
X-Google-Smtp-Source: ABdhPJzK9RBfH642YXTmJwkhyiOBnlEbH+sPpWzDQXc/7hXYxhXUvUvoYlttgONmqt6mYZ0QN2OlC8hK1Y9BuX6sBaQ=
X-Received: by 2002:a05:6512:128d:b0:479:41ca:f07 with SMTP id
 u13-20020a056512128d00b0047941ca0f07mr6714230lfs.308.1654595919055; Tue, 07
 Jun 2022 02:58:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:51d0:b0:1cf:9a7b:1066 with HTTP; Tue, 7 Jun 2022
 02:58:38 -0700 (PDT)
Reply-To: robertbaileys_spende@aol.com
From:   Robert Baileys <mrnazy58@gmail.com>
Date:   Tue, 7 Jun 2022 11:58:38 +0200
Message-ID: <CAKTXsV=tEdE+SxeXiewFm-fmasPcs+C+Tkc0La7rqv1SXjBhag@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=6.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM,UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:12e listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [mrnazy58[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mrnazy58[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.3 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  2.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  0.6 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
Sehr geehrter Beg=C3=BCnstigter,

Sie erhalten diese E-Mail von der Robert Baileys Foundation. Ich bin
ein pensionierter Regierungsangestellter aus Harlem und ein Powerball
Lotterie-Jackpot-Gewinner von 343,8 Millionen US-Dollar. Ich bin der
gr=C3=B6=C3=9Fte Jackpot-Gewinner in der Geschichte der New York Lottery in
Amerika. Ich habe diese Lotterie am 27. Oktober 2018 gewonnen und
m=C3=B6chte Ihnen mitteilen, dass Google in Zusammenarbeit mit Microsoft
f=C3=BCr eine zuf=C3=A4llige ''E-Mail-Adresse'' 3 Millionen Pfund ausgibt. =
Ich
glaube fest an "Geben w=C3=A4hrend des Lebens".
Ich spende diese 3 Millionen Pfund an Sie, um auch
Wohlt=C3=A4tigkeitsorganisationen und armen Menschen in Ihrer Gemeinde zu
helfen, damit wir die Welt zu einem besseren Ort zum Leben machen
k=C3=B6nnen. Um mehr Informationen in meinem Gewinn zu erhalten, k=C3=B6nne=
n Sie
die Website besuchen, also k=C3=B6nnen Sie skeptisch sein es .
https://nypost.com/2018/11/14/meet-the-winner-of-the-biggest-lottery-jackpo=
t-in-new-york-history/Sie
Sie k=C3=B6nnen auch auf meinem YouTube nach weiteren Best=C3=A4tigungen su=
chen:
https://www.youtube.com/watch?v=3DH5vT18Ysavc
 Ich hatte eine Idee, die sich nie ge=C3=A4ndert hat: dass Sie Ihr Verm=C3=
=B6gen
verwenden sollten, um Menschen zu helfen, und ich habe beschlossen,
heimlich { 3000.000 =C2=A3} an ausgew=C3=A4hlte Menschen auf der ganzen Wel=
t zu
spenden, Menschen, die einen gro=C3=9Fen Einfluss auf die Gesellschaft
hatten durch Verhalten. Nach Erhalt dieser E-Mail sollten Sie sich als
gl=C3=BCckliche Person betrachten und daher berechtigt sein, ein
Beg=C3=BCnstigter zu sein.
Bitte beachten Sie, dass alle Antworten an
(robertbaileys_spende@aol.com) gesendet werden sollten, und erhalten
Sie weitere Informationen dar=C3=BCber, wie Sie diese Spende auf Ihr
Bankkonto erhalten.

KONTAKT-E-MAIL: robertbaileys_spende@aol.com

Gr=C3=BC=C3=9Fe,
Robert Bailey
* * * * * * * * * * * * * * * * * * * *
Powerball-Jackpot-Gewinner
E-Mail: robertbaileys_spende@aol.com
