Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A591E6ABC29
	for <lists+util-linux@lfdr.de>; Mon,  6 Mar 2023 11:26:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230011AbjCFK0M (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 6 Mar 2023 05:26:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230257AbjCFKZz (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 6 Mar 2023 05:25:55 -0500
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30E74252A0
        for <util-linux@vger.kernel.org>; Mon,  6 Mar 2023 02:25:30 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-536b7ffdd34so174944277b3.6
        for <util-linux@vger.kernel.org>; Mon, 06 Mar 2023 02:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678098329;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vh7FN/ulAdnmY8O0LKz7bqpIFk4oOSQ9iCZ8VQ/AkNo=;
        b=XJm8B3ffNcEfjuQOOooM+qEAwt2zzUpVbSPqsQ2i4gdQc8ZCMxlUPBU21bo0A0ntgn
         Q52Q4NBJT5Q8YGhUgqyPNY10cNVg4BtFht+/CgPs3nmBCUNhfaYGI3VrJdpRsRv4P0OZ
         F+qdIeHM1abTKJLY9rF7X/6hcmwhNKamDaO2ivTk34trYaMcVTTkeHnkMVwsYKBCtNI5
         gByk2OT/xKpOoSlCpdFyrsBT36GgEw9Nx4cE8CQK3zNbFYGIl+DLAxGSafG+ACB9O6gH
         OQq3s8o44dJzOkxWMN4aLXcSgJrcJ61yq8o62oIrfZBFU+P4Tiv5aiEyvsUGp7iRekjn
         NCcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678098329;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vh7FN/ulAdnmY8O0LKz7bqpIFk4oOSQ9iCZ8VQ/AkNo=;
        b=foGJQTEd9IFeCO4OMME0x31FIproEQ+MMHIOxrSedOaF7sTvA89CSVSJqjBQGOrDia
         3TV+XsefdpOasI07n5RgwR5GIwf3LzvE7k9fTFpw3h29lDXAapaDeRIEJ7J/Y60AOsBX
         wwSQMmVmb4LdsFsAXOjce9Zi6RqlgJQRsE4K3QAmgfYQx95njsKbeZ0WbY4hKagYNjAi
         J0/bSuF+HhkfgBVUV8Aj66yhttMChSECqZOfH9ARPpJF41p+WSvXr0bN6cjaCloy5dK7
         xJxFuccXO0T7M1zYVKRYTFbsHdcCMLxjh2S5Az8W+ysO5T/ClymEiAjRRXXAYQ3kYWux
         zdAw==
X-Gm-Message-State: AO0yUKVHb8FZSHyx7/2hK+TnssqFdbLHjTUDx/1kBu46g5EvQCXFOoQ8
        BQH5L3O/OZk/WYVn9lWCCzOPQXMTTdtYR9yRjycutVt6E4Q=
X-Google-Smtp-Source: AK7set+HbxOG8fRWYdSd2Spe8YgeAHrZJbrwpyn/MCNLktCdTFpedrqR91TU0+OXtW6ZaqP/6B7py4FyO7omWVyWxwo=
X-Received: by 2002:a1f:1752:0:b0:401:f65:99c2 with SMTP id
 79-20020a1f1752000000b004010f6599c2mr6566336vkx.3.1678098308425; Mon, 06 Mar
 2023 02:25:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:ce6f:0:b0:3ae:930b:3e70 with HTTP; Mon, 6 Mar 2023
 02:25:08 -0800 (PST)
Reply-To: madis.scarl@terlera.it
From:   "Ms Eve from U.N" <denisagotou@gmail.com>
Date:   Mon, 6 Mar 2023 11:25:08 +0100
Message-ID: <CAD6bNBj=acZn6jpkuAhuMAxbq=prud3DvWJUd6YsqM0swBt35Q@mail.gmail.com>
Subject: Re: Claim of Fund:
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,HK_SCAM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello Good Morning,
This is to bring to your notice that all our efforts to contact you
through this your email ID failed Please Kindly contact Barrister.
Steven Mike { mbarrsteven@gmail.com } on his private email for the
claim of your compensation entitlement

Note: You have to pay for the delivery fee.
Yours Sincerely
Mrs EVE LEWIS
