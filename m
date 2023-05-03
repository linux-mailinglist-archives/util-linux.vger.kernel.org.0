Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 136BA6F55E2
	for <lists+util-linux@lfdr.de>; Wed,  3 May 2023 12:19:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229818AbjECKTi (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 3 May 2023 06:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229940AbjECKTf (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 3 May 2023 06:19:35 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8103A4C21
        for <util-linux@vger.kernel.org>; Wed,  3 May 2023 03:19:23 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-3313fe59a61so3126615ab.0
        for <util-linux@vger.kernel.org>; Wed, 03 May 2023 03:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683109163; x=1685701163;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J1xMKxCr05GQ/IvQ5d0MtvZEdnYdN8HEweSqpMhF9AM=;
        b=RlmX5P+AWf9pwELGFY+Je9h8Au/T7kiXjoLbkNdT5RJ/Y35vFhArwm+x2TLBgp6IYS
         0ywDNEGolMw/rPDGJaa70bTOjcyDF7b3GEXwV92FRp7h3xSz4a3zg4uhq3i4dL2Z0oKp
         Fna6BZnm2NUjY153floHxPBfHeVP547SZPVu6b+LyvTlTbEncrFfQqm0hQh+cqcsezzl
         dLil4Z3VOtrgDenEkl/kHmBjwEYOCXXIRxocDCTJ/n99Jta3RJm1RBIswGjIoeWY8c+a
         PA0CqAQCow0ZuRQx93fmy3bpT+4sbtM1Yaepu0PhJCjqacDuAHZq4z422RmyxrRTbCDE
         5ONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683109163; x=1685701163;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J1xMKxCr05GQ/IvQ5d0MtvZEdnYdN8HEweSqpMhF9AM=;
        b=K0D+RKwv0K/L1OEmEWyQE1BIeCKHiapy6+Qn1kyrLiEonKCqSZL0t9UIYZVHJwXZRj
         P965XmWA5V6F3xOrtnD/OQWtsMaRLGWnj4rXNfDhVgesVQpcd+qtKfKHniq2L9hYTKxJ
         HjKTMIGbCEfIuwdwasZFog0dnWsC5tbhMsXWXrKlNCgTPk9aV0vWqOzwbvwhzjidyypP
         PcaPereElA8ObbHls1J8foqLcSLBwq1y038wysJSQWC7ViMF/ytpSjszdgRFTwYLqlmn
         klGmzIshh/wgH0Dzu39v9VmjSqQszrIhMCjV7/hhaEsG2rmqWDSByGiRmdtaLL5YWOD5
         DAng==
X-Gm-Message-State: AC+VfDzS59WqVOGc2C1k9cOeeI31dc31BYNLgHW6h38dDSQVerbMH844
        bOK64zuG1wP59OPaIGg4sWDA4NVsWT4eu2mNN1I=
X-Google-Smtp-Source: ACHHUZ6O/uWRmk2ikRN9XAFGtxLp8q/roz/ZikaaAcH41VapFbZoE7kqaeA4UAR5+AB+nbobF1Y2vGXK/aEpqFpIOf8=
X-Received: by 2002:a92:cf04:0:b0:329:5ef1:807 with SMTP id
 c4-20020a92cf04000000b003295ef10807mr14181779ilo.14.1683109162841; Wed, 03
 May 2023 03:19:22 -0700 (PDT)
MIME-Version: 1.0
Reply-To: akivuga@gmail.com
Sender: ananiawunyo20@gmail.com
Received: by 2002:a05:6638:24c9:b0:40f:6469:8f1 with HTTP; Wed, 3 May 2023
 03:19:22 -0700 (PDT)
From:   Akiva Young <akivuga@gmail.com>
Date:   Wed, 3 May 2023 10:19:22 +0000
X-Google-Sender-Auth: QDS9RndIxz9Eu4vTSGAHnSkReFk
Message-ID: <CAFQEr+uK+p6-YJ--7H9izg9L-NEeuydS6FQL8dbqV9dPK4cR2A@mail.gmail.com>
Subject: ? Hi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

I sent you email but no response from you why??
