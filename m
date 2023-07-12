Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7AA474FFFC
	for <lists+util-linux@lfdr.de>; Wed, 12 Jul 2023 09:19:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbjGLHTy (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 12 Jul 2023 03:19:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbjGLHTx (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 12 Jul 2023 03:19:53 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 660119C
        for <util-linux@vger.kernel.org>; Wed, 12 Jul 2023 00:19:51 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-26309247002so3466505a91.0
        for <util-linux@vger.kernel.org>; Wed, 12 Jul 2023 00:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689146391; x=1691738391;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4jlL8pzL6NVZbuVjV4h5KPilkuQmPMJRpXcDIhZ2tX0=;
        b=hhy4n2UpfKQQqd0L7WnLUdZvQ6koWSYli750dQwXm78l7dYpN1z6Ij+NT48p0RS17e
         VBrkETkcQtYViO0oPyWNH3ajZVwEEsn5o/pl1rVPV3iDEH4MjO4LFHoCglQmjvKwVWKF
         GCIbnSu5T/a3CX0aipwAyyNn4j28ldchF5qVmzLd8o24weO7BrThDqTI7w/R8YPPt0/q
         iYgPtJ/C4mEXuDIvCs7gDX5hmRQebfSLGphCS5Sj6Jr12r968wQ0B7BEOpd4QiefjflT
         Gt+oCRE07R11tahk5E6iqIWIacAcqDCoqQKbMtngt5hLCQmqG3IVjqOrXB4yxwLU84ZE
         6vrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689146391; x=1691738391;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4jlL8pzL6NVZbuVjV4h5KPilkuQmPMJRpXcDIhZ2tX0=;
        b=mD8iKhmyWNSe9myDoJyU5GihGaKYz8RC9PvBMKK5HSzikx4JwMAIVyL/BY0E1ckaG8
         ot5VXpYwuFfD7hZoVxcAJ9e50/g7IAE/dcPbx06P/jMynsBPNC+0cHbdRh0w8ER6M2Hz
         FfeefS2n77QwGiq8L30RaPfHKuS8FOw79TPZT7W8helvYNw4YLSrBrUnpqFOgBTvUDkA
         BYJZbEqSLzLAqtODWkvaKR2MyjsLS6ac/ohQNIqt3Bf8fAVSkui1OMVrKmKNHb4DGLc9
         LL/XgmJkBPj3ns8BTKS19PGBuxGfek29+tJpVaiBC7pVZA7TQlJh26RcfRyAtbw0pb/u
         +AHQ==
X-Gm-Message-State: ABy/qLajwjUVFvRFmZLnNpxY/FQ8DzxtNDRqmyE7BXIhsyY7rudFleQD
        qdk+zfKMFkqgAZl5WWwtj6ZorULUYPJSJNyoDHI=
X-Google-Smtp-Source: APBJJlG0CJxaKOzZYSEW6UPsEufcEm9DYgbF9krvNW2i2CpchA1bEG+CKpT9LbEiUIHrZBik5BKszpFnMqYSeJMpJeE=
X-Received: by 2002:a17:90b:1d89:b0:263:41ae:8163 with SMTP id
 pf9-20020a17090b1d8900b0026341ae8163mr13253067pjb.12.1689146390865; Wed, 12
 Jul 2023 00:19:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7301:3c07:b0:d5:5f44:1840 with HTTP; Wed, 12 Jul 2023
 00:19:50 -0700 (PDT)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <ninacoulibaly213@gmail.com>
Date:   Wed, 12 Jul 2023 07:19:50 +0000
Message-ID: <CAL52byZhr=Ywr-anyQzNiFQzxXhuKqVDQd1j-Uc=w3A8VcevBg@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Dear,

Please grant me permission to share a very crucial discussion with
you.I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
