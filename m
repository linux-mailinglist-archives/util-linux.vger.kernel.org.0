Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BD8F72E233
	for <lists+util-linux@lfdr.de>; Tue, 13 Jun 2023 13:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240868AbjFMLvX (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 13 Jun 2023 07:51:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242294AbjFMLvM (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 13 Jun 2023 07:51:12 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6FE6BA
        for <util-linux@vger.kernel.org>; Tue, 13 Jun 2023 04:50:46 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-30c4c1fd511so4951535f8f.1
        for <util-linux@vger.kernel.org>; Tue, 13 Jun 2023 04:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686657045; x=1689249045;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=IguuuSxjA7LI/W6tgB/uQMDBDdLlB3UH5dyAdCbx5+UHEeAWGtmHou24cX7ikDoeef
         peBbMNPXCWO8hzVJcQK9whSwxVB+ID9VW9tl4fmsQyXvUNbXc3tssJrpH/zs1syGQoQ+
         uiKsdcRK8Zm3IyVsT4xpKEXah8+9xDK0/NAPtlEYdmboqJyJqGVyCTh8i7u1mYeUEgp/
         wKd1RMRvvL74SdvzAMEeZxztzbrZNy1nuX7+k/kpouGks/ppWN2BmLaLiWz+9VmFXUOv
         EetFWJ1vhTxf2uyhE1/+iaKhDCoufKOezZi8AjYTjk9XKPLkuIkJH7N1e5V7DXFEi+ST
         3sQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686657045; x=1689249045;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=d1gpf1LnpZ+8p7DNDJ1EZMigE2RA3AwZDW41nkNldBAeloh2QDHKa1NtPS3oqnOOKi
         qBwHTu8kw1dWHuO0XrQiAWbP9Q5rhj1UyazAVmTBpPLFrxIVrxEXcQ3eOGqdtSniU10h
         MptOBXCNjZx4A5IErDz55k3K74UZcmD6wgkwZpKnqvjsDfKs9pjSb+npmmFTYHxUnY60
         9rhsHuQiZDdoHFHlsTX39XXpD1z4ZbfVRbAecUYvAOddfKrEF0A5jLScITfhJizq5seS
         x2emPovhABKPJ4GoYOiDc0I+ZCWsvk7EteM0+uQ3s8qAIjkCbJdqaHGMDWUCAgYC+Xhq
         PD6A==
X-Gm-Message-State: AC+VfDxz2MBlrMOAvaR1ZWzjfXiT9WCCmDnJI0rsP+08w9pXZR7ZJQWm
        5vf5hXUpHw0ClN/9cnXkrX3ie8ckQBP5KrwZNB0=
X-Google-Smtp-Source: ACHHUZ7fZlABHMgJib4Kdd8EhHJgu8QI/LEfFkhe2koR6Lh8iUdEb2N2lBbizydhfLXEp5z0QbG3T1FoNj1uyvnGpT8=
X-Received: by 2002:adf:ee4d:0:b0:30f:bfa0:920b with SMTP id
 w13-20020adfee4d000000b0030fbfa0920bmr4951975wro.36.1686657045022; Tue, 13
 Jun 2023 04:50:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:f64c:0:b0:30f:bbed:3522 with HTTP; Tue, 13 Jun 2023
 04:50:44 -0700 (PDT)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <ninacou041@gmail.com>
Date:   Tue, 13 Jun 2023 11:50:44 +0000
Message-ID: <CANnT539CgR-Pt=BxFPPwGb18heaFSnbCNRE4MjgZcU35=8s9_Q@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
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

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
