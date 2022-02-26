Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F23484C56C6
	for <lists+util-linux@lfdr.de>; Sat, 26 Feb 2022 17:17:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232304AbiBZQSY (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 26 Feb 2022 11:18:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232297AbiBZQSX (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 26 Feb 2022 11:18:23 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B80CC2494
        for <util-linux@vger.kernel.org>; Sat, 26 Feb 2022 08:17:46 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a23so16626837eju.3
        for <util-linux@vger.kernel.org>; Sat, 26 Feb 2022 08:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=6oHWX8sH3tohS1DPDLSFcUzMKYSwL6J87hX19yyB3G8=;
        b=gnjz3j5xccy5c6DlWjmy4MMo3uS2Jf+Rjji5sK+zSF9j6NPJkgLKA2RtIxQ1+WWr9q
         tzhHYNN5ZXxtA9nI8+C9s59+hrHlME+3c2zWyAVZtzsD/hONOinL+cEanOX9TweyzeNo
         gxuOmoNRbuKodzluh9GsFPqfhbGiISCl/WhI6GA4ZI5vQLfTdjuMc6DSvzX1s0+j8nst
         qw489gkN9Niwe294fSObkTwmOmMuJf7vlVd3Jfnf2X2bito2fNf/sd5oBneWSwUVR9fQ
         XL/1mvse+gRy4ciyPXM3OKEzs+Dir0khEVx3b+sZ1gMSxpEWgIEr//JdiNsLu8gEXwZ6
         DkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=6oHWX8sH3tohS1DPDLSFcUzMKYSwL6J87hX19yyB3G8=;
        b=2sxLCdxJKeLx5G2TIT6t50TTxUgSLMB/0UygrutFcFjRjIQnFb2Ez76GtWLmlEPdAe
         1nJuG/nlgErdyeZVaaxmHrC9M4EH4ZgaFVyebRgTPb6Pq0z5c3eHp4RDUUi0J5v0gqRb
         oycLVofSaToxNoTLa3vzvplma1AzpRg42CDQRWV0j9YnVHTg5WVR6tSRBtrdqd5rau4i
         JAMFvSzGGFGFShP6kTKxORXN2ihBMzXVvixyNh5y0YOH/CHZbksEQa0fs59Qgj8xgR1q
         UvCfdpu6qsrQwJOVhX5PZ6rmwcmPiKyaLE8h88EpnTG0qxh0KFAYSN7l+ZcAdd1IIj+2
         fmzQ==
X-Gm-Message-State: AOAM5328cKOpGZUsD8JM9VSuvKZgraLOr49oWJdAX/XrpsudrNnEPmp3
        oX9qrUDMtrZdJuWY06Aiso1JPBQJo/Crs74hiNY=
X-Google-Smtp-Source: ABdhPJy0lkdPb6+/pHcHqJsi2DG5kg/JXEjxWfwlIM24qg/tbnMwPcEPNhtjfJfC07R4C4dIRszQh8gJMeEoUCS9YVI=
X-Received: by 2002:a17:906:4b11:b0:6d1:ba2:5bdb with SMTP id
 y17-20020a1709064b1100b006d10ba25bdbmr9996809eju.61.1645892265178; Sat, 26
 Feb 2022 08:17:45 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:2006:0:0:0:0:0 with HTTP; Sat, 26 Feb 2022 08:17:44
 -0800 (PST)
From:   "Capt. Katie" <atimjonas@gmail.com>
Date:   Sat, 26 Feb 2022 16:17:44 +0000
Message-ID: <CAO36C=ATwUzYMOh9C0SA6s_oqHYdEPoR5NcDcq7aYwDch-4PoA@mail.gmail.com>
Subject: Re: Hi Dear, how are you
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hallo,

Sie haben meine vorherige Nachricht erhalten? Ich habe Sie schon
einmal kontaktiert, aber die Nachricht ist fehlgeschlagen, also habe
ich beschlossen, noch einmal zu schreiben. Bitte best=C3=A4tigen Sie, ob
Sie dies erhalten, damit ich fortfahren kann.

warte auf deine Antwort.

Gr=C3=BC=C3=9Fe,
Kapit=C3=A4n Katie
