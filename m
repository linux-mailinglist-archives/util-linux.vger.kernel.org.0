Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EEF9605825
	for <lists+util-linux@lfdr.de>; Thu, 20 Oct 2022 09:14:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbiJTHOa (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 20 Oct 2022 03:14:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230234AbiJTHOA (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Thu, 20 Oct 2022 03:14:00 -0400
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com [IPv6:2607:f8b0:4864:20::941])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88417160ECC
        for <util-linux-ng@vger.kernel.org>; Thu, 20 Oct 2022 00:13:30 -0700 (PDT)
Received: by mail-ua1-x941.google.com with SMTP id p89so8494060uap.12
        for <util-linux-ng@vger.kernel.org>; Thu, 20 Oct 2022 00:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a4CD1Jx2td4vXeqpp1ZdpcL33TVkin8nuZwRyIV7nlo=;
        b=PDBhu5A067JPR4az9mrDl6NtgF4BHu/4FmlImn6Up4MM3fpsv/U0arOOwaD8HAF8hN
         LbpPo+gNWjl25aoj13MpcbG+Q6941M6azYwa/aHpUQVJhHQMOvJCYBgT3vzehHh7djkJ
         4TuSKtDH/DRiVEzvQcDhZSM+Av4RsojB1v4XwEP75T8aYlTo/Mhtr9hPtGzrP3atyrPr
         BgNp8Ua9uxqooFIPjzhd2PqJ0hH/Nx7AhZjnBDGmAguPmoj9l55xrk9ORfMkQgZ62NJe
         Kjm5P+E2wFQblgsixif3o/aIy8Ac4Wt1F7gE47qzPj6s0HUzl3bp0jFZIFtTrP38rXiS
         AYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a4CD1Jx2td4vXeqpp1ZdpcL33TVkin8nuZwRyIV7nlo=;
        b=Ojd0pGYo5okYyhxed6XteMnQo8x6ZuXizk8bJ+0yUPiKTcHi66/7XWSz+bt6EPrspz
         2qclj1LGdpRpLhqOgi8wEoI5vMJbmJVSFh8eqjRLBJumN+GnGTRBKT1RneG7xHIcBjdZ
         E6XMceXjHBX1nJAIl5hViYLKqgtiJ/au31UAv+QalKWHuz2p4ktVZhAs1sew3Agm0cUN
         A92TkbUJm0DoTFsevbMUiz3xAum2cnBLeKNffdHMTyR9ONDnV+a588L/iJy/UYhBBjtL
         s89FLWkRssLblLqJeCDVWPtgcraMftmag7usfYFssaG1JNKMzfN4V5+xEE7vCWeXF27n
         mBAQ==
X-Gm-Message-State: ACrzQf0M3hC68UoP20sWMbX6TledqdNGtipRtN597NpwTm41E/Vd0Cy4
        +P+38MkYa17LKM91wyZbbukRmzhNtsSx0glqMkQ=
X-Google-Smtp-Source: AMsMyM680IMcjy/gXhORqQ4d1Sz4n/J9502aWbGM9WsjWeMrI04ZbCvbMuBc+laiO/UcvTg672qhwd917RDIg56T7Zw=
X-Received: by 2002:a9f:358c:0:b0:3e3:4963:3770 with SMTP id
 t12-20020a9f358c000000b003e349633770mr5797806uad.77.1666250008380; Thu, 20
 Oct 2022 00:13:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:f144:0:0:0:0:0 with HTTP; Thu, 20 Oct 2022 00:13:28
 -0700 (PDT)
Reply-To: golsonfinancial@gmail.com
From:   OLSON FINANCIAL GROUP <saifullahibashir289@gmail.com>
Date:   Thu, 20 Oct 2022 00:13:28 -0700
Message-ID: <CAMhAhR3ZbVDXd=WP+Aw2fzNmpgURLft3apyZO9CsgEDJM=hWFw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=6.0 required=5.0 tests=BAYES_80,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:941 listed in]
        [list.dnswl.org]
        *  2.0 BAYES_80 BODY: Bayes spam probability is 80 to 95%
        *      [score: 0.8853]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [saifullahibashir289[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [saifullahibashir289[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
Guten Tag, brauchen Sie heute dringend einen Kredit, um eine
Geldanlage zu t=C3=A4tigen? Ein neues Unternehmen gr=C3=BCnden oder Rechnun=
gen
bezahlen? Und uns auf Wunsch in Raten zur=C3=BCckzahlen? Wir bieten Kredite
zu einem sehr niedrigen Zinssatz von 2% an.
F=C3=BCr weitere Informationen antworten Sie auf unsere E-Mail-Adresse:
golsonfinancial@gmail.com..
