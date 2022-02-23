Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7674D4C0C4C
	for <lists+util-linux@lfdr.de>; Wed, 23 Feb 2022 06:58:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237194AbiBWF7O (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 23 Feb 2022 00:59:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235775AbiBWF7L (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 23 Feb 2022 00:59:11 -0500
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B44BD75
        for <util-linux@vger.kernel.org>; Tue, 22 Feb 2022 21:58:45 -0800 (PST)
Received: by mail-pl1-x644.google.com with SMTP id l8so17712918pls.7
        for <util-linux@vger.kernel.org>; Tue, 22 Feb 2022 21:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=CmuNpHT3Ghu1p9u8qrzNES2PUlPivqE0AKA17621SPk=;
        b=lJKUM/S08bXPEnWz07HnzhhJZEhzHHqo+n1w0JPXvLWeVpCCvosdg+TTac77g+GQ40
         ArnmmUDhAtb0CzskWf4j8ckrR0ac00w+8eCLhdFrBWT1f9C+HuT26wRaeHcj+0vjG6vn
         b8L0vwve+OocnkJPNrS+cGTjWvYf1GO9jyOo/ndrQ9DefjqnEP1WAUXhRc1KRAT+B4P5
         d3Kqh1j1lW488Y7VAIUtxgu9ZdBxVj1Anh7yYUngXzxuJ3sPPOBtKz0SBY3fQart2Nil
         sx4Oh1Xux6GBG8o49RmfHcsL4oVVr3EKLexclHrYGFapS2ldrNkT10AEK0zXkmS5wRpK
         bldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=CmuNpHT3Ghu1p9u8qrzNES2PUlPivqE0AKA17621SPk=;
        b=Z+GgtY05Wg2bgWDnvn5/5iGrIFDr89bIifQW7aal+E81pqCc9dpfwge7ctdqlBIFTc
         E/E/HHtNoFPiAQg+C+CcsV1WDr4TN+tPjpTD1A3CK0AqqbESK9H0lgJgwe4v3yKMM4fg
         8fULKSRyTE7UCd6kLsKn6paSObV0Vny/yyamdKfoRSBXoaCKDh1qFcmMujGCv/tUhGcu
         2YzFq5X0ohpy1dG7bscCl79hTrSwnne+lFkYCEmeEyEbYMWYyNfEJYiTAtzW7lGxSOJL
         oHADj2UpiV+0PEn20JhwdUio3MOrp6Niam7ib388MqXrnSaKW/mOuDd2IPv9tU63S6tF
         yDEg==
X-Gm-Message-State: AOAM531oT4rxHH+Jx8sAVUToGVh6Be93CC3z57ht8stHHxRWdzZo9jHJ
        AW/lhSLnLaQYXP12qgzqyuG+8zxXmS5sDNRwhoMGSPjGpSPr9g==
X-Google-Smtp-Source: ABdhPJyszK2NtnwLIydgYVTxu9pC7uwfYCI/r+oktPNG0tWQ0vhngOPmo2VoOhBRWnEdfKgF2uS4JYGy2EcYkweRtR8=
X-Received: by 2002:a05:6a00:13aa:b0:4f1:1e5f:1c39 with SMTP id
 t42-20020a056a0013aa00b004f11e5f1c39mr15225572pfg.24.1645595914043; Tue, 22
 Feb 2022 21:58:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:333:0:0:0:0 with HTTP; Tue, 22 Feb 2022 21:58:33
 -0800 (PST)
Reply-To: wilfried.vogele@gmail.com
From:   "wilfried.vogele" <amou.music@gmail.com>
Date:   Wed, 23 Feb 2022 06:58:33 +0100
Message-ID: <CADycLwd6K-jO-cUK8bWF=WJKz7dkAdJQ3RKyAfVx3RLasrZpOw@mail.gmail.com>
Subject: Geldverleih an Privatpersonen und Gewerbetreibende in weniger als 72 Stunden
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.8 required=5.0 tests=BAYES_60,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:644 listed in]
        [list.dnswl.org]
        *  1.5 BAYES_60 BODY: Bayes spam probability is 60 to 80%
        *      [score: 0.7896]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [amou.music[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.5 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hallo,

Sind Sie in einer schwierigen Situation, f=C3=BCr die Sie einen Kredit
suchen? Ben=C3=B6tigen Sie eine Finanzierung zur Begleichung einer Schuld
oder zur Finanzierung einer Aktivit=C3=A4t? Ben=C3=B6tigen Sie einen
Konsumentenkredit, einen Immobilienkredit, einen Privatkredit, einen
Hypothekarkredit, einen Investitionskredit, einen Kreditr=C3=BCckkauf oder
anderes?

Ich bin ein privater Investor. Ich versorge Sie mit kurz-, mittel- und
langfristigen Krediten. Meine Finanzierungskonditionen sind sehr
einfach und der Zinssatz betr=C3=A4gt 3% pro Jahr.

F=C3=BCr alle Informationsanfragen stehe ich Ihnen gerne zur Verf=C3=BCgung=
.

Vielen Dank f=C3=BCr Ihre Kontaktaufnahme per Mail an:

wilfried.vogele@gmail.com

Mit freundlichen Gr=C3=BC=C3=9Fen.

Wilfried V=C3=B6gele
