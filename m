Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB0CD51A0E7
	for <lists+util-linux@lfdr.de>; Wed,  4 May 2022 15:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350311AbiEDNbr (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 4 May 2022 09:31:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350290AbiEDNbr (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 4 May 2022 09:31:47 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A75AB23BE3
        for <util-linux@vger.kernel.org>; Wed,  4 May 2022 06:28:10 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id r9so1225990pjo.5
        for <util-linux@vger.kernel.org>; Wed, 04 May 2022 06:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=zWZw5bSTf+aaR2H7auToZ1HDBKHf7cyNdU4URXWD46o=;
        b=mECw2MrPKUj1FyL9ak17buqe1JcmvwYo/Cr2+PbSvMYCvT40rmR6BUUd1ZmdBIzgg/
         65yIkXglwL4DKaqg/baPuXCv66rwmisZyutyF1P+2+VOFX7DKUTeDuEytNrcIclb4Z2v
         DCAcRa4RaJNKwMXCk1yyiVzvIzOVfukAEDpocDbpL1jPVJf+zMkGxsEweHBkfgbqvtmA
         JdfLVpO/b4WNKFkNTZSN6UrjQd3dOWTH/PTWQjqKi9yWWErliirpzi8PprZbIZwpnMVA
         RDY8MEKxR1woHokB63Qqo7Bb0lA/KdUydmW8As7ID69PdBOIXmjUVsJre+AUOm199jVX
         1l1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=zWZw5bSTf+aaR2H7auToZ1HDBKHf7cyNdU4URXWD46o=;
        b=WY4LVdeZzK4GqhYIxJU/NEjcW5cIXoBeUAhaCN5Ol8kF5nfjNV/En47x/omOwla2SH
         XqXGxo6gezCyeCnpZMTAH5cyFt+ELTox7ZlOKSpFSqi22r3+Y3vP2MyyzYMxyCoNix65
         o0vD4Ck1D6EV44afuRF1qqWP5LPLi4bdD4xtOBnB/MB/r3//Ceof+T6HGx3sMKwQCNdp
         h8kLpsLqqNHU1JkCvQ/8k902sgoP/+fm0riY895yFMqh7Y3MLKO6Z7Pm6H+ue83ioIoT
         9Q3mXlHQqpBuuaOljxRj1ZZRKCailXUW5GaFVoNq6JzYMdney9ihLtZKPa297m/x8cwf
         M4Fw==
X-Gm-Message-State: AOAM5322q7EjlMdrjacnvPliC38DTfKBE1+EiQu/mzQldBm5HQU+BTjP
        KbHYhQvfdFNwuFAW2kcwxae8q5Wd09LVgpXuyaQ=
X-Google-Smtp-Source: ABdhPJw9N4O61m/tizcEDk6EGohUe6EzLVA4DowYthGYCVCNP8jbQy3m6fOgUnxwMDiOLaXhT5+ZpQPRCKimzUShHi0=
X-Received: by 2002:a17:90b:215:b0:1d9:713f:54a5 with SMTP id
 fy21-20020a17090b021500b001d9713f54a5mr10303245pjb.233.1651670890009; Wed, 04
 May 2022 06:28:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:8597:0:0:0:0 with HTTP; Wed, 4 May 2022 06:28:09
 -0700 (PDT)
Reply-To: rihab.maryam@yahoo.com
From:   rihab maryam <hawademe728@gmail.com>
Date:   Wed, 4 May 2022 13:28:09 +0000
Message-ID: <CAEQA59NmD=YtCovroh9t5YHoRCDL3mNpRV2WwkcDgyCUmcUFiA@mail.gmail.com>
Subject: Hello,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
My name is miss.Rihab Maryam, i have something
important to tell you.Reply me immediately you get this message.God
bless you.you.Reply me
