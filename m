Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36A3D5B59FA
	for <lists+util-linux@lfdr.de>; Mon, 12 Sep 2022 14:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbiILMK5 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 12 Sep 2022 08:10:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbiILMKz (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 12 Sep 2022 08:10:55 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE72221E09
        for <util-linux@vger.kernel.org>; Mon, 12 Sep 2022 05:10:54 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id e18so12452237edj.3
        for <util-linux@vger.kernel.org>; Mon, 12 Sep 2022 05:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date;
        bh=uQA+aIRjxMq5Er54+7F1flIAXLVuG7LSZ6eBJwAUGBk=;
        b=YWFZTDjUDrzoMryq8iFtBUQsExZJ1PVvnfaaCEEvByr7jV22ba/ge1jz+vIsOB09aj
         N27kUuNz8sCfLJnKuM5IsRQLCXIe+s3wW9V8FeVaITB+9bTpt1mDgTjGiQ/+dqhgDW5A
         q02XO04VReGgWnjvkBYW8n1tGgQuzlm+g19+7sphHr/48SmvSDaLDg/sFb79BLdrltM3
         OaU8gtizO7e5D9zA8q5ztLwZVn753JOGT5DRrY+7zYakw18kfiRlAIdxm89j04g5CGaQ
         zRPHfD08WZbSgTNLsN2J2opcg//J+DnFrZg5Cpz9IrFHUUL9JTSbAnswfpsFL9RpdAxD
         8XMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uQA+aIRjxMq5Er54+7F1flIAXLVuG7LSZ6eBJwAUGBk=;
        b=3JLXL0ns0HnBRAl0y+p2K7y479z955lEQS8SF8GDG/2MAoGzFf5PmzQVGCKVDbCYOM
         ak170v3tzvgPnj19JCAdDF3tVWGIcdK1uZkWcbW6gz/lLj2amXkQ3ZhIrfuQvWfB5TA4
         cl7lQSA5zOcbDr9WPyCHdKwKDv37gKOuH38uAx9f5dw2Q0NbROHuajWuESxSha5ko0Vq
         PdyJlKzbqC0U9q/Sz2CaJ9b+bBGPYhleJPwXfe9nyUCY9RHPUg4APN7DKcSORQj5yMHy
         SqLAzcEPGW/LM1Kmo285tfN48RuOIbwARHd5/p4O0OMfmIhfhFJ0VSe2Dpl/YNvtxLWD
         jAyg==
X-Gm-Message-State: ACgBeo1wz6jS0VvpsdSzI/ngdMrMjo2hwenrMTnk4uTL9K8OqybJeFSd
        yk3cz+j3ihOszToEr4WxxyNvEL8cP8eX2pNBxwc=
X-Google-Smtp-Source: AA6agR6HY+2ay5HWiTH4EiabGAee1Gf6hL7eajU3KRI0foS30yuZtTXx0Gye0HL6ejQStHVacObjAKQiDLwVm19b2io=
X-Received: by 2002:a05:6402:274c:b0:44f:334e:1e11 with SMTP id
 z12-20020a056402274c00b0044f334e1e11mr18892998edd.304.1662984653399; Mon, 12
 Sep 2022 05:10:53 -0700 (PDT)
MIME-Version: 1.0
Sender: flanrodolphe@gmail.com
Received: by 2002:a05:6f02:ca18:b0:24:46bd:f03d with HTTP; Mon, 12 Sep 2022
 05:10:52 -0700 (PDT)
From:   Hannah Alex <hannah.aalex1@gmail.com>
Date:   Mon, 12 Sep 2022 12:10:52 +0000
X-Google-Sender-Auth: RYWD2EOydaEpbgc1bznLBtNcu_U
Message-ID: <CAPF29TKdWKhkRnBGtg_7Gdwmzi8ZGkxoMPhsS5G_p=N2z5GL2A@mail.gmail.com>
Subject: HELLO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.2 required=5.0 tests=ADVANCE_FEE_5_NEW,BAYES_80,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Dearest,
My name is Hannah Alex, I would like to inquire about your services to be my
foreign partner / investor and help me to transfer and manage my
funds by investing in profit making ventures like buying of company
shares or Real Estate in your country. I have a reasonable sum that I
inherited from my late father, which I would like you to help me invest in
your country.i enclose my personal photos,proof of payment of the fund,my
international passport,my late fathers death certificate and a four page
will from my late father.i am sending you all this so that you can have
confidence that you are dealing with a real person
Note: below are the major reasons I am contacting you.
(1) To provide a new empty bank account in which this money would be
transferred. if you do not want us to use your personal account.
(2) To serve as a guardian of this fund since the bank insisted that their
agreement with my father was that I provide a foreign partner before
releasing the fund.
(3) To make arrangements for me to come over to your country to further my
education and to secure a resident permit in your country.
Please reply as soon as you read this message for more details and proof.
Kind regards.
Hannah Alex.
