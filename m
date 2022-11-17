Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67C3B62E044
	for <lists+util-linux@lfdr.de>; Thu, 17 Nov 2022 16:47:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239613AbiKQPrh (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 17 Nov 2022 10:47:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239145AbiKQPrf (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 17 Nov 2022 10:47:35 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0176110FC
        for <util-linux@vger.kernel.org>; Thu, 17 Nov 2022 07:47:35 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id ft34so5968214ejc.12
        for <util-linux@vger.kernel.org>; Thu, 17 Nov 2022 07:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bp8XhHX8vCsgJ552WAvOupPjSfRXYVlDx8Jyt9KTX/M=;
        b=Qx0EHqIH4KRWP34jDFfB+iM1FUzNeNhbvTy96JB3uOa75bBRWvg8NumQ45bF3nKgtt
         5obkUT/3Dgl4JLPsUkYmmkQZvXhdNhR2gW7gjguSrMmkjaoA0H4fgjzwetaF3/bvogd2
         suWWMSbZcfRpcW1bhzxUA3GMpmncrN6cKqYECffa4Y7Oa7b2WZcWiHjvs3O378wv/MlX
         8dVp+q7mEm56jAZhJKDiEX1M64pI9xoFv9bZNdp1CGnO5JtbhJbn7oGOfBOhMZY83+In
         S8naHJ1lSichQ6kZrKclVS52fRh845oS/LOvbafWY5P02dr6vEaNWb+rDMdelSo9q7XO
         qW5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bp8XhHX8vCsgJ552WAvOupPjSfRXYVlDx8Jyt9KTX/M=;
        b=V6Koxjs6c6U/SzgWL6ta24dBkiKZDUpJRqrVCUFVoew5KLPPGC/PCck1HWxRVzORzU
         zOPOAp5Emqz3ZjITwNEvYGrU+WhZpNzJETUhWBcB2jvPbGavdGeHIOTeg+7K+mRKgrPj
         2A4dedkid+y53s+PcYDXehVoaoo/xCZxudZ9T1YhgTS7n2C8mSmkB9RbnRPEZ9Nfn4yL
         FJNh+xuvR0+vJVw2EDWWgPsAI3xOoJXDOrac6iX/Hxqa8LK7iTrAEC6UOuUCCtsD93r4
         Nu4cuWr0G3/pB8HurZxvwhwLhbJXU01aT7/Eccjp9E52TOUApwIw9Uv4oS139ADkZtj2
         4PEQ==
X-Gm-Message-State: ANoB5pl0hYCDoY4KH7i9nRHLFFbZj4q5DHdfseR+yP5YJAw8VfJ5fBZE
        2HtCeCXnCTO1YO6ad8V1K2xZSJpvlNaP6t8jJdQ=
X-Google-Smtp-Source: AA0mqf7spa4xoRt70+xPqmChgEmz929DtSScrMO6BkjJixS8dCXvP6IJPpZ95cPhPwCxSBQW3B29s6lJ8ukDPNRAxR0=
X-Received: by 2002:a17:906:1ec1:b0:7a6:cf13:ccba with SMTP id
 m1-20020a1709061ec100b007a6cf13ccbamr2602676ejj.432.1668700053525; Thu, 17
 Nov 2022 07:47:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6f02:c0a0:b0:27:5990:41ab with HTTP; Thu, 17 Nov 2022
 07:47:32 -0800 (PST)
From:   Chawla Manoj <attnahmed2@gmail.com>
Date:   Thu, 17 Nov 2022 23:47:32 +0800
Message-ID: <CAF2fbXYXYTKiuLqt7u9ujgWHSkzhYcxcTw49hxF5ff6jM7wkBQ@mail.gmail.com>
Subject: Kindly Reply
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
Hello

My name is Chawla Manoj, a banker with Emirate NBD Dubai,
I want to seek your approval to share some information with you about
a deal of which I believe will interest you.

please kindly let me know if you are interested for more details
about the deal.

Sincere

Chawla Manoj
