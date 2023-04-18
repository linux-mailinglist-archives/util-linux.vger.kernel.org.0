Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5BD76E5DC5
	for <lists+util-linux@lfdr.de>; Tue, 18 Apr 2023 11:44:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbjDRJoL (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 18 Apr 2023 05:44:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbjDRJoD (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 18 Apr 2023 05:44:03 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEEC12133
        for <util-linux@vger.kernel.org>; Tue, 18 Apr 2023 02:44:01 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id q23so62086539ejz.3
        for <util-linux@vger.kernel.org>; Tue, 18 Apr 2023 02:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681811040; x=1684403040;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=nOIu2xcHa2i1x8B0ttfcWRm0LhOZMFhJKU1sxVRHHZdspkiFLw9SXjH8+JU9exhE/J
         xltV/cU0ibaTynlnS5cO1eFkZiWmcScIQQZCt0C0lYKTOb4LZEcXPGNFy0FZQhXsXXH6
         /Lekpy7g0iE11qmBvHOu14Esd6U9uaz+Wi06DwdgYpDfxoGiO2rRFhAKYbO6jYWzd+3D
         BrHMfh1rJPpUavmdnXZh9Mw5L7HjEPYtYvb77Xaf2wkl06rwVJQnbWDKIUUzPnED1s1Q
         Jtdh/6dh3BUKM3LFuuw+dUPdm91EcoueKie5R6PWszxO0gEuBgzZP1GsKia0tPq1PuTr
         j6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681811040; x=1684403040;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=k7X/6xJX/5baZAcR362kjWi1nFplRj0JZPiedrE40pYfHH6zVD8pf6pkJsH5lfa3is
         aG6WUzw2uQAwatWtU4vcwLavf7rbFWc3XR+SlJujPanVA2liAMgrnXq/tMnt96rJ47Yl
         gFDFmPEsAIRlQ1fFP6SEFUX1VBRLD/Dc6YvMwiiaYd150kdhH1uI7lPrHHirg0UtvqsB
         1WytIKq7pz175XEBNZR1kQmdROJE4O12u494nbaw51gBVs8mpI3gfX8aYbK9SUKfK+eo
         Hgn54RK+78fI69rnD/wpe8aO10bpmF87I/yNS+ZMf/RlmGPhILlbR67nvFaWHTeSMb98
         L1Lg==
X-Gm-Message-State: AAQBX9d+XSwfJ8+DDkEVpHDNx3DSZHGONM3JLjNDIm7lXJqerVnRqnBT
        6P6K8YMjwg5Y5qAfM7pXkDMiWKF9epwGD+GHgsY=
X-Google-Smtp-Source: AKy350b5AeXI8mi0N9uY5w/zOkgj4PDeF9mQmt4KeucFLQoSPROMhOz+2tFOcb1ShseuTfMRQTVc1G6qdrh+S5FiCqc=
X-Received: by 2002:a17:906:298b:b0:94e:fdd:9319 with SMTP id
 x11-20020a170906298b00b0094e0fdd9319mr5206744eje.15.1681811039986; Tue, 18
 Apr 2023 02:43:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2f8b:0:b0:20b:a745:6168 with HTTP; Tue, 18 Apr 2023
 02:43:58 -0700 (PDT)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <ninacoulibaly330@gmail.com>
Date:   Tue, 18 Apr 2023 02:43:58 -0700
Message-ID: <CAJiCSoATv52Sv_9DYo5+q1_N8f41LktRXk8VSxSf035RgbV_vg@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
