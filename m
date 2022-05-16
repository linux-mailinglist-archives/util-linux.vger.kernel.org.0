Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CC9D528B66
	for <lists+util-linux@lfdr.de>; Mon, 16 May 2022 18:58:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245654AbiEPQ6Y (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 May 2022 12:58:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344129AbiEPQ6Q (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 16 May 2022 12:58:16 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8B9D2A26C
        for <util-linux@vger.kernel.org>; Mon, 16 May 2022 09:56:50 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id f9so1178285ils.7
        for <util-linux@vger.kernel.org>; Mon, 16 May 2022 09:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=cH+DYMlapv4WVCx0fQ79EQBOVs6bp7yfBl6Mjc6HFDI=;
        b=NHvt7lVlwBkYMiy7/EEAcaBKyTfoHKGfWOXu3UmapGe0yiCLrMeeSZH+jdrH/Hkdwi
         WORDDFzotyRDK2RbPaVy7AHuRmssxiVEwJ9RvmtjgGfHIcrnMPw4WOChILMFRkHdf59j
         PP6LM5UldCbL/LSeDH09jqcV7PbG9rGPXHOMT+lmEOKGeAMvQW+iaz3uVKOlDsDvqhB9
         5t2XftRCvA22tQORMXy+0w/SWvcuCnaJziZiG82owaN5TLqjmQLWng5O6LuAoln/vjz8
         k+TkVHcbC0gpp3fzRD3zkftXgpyTCYsVs5GD4TOBpr2gp7ZPzNy6qEFrYDEag2O5xduR
         Iynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:content-transfer-encoding;
        bh=cH+DYMlapv4WVCx0fQ79EQBOVs6bp7yfBl6Mjc6HFDI=;
        b=bDfE34XEG/4hs/78yxxfv8qRhORKPJoQ86Uwp6tGcmmZe7Y9otBYwI6MuWLmNLeZk6
         FSal52rUxFju7CmtHV8Ib8SMfaWzp5lowUup1hNV8c/kSZ1+FpmtM4w7odEkpPIM1/j/
         EvAHAyTFVPLSLThqz3BTc9RMQij7M1eiZ6dGodASaezvXAx5/wGCnrm/8eBi+cqIX0kr
         6ezWa2gvonKvn57/lMxeKLgFCDFfLGTOo339US2kaWiRzOKCSmMhkt4gG0+batxm2KU1
         I9ZCEE66851KTWV8MMySc/k4INhToKAuRzF0s1QrmlA16yL/dxkUIkCvV0XQeKGHf+/q
         cKvw==
X-Gm-Message-State: AOAM53139pOrf2gsc2IcBtEx43Iwp+R7oc3rhuZq4XVlmFlv9s4JyN2f
        qeDcW7vsWm4J4PmcliralUJnu9hHr5h48gWjmK8=
X-Google-Smtp-Source: ABdhPJyYZcdfOBORx8VXA42NLJjDuL8140E2bV0zT3k7FYiseVeb3wdNIdkQVyne0yJswInnEU3XLrfNX1SvXMhs+yE=
X-Received: by 2002:a05:6e02:1585:b0:2c2:5b2c:e3e5 with SMTP id
 m5-20020a056e02158500b002c25b2ce3e5mr9594379ilu.76.1652720210135; Mon, 16 May
 2022 09:56:50 -0700 (PDT)
MIME-Version: 1.0
Sender: noelinekasse@gmail.com
Received: by 2002:a05:6638:112a:0:0:0:0 with HTTP; Mon, 16 May 2022 09:56:49
 -0700 (PDT)
From:   Orlando Moris <kelvinedmond612@gmail.com>
Date:   Mon, 16 May 2022 16:56:49 +0000
X-Google-Sender-Auth: 9fDNIV6uqzqKptGyUlInUAokY9s
Message-ID: <CALZWmmwRNTgA1bnMOr0d=H3trd4MPv9=KnfvfOCPUz4efn3M4Q@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        LOTS_OF_MONEY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

WGluIGNow6BvLCBWdWkgbMOybmcgdGjDtG5nIGLDoW8gcuG6sW5nIGVtYWlsIG7DoHkgxJHhur9u
IGjhu5lwIHRoxrAgY+G7p2EgYuG6oW4ga2jDtG5nDQpwaOG6o2kgZG8gbOG7l2kgbcOgIMSRxrDh
u6NjIGfhu61pIGPhu6UgdGjhu4MgxJHhur9uIGLhuqFuIMSR4buDIGLhuqFuIHhlbSB4w6l0LiBU
w7RpIGPDsyBt4buZdCDEkeG7gQ0Kbmdo4buLIHRy4buLIGdpw6EgKCQgNyw1MDAuMDAwLDAwKSBk
byBraMOhY2ggaMOgbmcgcXXDoSBj4buRIGPhu6dhIHTDtGkgbMOgIEvhu7kgc8awDQpDYXJsb3Ms
IG5nxrDhu51pIMSRw6Mgc+G7kW5nIHbDoCBsw6BtIHZp4buHYyB04bqhaSDEkcOieSAoTE9NRSBU
T0dPKSDEkeG7gyBs4bqhaSB0csaw4bubYyBjw6FpDQpjaOG6v3QgYmkgdGjhuqNtIHbDoCB0aOG6
o20ga2jhu5FjIHRyb25nIG3hu5l0IHbhu6UgdGFpIG7huqFuIHhlIGjGoWkgY8O5bmcgZ2lhIMSR
w6xuaCwNCnTDtGkgbGnDqm4gaOG7hyB24bubaSBi4bqhbiB24bubaSB0xrAgY8OhY2ggbMOgIG5n
xrDhu51pIHRp4bq/cCB0aGVvIGjhu40gaMOgbmcgduG7m2kgYW5oIHRhDQrEkeG7gyBi4bqhbiBj
w7MgdGjhu4Mgbmjhuq1uIMSRxrDhu6NjIHRp4buBbiBraGkgecOqdSBj4bqndS4gduG7m2kgcGjh
uqNuIGjhu5NpIG5oYW5oIGNow7NuZyBj4bunYQ0KYuG6oW4sIHTDtGkgc+G6vSB0aMO0bmcgYsOh
byBjaG8gYuG6oW4gduG7gSBjw6FjIGNo4bq/IMSR4buZIGPhu6dhDQp0aOG7sWMgaGnhu4duIGdp
YW8gxrDhu5tjIG7DoHksIGxpw6puIGjhu4cgduG7m2kgdMO0aSBxdWEgZW1haWwgbsOgeQ0KKG9y
bGFuZG9tb3JpczU2QGdtYWlsLmNvbSkNCg==
