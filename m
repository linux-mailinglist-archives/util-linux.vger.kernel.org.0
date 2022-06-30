Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13796561F8A
	for <lists+util-linux@lfdr.de>; Thu, 30 Jun 2022 17:43:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235819AbiF3PnU (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 30 Jun 2022 11:43:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236199AbiF3PnR (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 30 Jun 2022 11:43:17 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28F6995B8
        for <util-linux@vger.kernel.org>; Thu, 30 Jun 2022 08:43:15 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id r1so17357101plo.10
        for <util-linux@vger.kernel.org>; Thu, 30 Jun 2022 08:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=ia4Qj/+XBZr7J0AiQUJHFNutHgdSsJG6ZAHtnrbYATRYYnlxvXnN6hrytT/njTGUaN
         gyZVwAvHqfH0odTZILj8zmE0CIEMy3ZwY1WJwXNkiuJQq8KBMEIq4nIILrswslQUgJ81
         9CatXsFsCxZ4/wNhxybKMeSTzpoCZs5rvAvoxBWna2WaOy4gQKX4usYvMNOjOwyMjCGh
         owxYL32Kp1maRIkSxAiAe8CElMBKmydMaFpnoVv0qYD0M/3yahFgho3xDpud1eCvRY65
         gpRmOvYwe3m1cdx62KIpy0rx+E/zBkW9+lk8rS2bY/bi7FoVkButoxZk01/2/palzFlv
         yarw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=0GOaRqaPH/TtnmAffd7BcvDaQe3Ap6YgzufkmQvjZT2Y43X0YKITE0NX8TzIZdojqS
         QeTdHGfZT1MHaHmUWrGsoIPabWeDdLAk54TMF+yZ2v1Yt8EbWBEsXL2m4YWfOLy6GmGI
         GF59Zo3gKkGPTk2F/qStoxCtM3nvMMNCNR5ZsSJRXnRdE6Z53Xshbr3HTU8dtSGkNxGu
         8GjKL4YJDF0tY0sCIuS5ZPtmYESodTm3/LpDdApEuFwsLmhMW1PIdd6d0Mqli9UPGe7W
         ffmq+1Ax6YDpmY2DY3GmNiZoW3UT4ZVSzedAiFJjcSpAU+cXzzoRBarATkqulfmeR41/
         L72A==
X-Gm-Message-State: AJIora/iD5NN5FK3HofHyf8PeEOcss82CbHwA0MWkTxMmN9hx+asLK+f
        xSPSWOOzYu+eXD9DBrzOQjitrYY5JPnUJGUINg==
X-Google-Smtp-Source: AGRyM1vdjLH1yfgev2HYKtRNt1b40e96xyDV9iw3ra7E00RQZAx5LpVfR2TYZUAw0J9M1lH0Mrh06WFjgbAKER+XEGc=
X-Received: by 2002:a17:902:8216:b0:16a:6376:ef81 with SMTP id
 x22-20020a170902821600b0016a6376ef81mr16700812pln.2.1656603794591; Thu, 30
 Jun 2022 08:43:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:903:185:b0:16a:29ab:582f with HTTP; Thu, 30 Jun 2022
 08:43:13 -0700 (PDT)
Reply-To: mohammedsaeeda619@gmail.com
From:   Mohammed Saeed <mitash.m.patel2012@gmail.com>
Date:   Thu, 30 Jun 2022 08:43:13 -0700
Message-ID: <CANRWfSOzt9QtSEVm1O-iy6oatHHD170VpEZ_kqc2HHV3iNdcXw@mail.gmail.com>
Subject: Proposal
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
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

Salam alaikum,

I am the investment officer of UAE based investment company who are
ready to fund projects outside UAE, in the form of debt finance. We
grant loan to both Corporate and private entities at a low interest
rate of 2% ROI per annum. The terms are very flexible and
interesting.Kindly revert back if you have projects that needs funding
for further discussion and negotiation.

Thanks

investment officer
