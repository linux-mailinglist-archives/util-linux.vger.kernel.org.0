Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B86E707DD0
	for <lists+util-linux@lfdr.de>; Thu, 18 May 2023 12:16:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230520AbjERKQG (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 18 May 2023 06:16:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230456AbjERKPn (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 18 May 2023 06:15:43 -0400
Received: from mail-ua1-x931.google.com (mail-ua1-x931.google.com [IPv6:2607:f8b0:4864:20::931])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7027F26B6
        for <util-linux@vger.kernel.org>; Thu, 18 May 2023 03:15:22 -0700 (PDT)
Received: by mail-ua1-x931.google.com with SMTP id a1e0cc1a2514c-783e4665d60so619398241.0
        for <util-linux@vger.kernel.org>; Thu, 18 May 2023 03:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684404889; x=1686996889;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2aFGH162Fm/KbyaEkC0X1yImRZepyYXXLoG13WlJG+s=;
        b=UVW3RNlkHTU/gp8CgcBuRdlwvP6Y4DHWAaoG5fSqeaV921YEkwVidcO0FAoqpnvVTR
         EgvBrM+cJhY/jfPUQ2c5bIYRnx8vVQIkYx/MSxdHF3h3+fmW9C77rLQzijm8+3XCtxuC
         FjnJ/tolON9YJ24t5bpze3ZDm7ky4hkVlTOR1nfEycAsX7LAmJPSwMpdeMboZYS1FD+t
         hKx4WHZ81BxqwNU0M6GBAn9C2Vy61Av0581GdTzJ/YXMlIG+A4NDxPDR5iOTS8kah0eO
         Wz984VfPO3QqCnfjBdTPe+dRa8gzdz2WJS81j+1Dgqj+zHBiRtHxGOSyM0mUA2XJ/ER4
         x5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684404889; x=1686996889;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2aFGH162Fm/KbyaEkC0X1yImRZepyYXXLoG13WlJG+s=;
        b=cLRSbB08sXgoJziubEhSOM6b2Ahm/6Mvml1f/tg+T2VHGXAiOEtWsQvzDR7RMN/gqj
         wz2Y4a+9YxgSff8eGnn/ByhIzcc2RmlH+t3lda0IFS6G3zd0BAnioJ3+WCreuv6Wenib
         TR1xCB5LN3cvIE8z+qybNISmIRw5zvgd4fmUCA3shQeN4xv7E/p7OdEEvsRPJoFB9WEp
         foP1JlxfnMGv5FQGfZdMG74lyj4DUDbmbZUjo1Ah6jHOi34JN3cXqTgVJYJVcsS5WtAJ
         Jmdsg0AeZiipHzwM8pv2LbOEPqsQUrfNIONLWtYOZtO5I5CNeUCzrw3tHBPMZOxywBde
         QXvw==
X-Gm-Message-State: AC+VfDy6oj40FA7IpSowQFnhpZlkdFKwohGp7ly0DfKlatSNbwwvEefc
        PN5448yo/AJi3fyyX4m3yt1nmZZLj5Imhvyxvn4=
X-Google-Smtp-Source: ACHHUZ7O/cMhR7P7y9nTl1HCU8weplBlrN/HExiGwaZi2RIcidNqRscyOXkwlKEY0e20VGE3vrda+e+gUbAa03h0y/0=
X-Received: by 2002:a05:6102:145:b0:437:df4f:ac81 with SMTP id
 a5-20020a056102014500b00437df4fac81mr332055vsr.29.1684404889260; Thu, 18 May
 2023 03:14:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:9447:0:b0:385:8ff7:e16c with HTTP; Thu, 18 May 2023
 03:14:48 -0700 (PDT)
Reply-To: ninacoulibaly03@myself.com
From:   nina coulibaly <ninacoulibaly49@gmail.com>
Date:   Thu, 18 May 2023 03:14:48 -0700
Message-ID: <CAPhHPC1-3RrhKt4NTX-wF51H6csX0tnftumkaNU_PK34WUqvNw@mail.gmail.com>
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

Mrs. Nina Coulibaly
