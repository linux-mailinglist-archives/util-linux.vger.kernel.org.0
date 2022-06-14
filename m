Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3950254B235
	for <lists+util-linux@lfdr.de>; Tue, 14 Jun 2022 15:22:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232220AbiFNNWH (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Jun 2022 09:22:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242238AbiFNNWG (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 14 Jun 2022 09:22:06 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 844463BF84
        for <util-linux@vger.kernel.org>; Tue, 14 Jun 2022 06:22:04 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id gc3-20020a17090b310300b001e33092c737so9026871pjb.3
        for <util-linux@vger.kernel.org>; Tue, 14 Jun 2022 06:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to;
        bh=GtQeteckCTN+jWZLXcLUrrplJsHDunivZAMWJ8LeNrE=;
        b=Qee+Lyh2iEWbDWsBkhuxZYf/tjUvorBjLDuSz/Je6gDxEkDCs7fwFYh1mJK/FqGeFQ
         oPOJKdj3GF/JpZARlvAmq2oaitaGBSBR0e7JhAiKdUSZSOHW4V5h347yDHuMO0gSOJdg
         ugtDOOdHymJr2+P6IbQeXopCm5/sV+APdRQEy1tj/LLHepEjqdjvXiLbi+9l0IHrjcVF
         F6ga2F5xr/gx2LlH/wUB4qOYI9ZmQICC3IqLlgHzOi8b+1fogtAA1XVRvTRrWihYyrMv
         QUwsCXBSlzc9solq07xGVLWJ+gEolZ4LEUSldmy4bOupnNmWM/qZv1PPmfkkoanHWklT
         yMTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to;
        bh=GtQeteckCTN+jWZLXcLUrrplJsHDunivZAMWJ8LeNrE=;
        b=KdE8L5N+OOKRXm1BOdisZnnR8YJzE7kKDaLZhuMQM0uZN03j0Vc8A84Kcdz4JGO8dQ
         AOrU8SNC9CKk7j2kCIdlbWOHsfjTn/OZhfScqqv5vQgKFXpCYIWkBss7JXKaUQ02q/jy
         U3yurpN+yQsskL+ga/zczDPMX6kkgKraRFRbYwqSUDWOs6LmfzoD9n38PFh1KNn6TpeE
         232c/4Kin7LIlGqps8R5H8C/aH1eI/G2w3BOIW1+rgmExZtKlvaQTuwJqYzSFm+3P7ZH
         NrbQM/WnaWHXg4tdJXPxP3uzuQnMaP+9eT54fjxlnRfPyGbwvn2bGa3EocKukTOPjNuy
         QxTg==
X-Gm-Message-State: AJIora/5JqTpEHGThvAlMQBgRQJKrEc3f8cskfrombE5s5S3PbtrQEAu
        5TtfcRfcDfGwXZuW6j5/ouCe/3l7SDxcwGj4CaU=
X-Google-Smtp-Source: AGRyM1uJWy08iB64KYds6StiD6Kl0OfTfp/sCUzrvpOvB6Aoge7D5+nNE6OJewkWukWruUnJPa8jzoXKcvUmxoUplXk=
X-Received: by 2002:a17:902:d5ce:b0:167:6c02:754c with SMTP id
 g14-20020a170902d5ce00b001676c02754cmr4554719plh.135.1655212924012; Tue, 14
 Jun 2022 06:22:04 -0700 (PDT)
MIME-Version: 1.0
Reply-To: jerrydosso@hotmail.com
Sender: peterjoe25689@gmail.com
Received: by 2002:a17:902:d402:b0:163:d764:2d1c with HTTP; Tue, 14 Jun 2022
 06:22:03 -0700 (PDT)
From:   Jerry Dosso <jerrydosso21@gmail.com>
Date:   Tue, 14 Jun 2022 15:22:03 +0200
X-Google-Sender-Auth: tXusJn5dDMx7X4XPyBbjQk4fJIo
Message-ID: <CABFre677KzUfWZoKGX6Dp6WhSMk6NBBvOWNqt+EuU_OchmwL1Q@mail.gmail.com>
Subject: Mr Jerry Dosso
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
My Dear Friend,

Did you receive the message i sent to you?

Regards,
Mr.Jerry Dosso
