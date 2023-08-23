Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09D24784D98
	for <lists+util-linux@lfdr.de>; Wed, 23 Aug 2023 02:03:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbjHWAD5 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 22 Aug 2023 20:03:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231567AbjHWAD4 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 22 Aug 2023 20:03:56 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29E1D133
        for <util-linux@vger.kernel.org>; Tue, 22 Aug 2023 17:03:55 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52580a24128so6263847a12.2
        for <util-linux@vger.kernel.org>; Tue, 22 Aug 2023 17:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692749033; x=1693353833;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=WhKZxfXJhaTJrYJ4cQ9wpFIMwCkmwWA3ZYemNrv/DqOt58BJP8WA8qZ9z7bw2/kJ0L
         xx6C10hS+Ubt6LD0nCilHlawzDeVPCoA9aYUQZ6GcG6ZAn5JKVInWmT23866gRg4UQ9v
         sOM966lfX+fnQ7RYkJO8/AMbwQF5JZn/eceKjagqU388tc6TPyHbQBa21L3CehIKCaE8
         5crMY1lnhlSqgnY4D8Uxsl/3EMtQhXOGjxjo6U/spz7OzFaqJoH/dd1l8uZGCqVBk9Vz
         p/v4YsbzZiO2bVMIDqUJ4IHTTegmfmHlG6oFrKfjiZ8v+PBe2ah9m+0+++LgZbYKJZMK
         VzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692749033; x=1693353833;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=VTVzujGxUbOGINdjxA1txh9TDVx2MCnFwWXaZVcFgrz7AVXbzHTD72lGhtAMkn1XQI
         0hNXtUX2jXQkrTOV0Wc35v3E10Gh6qkykkeHkKiqVixcRodRM59lpJCXLRq1Ek99J1j2
         x4sLj8rxSewbsl1SXUy0YlWCrWQzOQRbiebPHx8uWitVBy+RR23lRLyIn1AT6ah1MYJj
         SgQMkIUZUBVkGL6GT2UPwuywOD7RyVzVyhwR98h1qOlBrKy2Ka/0lwPz2hQzcpgiXQ6v
         C6CMX1aa6nJMW4/b16JeWzs6M/dQMopOOIDlnanbPjRwg0DrPLfRa9a7St2IQDFKsqyt
         S4gA==
X-Gm-Message-State: AOJu0YzRNKYRAxID2umWfsM5bIfWDnaxd4CtSDXSFrwO8Q40LthpkEEQ
        Mda5N75F4AgNv2pB2pOnNjQTHKqw+0POFdn52AA=
X-Google-Smtp-Source: AGHT+IFbL50iQIo8T1obJ9wvOlUNUTM3xfcPNr+ZMrdl1V44eLITO/DhqL9LCyKieTJz7D+WnasoGwkN1Q5xH6Y3f5Y=
X-Received: by 2002:a05:6402:330:b0:522:3855:7ec5 with SMTP id
 q16-20020a056402033000b0052238557ec5mr9221221edw.10.1692749033470; Tue, 22
 Aug 2023 17:03:53 -0700 (PDT)
MIME-Version: 1.0
Sender: lahil0088@gmail.com
Received: by 2002:a05:6f02:c716:b0:56:2aa:baba with HTTP; Tue, 22 Aug 2023
 17:03:53 -0700 (PDT)
From:   "Mrs.thelma Ernest" <enltt1136@gmail.com>
Date:   Wed, 23 Aug 2023 00:03:53 +0000
X-Google-Sender-Auth: h8jT0Ds9-z2EoMgyy6uXc2ankNY
Message-ID: <CAPZEPac5JZ-+7qFyLhzUKHPeXZHvKZFZkCvZ4Os9iUeYo9MS9g@mail.gmail.com>
Subject: Hi again I hope you are in good health. I'm writing in respect of the
 mail which I sent to you before regarding a charity foundation project.
 Please get back to me if you have not gotten my mail for further details.
 Mrs. Thelma Irene Ernest
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=3.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,EMPTY_MESSAGE,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org


