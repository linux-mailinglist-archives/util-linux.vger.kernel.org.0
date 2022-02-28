Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81F9F4C6321
	for <lists+util-linux@lfdr.de>; Mon, 28 Feb 2022 07:37:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232937AbiB1Gi3 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 28 Feb 2022 01:38:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231978AbiB1Gi2 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 28 Feb 2022 01:38:28 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34EA465FB
        for <util-linux@vger.kernel.org>; Sun, 27 Feb 2022 22:37:50 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id r10so13751590wrp.3
        for <util-linux@vger.kernel.org>; Sun, 27 Feb 2022 22:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=Rhm3LUMGroRGmwt3fWsNQI0TtXW7KCKtd0jNynOwVGOfvgIP1IRGFcM/M9P32NNZfn
         7scd1arDLR4MUuQsqvhkCuuh+Y7azFE0uSH2UiqJRUIYo9voMpTK8y8AHTuPD9HehdFC
         Jw/UFl4BTeZ8mRwFgcu69vl61U2aKeNf+Ev0tXMSIEcc4TCp4j1g4krKniuMllA67I1U
         3KHK7tYG9S3gdQ4bE6vE99bTRcreXJDLra0K+YzuFUjiE8Ik7PCP+gVjknk7ycn86367
         3Xv+rp2K4xmYY2j9FWczB5k1MAsuM7wiuYn+FnIG9L1Q89MvBhJ9c4nH1wyuZ7JNOZzf
         oClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=X/rbXlUW+PbESk/04RZcl/8/z+zFzijlIzpuAleCZgq3BDJo717uN0GdoIBe3J+OC3
         TZvUlxhrd6FWrDLHof4PR5YI7H+aEqzIepZWQZ84q8lsIMIrF8FYhZC/VlvR/W85ZwNi
         vGQUgjJB+fcQSYOItSh/fJOYikT4RLE2bjjBQk9C1o47kb24meAxF+uT/u3cYF10BuVy
         9NK2COypWcqE4OUzhfFQH9VryZjy2SpoRXTp5EXxaI5lJQE0lPXJ8t7ea4a2LV4N6aww
         13wja1NGYLx1EPhVCttPBZlwSt1Vn3wPLSF7eap/YmyzVC78NzKMGzsyiaxYU9Larb0O
         VFPQ==
X-Gm-Message-State: AOAM533TuXnz8oOI0P+9RAMV5wrliogluDMxLP2gqJ3iUFRsBuiJp2De
        prBXG/8+KNj2grfqtPKMlXE=
X-Google-Smtp-Source: ABdhPJz8aoLqjngHG8w5xa2EQgnZvhYFpCcsJ6e98FJaQGZeR75kNw5+nFezqgskLSUcQIOamAG2IA==
X-Received: by 2002:adf:f3c8:0:b0:1ed:9cd9:5bf with SMTP id g8-20020adff3c8000000b001ed9cd905bfmr14811626wrp.380.1646030268807;
        Sun, 27 Feb 2022 22:37:48 -0800 (PST)
Received: from [192.168.0.133] ([5.193.9.142])
        by smtp.gmail.com with ESMTPSA id f11-20020a7bcc0b000000b0037e0c362b6dsm10056571wmh.31.2022.02.27.22.37.45
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 27 Feb 2022 22:37:48 -0800 (PST)
Message-ID: <621c6dbc.1c69fb81.b0734.0676@mx.google.com>
From:   Mrs Maria Elisabeth Schaeffler <verahollinkv6@gmail.com>
X-Google-Original-From: Mrs Maria Elisabeth Schaeffler
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Spende
To:     Recipients <Mrs@vger.kernel.org>
Date:   Mon, 28 Feb 2022 10:37:44 +0400
Reply-To: mariaeisaeth001@gmail.com
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,TO_MALFORMED,T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hallo,

Ich bin Frau Maria Elisabeth Schaeffler, eine deutsche Wirtschaftsmagnatin,=
 Investorin und Philanthropin. Ich bin der Vorsitzende von Wipro Limited. I=
ch habe 25 Prozent meines pers=F6nlichen Verm=F6gens f=FCr wohlt=E4tige Zwe=
cke ausgegeben. Und ich habe auch versprochen zu geben
der Rest von 25% geht dieses Jahr 2021 an Einzelpersonen. Ich habe mich ent=
schlossen, Ihnen 1.500.000,00 Euro zu spenden. Wenn Sie an meiner Spende in=
teressiert sind, kontaktieren Sie mich f=FCr weitere Informationen.

Sie k=F6nnen auch =FCber den untenstehenden Link mehr =FCber mich lesen


https://en.wikipedia.org/wiki/Maria-Elisabeth_Schaeffler

Sch=F6ne Gr=FC=DFe
Gesch=E4ftsf=FChrer Wipro Limited
Maria-Elisabeth_Schaeffler
Email: mariaeisaeth001@gmail.com
