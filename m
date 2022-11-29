Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEC1763C933
	for <lists+util-linux@lfdr.de>; Tue, 29 Nov 2022 21:22:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232988AbiK2UWH (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 29 Nov 2022 15:22:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236248AbiK2UWD (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 29 Nov 2022 15:22:03 -0500
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CBC82662
        for <util-linux@vger.kernel.org>; Tue, 29 Nov 2022 12:22:02 -0800 (PST)
Received: by mail-ej1-x641.google.com with SMTP id b2so20280805eja.7
        for <util-linux@vger.kernel.org>; Tue, 29 Nov 2022 12:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
        b=ecfM1Z0NmIokKe+284HhHgYbjCE5Jovv6Zrz4NpvcWTSn2UhCVFKlxHKbX7zHiSkE6
         x/+JMxcNt8XFmBXjgb56RCI2iQ+OvZPmIqS4qhkNq/Hhwxb6lZikH98OaDyqgv16NZMi
         8cUDqEXFcoCbMCf/C0l3NlsR/JS6g7Rr5QquuUojVr83WPnhB9gKY06JEzvWnbe40c27
         LPQ4Xp1FVPqukGu5gND4V/K3svHgO42gkHmD9gzxHdLXyrc5mZtLQLF9k1ZQC27UuMcf
         gWWmnvb+YrvnA6Hvq0jfrQaKqNSu+MGJZUocDQK7qo9tBHM50138Mzbei1dQ+aZPrNio
         ZErg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
        b=cEmP/6Lh2LGGgMuXJi2wwLtHlMUZH4USUb6R1ac0OlPhauBrD9IT7tQ99THD6arAFh
         oJ6zMUy2HWQwtoZQ1kIws0WIlGYZoeGuDl/YhTQFs7m9kqzUAi/amuVebhQlB31vqkc0
         EsKX2xXmM/Ev3SSLgwt+VL+NKmXF+8Y6Xf4LnxicrDRf7gTkR/BtB26rh+PZ746kgOGJ
         H5qFaMitmiMkliJ8Ml/Bm06pKQKbX5c1sRvp2xmnDelkXpwgfv/M59lW+fA8cksUIxgH
         yzl11ZmvoiHlPFX5aX0vM52UVdcZaMuqYOtf63kVwv/EwGIyW/Sysi2NtoSNcYJHKjb0
         o1HQ==
X-Gm-Message-State: ANoB5pk6JWNFz5uNIo1FCBRrBKD4dvvL2sJ7AUSlh6YdG/PGOW8zVhys
        JBWvUv2W+qmyIbEEMESTBPuWQ3snlchiU6WVuJ4=
X-Google-Smtp-Source: AA0mqf6lTjPiBcS9mCbsKmYw1xdbupKmp7YMQLanUXgUwALrnXR/0XB2gDuNMJHwqoQfM5MXESkwF2TaKGA96Y4XeVE=
X-Received: by 2002:a17:906:2cd3:b0:7bf:b675:ffdd with SMTP id
 r19-20020a1709062cd300b007bfb675ffddmr10188720ejr.610.1669753320910; Tue, 29
 Nov 2022 12:22:00 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:bfe7:b0:78c:cad3:6a2f with HTTP; Tue, 29 Nov 2022
 12:22:00 -0800 (PST)
Reply-To: mr.abraham022@gmail.com
From:   "Mr.Abraham" <chiogb003@gmail.com>
Date:   Tue, 29 Nov 2022 20:22:00 +0000
Message-ID: <CABa6GnnNP5fuHfrt6aDfshOLuNZeD_t++XM4Hvxwscr=qXOSBA@mail.gmail.com>
Subject: hi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

My Greeting, Did you receive the letter i sent to you. Please answer me.
Regard, Mr.Abraham
