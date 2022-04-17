Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A6EE50497D
	for <lists+util-linux@lfdr.de>; Sun, 17 Apr 2022 22:59:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230484AbiDQVBy (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 17 Apr 2022 17:01:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbiDQVBy (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 17 Apr 2022 17:01:54 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13256109
        for <util-linux@vger.kernel.org>; Sun, 17 Apr 2022 13:59:17 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id u18so15649679eda.3
        for <util-linux@vger.kernel.org>; Sun, 17 Apr 2022 13:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ITjbyzxNo5plQ2Y5eyoiRGvlPK6AKQ7yRFDBEq4v+Po=;
        b=HIU4y9CiMTxT8u2kP9VeLdNSLpVWUHSULZtEsolKNH1xlZoJLMIeFeo+TfdHstZJpN
         UOIjcGRG6QEPXyQPXtkpBkr6CkGtWI60eKxyzkNwaPPhstmqFLes7ncAsxrZ9H1wMVk8
         OnayteotHTd9Vrmntd82sFp2GU/i10e2zmi2DwroUEuxhcuNtmZooX1Dx1zPc6yGHoI4
         lOnfOmqrhWElF6eQhNHllBz1kW3yJy3EH4diILOGbI5tidsDrLEXJW4+HlU/HAqMUmp0
         vp2S/cHwzoHEJ1kNcBgX3KTXDM/5jQ2H2BVgy1B795RF9Lxi9dqPNw7PyjZqlh5iIMyq
         2RlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=ITjbyzxNo5plQ2Y5eyoiRGvlPK6AKQ7yRFDBEq4v+Po=;
        b=MR6CeirtbQkcOMY8jwU4FO4W+jCcBP+3CiKCX1qluYEyjIZlOB19/yJReebUK6vucn
         ZODDOfqZpZ//Y3CiJR6JPALUwkwM8utYTvtcoWbe/A7oDyEln1EZiA9r1nn9nQl1DJu/
         nEQGIUWjWxYF5YSeicktD2XxOPaRQfIdnOxMISp4F6+ohIe1pCJHGkfOBfDg+jS3t5yM
         5DrU+H3lqh/m37r8LoiZIXus1CAgHig7wvBGcAbAH+m5rKJoqO+Sfgm/wNUBypnDO2C/
         wn8bGNLrrhY3CmnPFnhtJqvefH55/PHe1aq6a1+lCPva6zOyquRn1121OHQ92WiO2vH2
         8L9w==
X-Gm-Message-State: AOAM5322x3+YiSCvQrMapVknLmjbLfB2dizHCDMl4w3gipskWm1e40L6
        Dv6XPmGbjctgeatPLxLf1LexJD/oRMTP2/bzHCqGpTUUbZ3pzg==
X-Google-Smtp-Source: ABdhPJxsVv4leXZ9ZZDszlyLecGCFRPNTkTgrwtRO58dS/EnTSyVj5a5Z6Xnky0v+8wuZFmtSfbgviQ8FgaSruElQyY=
X-Received: by 2002:a05:6402:2685:b0:41f:9a64:406d with SMTP id
 w5-20020a056402268500b0041f9a64406dmr9126812edd.343.1650229154717; Sun, 17
 Apr 2022 13:59:14 -0700 (PDT)
MIME-Version: 1.0
Reply-To: martinafrancis01@gmail.com
Sender: usmansanisokotos@gmail.com
Received: by 2002:a05:6f02:11a:b0:18:c28:5576 with HTTP; Sun, 17 Apr 2022
 13:59:13 -0700 (PDT)
From:   Martina Francis <martinafrancis61@gmail.com>
Date:   Sun, 17 Apr 2022 13:59:13 -0700
X-Google-Sender-Auth: 6uEW1NmczQirLUKuyqrfb6XAfao
Message-ID: <CAJL+LtXd5hHgxZDQ84g1L=UQqfrhrxJRp-Y--AxF2Wfq3_VY9w@mail.gmail.com>
Subject: Buen dia, querido
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        T_US_DOLLARS_3,UNDISC_FREEM,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:544 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5002]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [martinafrancis01[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [usmansanisokotos[at]gmail.com]
        *  0.0 T_US_DOLLARS_3 BODY: Mentions millions of $ ($NN,NNN,NNN.NN)
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  3.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  0.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  2.2 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
=C2=BFHola, c=C3=B3mo est=C3=A1s?.
Soy la Sra. Martina Francis, una viuda enferma que escribe desde la
cama del hospital sin hijos. Me comunico con usted para que sepa mi
deseo de donar la suma de ($ 2,700,000.00 MILLONES DE USD) que hered=C3=A9
de mi difunto esposo a la caridad, actualmente el fondo todav=C3=ADa est=C3=
=A1
en el banco. Sufro de una enfermedad de cancer la cual mi salud esta
muy critica, es por eso que tome esta decision. Apreciar=C3=A9 su
honestidad y coraje para manejar este fondo.

Quiero que hagas uso de este fondo para las personas pobres, los ni=C3=B1os
maltratados, los menos privilegiados, las iglesias, los orfanatos y
las viudas que sufren en la sociedad.

Comun=C3=ADquese conmigo inmediatamente despu=C3=A9s de leer este mensaje p=
ara
obtener m=C3=A1s detalles sobre esta agenda humanitaria.

Dios te bendiga mientras espero tu respuesta.


Sra. Martina Francis
