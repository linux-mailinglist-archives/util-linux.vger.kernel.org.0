Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD70587A26
	for <lists+util-linux@lfdr.de>; Tue,  2 Aug 2022 11:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236036AbiHBJ4K (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 2 Aug 2022 05:56:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231958AbiHBJ4J (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 2 Aug 2022 05:56:09 -0400
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED6B865DA
        for <util-linux@vger.kernel.org>; Tue,  2 Aug 2022 02:56:08 -0700 (PDT)
Received: by mail-vs1-xe42.google.com with SMTP id m67so6412083vsc.12
        for <util-linux@vger.kernel.org>; Tue, 02 Aug 2022 02:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=oYpJUyvzWcyaiGeQurh5cUNbvpjejUPYUOiR86g7qSvx2kvc+10888MBEQ0Wz34frM
         lHoBwmqtKNnBkySXRsFftvwi7ZYe9yh1VW/ylLE+OPDPs5p1FPX4DSGGAYXAQM95GGjW
         nYzt2kuu+AJtR3BLe3mzjHoRfQDt7wScptJKXbdBZybioLpHfCAMhI/MV1kvOOP6Pxt+
         9yNtRia4fON/LsEammH4HNJWCOwKEa01Wf5XiPWrcQUXFw6hosoiJAHs5t4TA06n33+b
         LRXcHE2RUXdX0WorbRUm/408Y7dB62kbDf1lNCvvGv3WrAsHMojdN4EyNRHDL/s19Ayh
         psUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=hTsgCTnHMtjuF5v/XYwU0bsD0GgqMPv2RQ5CdVqWGd6IK4y2aM+cswh+y5ZwbMPIJr
         2PfpYR4XQs/hi37cpt56iEMGZl0euMYkAByZzl3JWB/Pp1Lq2t3Tq7BbxKLBBpflnnjL
         QuwuzH6o8J3mqBD3iN3c2gXxMEU9WKDGje870VlSPkBtQmGa7TgAiqaScIGSqa8lEO9q
         4QF/gAj9sOggEZHJvVQhwzRHh/7T6a0F/kBKmqKL4kBsrD+HCFokajMqaLM2qzpTIMy4
         0QZogGC3km6GkGNYFF/xfuxHHcn/CMQE+pZ8ezFvBDGF6J4UKpm00KFK6cmzY6EWebbq
         3mVA==
X-Gm-Message-State: ACgBeo0+xAMHyqFUtq0Qr4WXUMnzKBohFMo2KoW6hG0SlB4vaIOcwg2X
        KuoFtbpaq32uqI8LjeX/oMN/s/yVWBxs1yqkPKY=
X-Google-Smtp-Source: AA6agR5ri5qEqfuhWZWWSnb29YFoYONNYD9eDBASIP0FYCwvKNAnjC6E4goIkSp2ivW2tHDSuPX6LHVIaZ2lqA7eFAI=
X-Received: by 2002:a67:ba03:0:b0:385:b608:300d with SMTP id
 l3-20020a67ba03000000b00385b608300dmr3051661vsn.33.1659434167941; Tue, 02 Aug
 2022 02:56:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:beda:0:b0:2cd:f4a8:c08d with HTTP; Tue, 2 Aug 2022
 02:56:05 -0700 (PDT)
Reply-To: mohammedsaeedms934@gmail.com
From:   Mohammed Saeed <bienevidaherminiia@gmail.com>
Date:   Tue, 2 Aug 2022 02:56:05 -0700
Message-ID: <CAHyTKthyz6ZfxJDYi3+WsOr4GaJNjDFG=cBmvM71LiHL=ON3ww@mail.gmail.com>
Subject: Proposal
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Salam alaikum,

I am the investment officer of UAE based investment company who are
ready to fund projects outside UAE, in the form of debt finance. We
grant loan to both Corporate and private entities at a low interest
rate of 2% ROI per annum. The terms are very flexible and
interesting.Kindly revert back if you have projects that needs funding
for further discussion and negotiation.

Thanks

investment officer
