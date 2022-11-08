Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 575F162121C
	for <lists+util-linux@lfdr.de>; Tue,  8 Nov 2022 14:16:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234324AbiKHNQT (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 8 Nov 2022 08:16:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234391AbiKHNQS (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 8 Nov 2022 08:16:18 -0500
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05EF927FC6
        for <util-linux@vger.kernel.org>; Tue,  8 Nov 2022 05:16:17 -0800 (PST)
Received: by mail-vs1-xe34.google.com with SMTP id q127so13579742vsa.7
        for <util-linux@vger.kernel.org>; Tue, 08 Nov 2022 05:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
        b=HQYv0aYVcrVD7dTfLHiwqiyU1Ewi+fpfIgYcr1IF45hfYcM1429Paqy0PIXeCc1WcX
         xxZckUGhGSoEA6z6AavQw5Kd1juC7TUoppSIH4vxbWTwkjV862T2OHd5BoOWfWeRtGfK
         BikU7QfvCFxja8spS+Q534X9PJSCE3a/woPBdV83Po9VcfEq3JdBt8Fi6HAQ84SXzJIC
         F/WEfRtYaxhlv/U93DEQQu5saU2AFYxDX8P6W245ocV1MLSfofD1+2qVmI8oliQHdCn6
         iGiWfAzTA2F81yllatiEKGCmiK2hgo8drCiOv7ltoZIEpidwzBRYS1gy19NItPPGV2CC
         lT1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
        b=yyGKDkNXV/uej0FwrrMO43wNZdXpy6PJ925SNEfuyscglspU5Lt6s3GR3QRFp5rIKM
         8NHtPbFuoOtgN5WHqkI5C8JdMD5PNLWrSBXUPfQx97eJhBqMgvSReeNrm/YeGWMxGVZQ
         GatJ2ZWKCmD2tcTl4UQ99X6TQ8NiODIdFWxB9j5Rg44JeOk7UUpoz7LQtnAamKSCuoxL
         JSdpgJJ3jtPGQcbjmIlueyB92jz5o7giIrbejRMClQXU2thXnsNnT+1ccx4P66Fv2KkE
         MvoqIrFxfmGpva2iHiL8NvUJPX5Akn3Wp50wTi0dFlMfwawTi8uXxi0GrngwrVEhhZOl
         ymXg==
X-Gm-Message-State: ANoB5plzavqHsxuN1MEq8ocXhb1b4ti0/ycl2NfrE+kodvhfsVsUnZMs
        BWlz5K0NkoSlOF/8evhUsBNWoSI+9EOGztg7eS0=
X-Google-Smtp-Source: AA0mqf6OWSpYN5joTcrjWzbjLFRTkFvOGOQYMqLAw19ZXafFKlhFL2VSvtg2FZee+h7TmSNwiCH8mRTMHbqwYlFoudk=
X-Received: by 2002:a05:6102:c6:b0:3ad:fb02:23cc with SMTP id
 u6-20020a05610200c600b003adfb0223ccmr5618534vsp.33.1667913375790; Tue, 08 Nov
 2022 05:16:15 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:dd4b:0:b0:325:15fe:cb34 with HTTP; Tue, 8 Nov 2022
 05:16:15 -0800 (PST)
Reply-To: mr.abraham022@gmail.com
From:   "Mr.Abraham" <davidkjn1@gmail.com>
Date:   Tue, 8 Nov 2022 13:16:15 +0000
Message-ID: <CAAfY6syt4ENL-sSHGBUSH9KR3Mdf9QhyWBxQu7CezWQhbk0niw@mail.gmail.com>
Subject: Greeting
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:e34 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4991]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mr.abraham022[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [davidkjn1[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [davidkjn1[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

My Greeting, Did you receive the letter i sent to you. Please answer me.
Regard, Mr.Abraham
