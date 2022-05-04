Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3314651A151
	for <lists+util-linux@lfdr.de>; Wed,  4 May 2022 15:49:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350700AbiEDNxG (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 4 May 2022 09:53:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241528AbiEDNxG (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 4 May 2022 09:53:06 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B77632EFA
        for <util-linux@vger.kernel.org>; Wed,  4 May 2022 06:49:30 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id k1so1464535pll.4
        for <util-linux@vger.kernel.org>; Wed, 04 May 2022 06:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=t+U9Ec/v6JWTqS+Dmkp+3P0MNIcWi2cZjk5pWHZUQTM=;
        b=KiE1Ca6QNrZfxQNfWTz2fa/7Znoyu3CsZrROBlioJvTTHbplNGqdZ3SDLwqmhnKPg4
         KxEjB9bVnyS/RTE5+nNqsq42PanoOfEboknTpUphjn5ovClqeEzbEOdUyTea7078u8AW
         M3jrj+3+stmdD5L/Rn5uV9yQLM34NUI9dvWN5BNmWbTjUUEMkOpHbsWt/vsUevWGy9Q5
         7NlrR+/hGdg6uSVeaiywC+DbSG5wB+JIaxk6tfmNBTtQI7+Ot1buTKnDdrpib3S8g8r7
         oxiBzefFvxJdZPWtWGt+hQMRu+irnJY5BKvEwgfXKOujNeYpfgHm48S3mVhKO/BfMD04
         KUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=t+U9Ec/v6JWTqS+Dmkp+3P0MNIcWi2cZjk5pWHZUQTM=;
        b=hUUBDP/BuVIWbg56vuTRMD6AUc+fI14PPor7SqOidWjeGN763ifEWJ0nVTLHJfPuFk
         ZLMwZon9CSQokJrIj2fIxAEuaiF1wILx5ZZbnA1LTbFJOJ90y1DwRqaP7jRz0Hx09Pyl
         ky/7chkYsKYECe9KJ/F9m//Dy7vaQF+AtSgxe2sXDhgvvEWV0ANrnhAcWLgXMSuTjG1r
         RtC0n5KbIADuCWxKcLF8gAI7OoIv4lMeRA5kh+9oQYlWX+o8qJVy9cmcxkzvM98wQIgP
         VAPm2K2ZPfv2AR486J7DVv6SlCAlCLZVKKXZNWDhbPiKvCKO2izstl5jY3RpzdpuZVX4
         dOIA==
X-Gm-Message-State: AOAM530af/a9kRec6NO12A+qaaLMQbur+3LOovWcdnhmpDakjKIz6/zA
        DV/H88dE/ILFqGhoWaKaWVBfvtGLlDap07xBxtk=
X-Google-Smtp-Source: ABdhPJyFZrMncIFozttovN3ObQJr9lSjjw9rzk5iBc380XlHut9w3ffjRlENC5RHQIxzMOdBOHv8Lwef5hHicZWqt1E=
X-Received: by 2002:a17:90b:210a:b0:1db:cbc6:ca57 with SMTP id
 kz10-20020a17090b210a00b001dbcbc6ca57mr10478731pjb.69.1651672170140; Wed, 04
 May 2022 06:49:30 -0700 (PDT)
MIME-Version: 1.0
Sender: luzynamelad810@gmail.com
Received: by 2002:a17:90b:1d84:0:0:0:0 with HTTP; Wed, 4 May 2022 06:49:29
 -0700 (PDT)
From:   Qiang H Castro <qianghcastro@gmail.com>
Date:   Wed, 4 May 2022 15:49:29 +0200
X-Google-Sender-Auth: WUQbxbg_QF_XwXJdKu0M-4tYGOA
Message-ID: <CA+FKjk3u_jV5E==CVZacWZ9GxGNZAFbxMcoMRxS_y6bzaC2XrQ@mail.gmail.com>
Subject: Hello, Dearest Friend,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello, Dearest Friend,

I Am Sgt Qiang Helen Castro, I have something important discussion
for you, please reply
urgently for more details give you further information. And I hereby
advice to contact me by this email address  qianghcastro@gmail.com

REDARDS
Sgt Qiang Helen Castro
