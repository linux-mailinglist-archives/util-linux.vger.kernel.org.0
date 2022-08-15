Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E528A592FF7
	for <lists+util-linux@lfdr.de>; Mon, 15 Aug 2022 15:33:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231783AbiHONcm (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 15 Aug 2022 09:32:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232696AbiHONc2 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 15 Aug 2022 09:32:28 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2EA615718
        for <util-linux@vger.kernel.org>; Mon, 15 Aug 2022 06:32:27 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id o3so6344606ple.5
        for <util-linux@vger.kernel.org>; Mon, 15 Aug 2022 06:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc;
        bh=VReCwsN/r8zd7YEhiE290SZ/2en0pyTA7PFDH5oC1p8=;
        b=a2n0RD3ARWl74Wpg/iEdgU6k9uGOM//kr+ctxcm+/uAu910JKMPQfWi9Xpz/2zzMXG
         Piis5ayqgEPIGosTTz5r8oe1Zr8gXsl7ywGFjqnyqEHr3K/DZWU7R8MF3W0VCsvLOY3M
         5PialKpzycrgaHPstJ22qIWfy/B9ju9xaF/nlxBtc3+MVpx6CNaTtctV1CLJkXkhMh4y
         MED13F6eb3I3yURZ0B+xogXBCxvhENo04Jaoh84jh5ddm9hKwRFdAz3itvp1sWlKMUS6
         2jubMZqJgg99MDf9eR4F1Sf+qwVHcvjAUVcXhrYR6ZkFTy8Zbw9oeZ15oiUMtvaiQqjb
         MFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc;
        bh=VReCwsN/r8zd7YEhiE290SZ/2en0pyTA7PFDH5oC1p8=;
        b=5OYzjDQB4rE26owbQOQ9CigzxgWODWoOPz1mYsZGn7TG2WnmnTrRYEZMNF8IZWYYRg
         Lhp/OlQkXZd1umSxq76WsGsr4fmibK08MLlFKWT0Gdop0VhGivFEo2adZjc4pG9KJng0
         XHwAYhJX6ZQ5CkdWyreKV3w1H9jvEBUpQs/vW3r4qHap4B9CLjaRkbG8iibj08mjQTO4
         5D7fp6xp/6Rey2PP5nw85zhBJZblZ0uTCCK3CsG+LdoU4vXmCUyzA4Up6eU3/YKHlgnK
         Gh//dj7Fo2Q6TtlzOmhNPeeavQ7/vZtK4wtL772pA9uYWUlkf0q7A5F7pcKodtjo+eb2
         jP1w==
X-Gm-Message-State: ACgBeo3CqxnVLor3jZOdPJq6WjAjVWuMLXJ8kFxgWgU7x9UxKZjpANDH
        0I4AwPZ0IcDKGxCrsmf7v7TnWYqgOZ3aA0mW6yM=
X-Google-Smtp-Source: AA6agR5iXpZnbhnq4AuCYgAk6JxX5GwFMjqUyTTnXZ3C3b+HeIziso4P29nkWLO3TUeXiNDnJScGq7YMIkV/p2qnhIc=
X-Received: by 2002:a17:90b:4a06:b0:1f4:e4fc:91ed with SMTP id
 kk6-20020a17090b4a0600b001f4e4fc91edmr18998528pjb.152.1660570347428; Mon, 15
 Aug 2022 06:32:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a21:920a:b0:8d:44b8:6051 with HTTP; Mon, 15 Aug 2022
 06:32:26 -0700 (PDT)
Reply-To: tescobank.uk1997@gmail.com
From:   Tesco Bank <jacksonroberthaynes@gmail.com>
Date:   Mon, 15 Aug 2022 06:32:26 -0700
Message-ID: <CAExqwqfgp76J0NjfMm6gY=vd3=Qp3t0ps6T64gT4rx-5uF9ukw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
Hallo, ben=C3=B6tigen Sie heute dringend einen Kredit, um eine Investition
zu t=C3=A4tigen? Ein neues Gesch=C3=A4ft gr=C3=BCnden oder Rechnungen bezah=
len? Und
zahlen Sie uns in Raten zur=C3=BCck, wenn Sie m=C3=B6chten? Kontaktieren Si=
e
jetzt den Kreditagenten der Tesco Bank zusammen mit diesen Details
unten, um weitere Informationen zu erhalten tescobank.uk1997@gmail.com

VOLLST=C3=84NDIGER NAME

ALTER

LAND

TELEFONNUMMER

DARLEHENSBETRAG

Danke
