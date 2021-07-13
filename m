Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31FB33C7301
	for <lists+util-linux@lfdr.de>; Tue, 13 Jul 2021 17:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236966AbhGMPUO (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 13 Jul 2021 11:20:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236931AbhGMPUN (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 13 Jul 2021 11:20:13 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB127C0613DD
        for <util-linux@vger.kernel.org>; Tue, 13 Jul 2021 08:17:23 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id p8so30957818wrr.1
        for <util-linux@vger.kernel.org>; Tue, 13 Jul 2021 08:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=a0Q68UYK6naDMCzpIkiD9XNTetS4Vqmyb/j2W5J0li8=;
        b=RE3LEeUkxOSVik3egTeB/CrqZP/DmwMbKLqTU62ozqmppA/ODUC520IDJB2QJn0y2b
         BhLxEF23t7VtGQwVZRE2NoXq0BiTvUVKFwWUkNGevfkAg1MEEsWn1lm+WkHgu8PWdTa3
         CIEM7u74KUI7YUK7D7ppGAL6QkRzsPa0VqWjOJjsON453r/mcoJWOPx2oE8EeMIJsv6J
         g5kQB3/NqmABIzn17tI8oPmAtjTpvY0SfD4FiFGs3Nrj1TK5RLZ8ESaj4lqC9EE/V4wr
         8CNjQdeXMlWm9IBcCXFGbvNkzGX3b95gNA+5LH6kjNIQAn2Gg0YQw6qqmMJqkhUCCAoq
         xBVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=a0Q68UYK6naDMCzpIkiD9XNTetS4Vqmyb/j2W5J0li8=;
        b=t1KKvJAyH3d8rPs6maiRGAGo5EBXURQUAp9+4C+AO2ipXuH4Eh5+BXWpkoT1g2vB7R
         zrDz4hAa1/kVKHny+VQ5wryV/Yo1USyLN7699HBs3XTvCY93w1ypDcrP0523lSTn5shQ
         KnITt+qjP3PrR52Hu06qkWsvKBM842+/SMVX6ykaLF1M61Teb/BoDELavlK7DZ7vEc/N
         WLVXVqzBlXVUvItgt8xQkVYW/D9XWXtE/xmGgbWyV0bcbYIZACDREJxp0B9obDuWUjAi
         EBt9wUp5SR7zEhQyxweBZleO5qHCQ4jeFwmkeFoxLe+rjncz+o4A99cGLJtjk6xZrD6P
         2UpQ==
X-Gm-Message-State: AOAM530spjJHTEGpCj6CBNlmELbkLHaOHQT02g+tBFQ7QboB1X8gCuKL
        KLg8q5GWkBXnyXkSAJ7R7aljWfgowtrQEapNszk=
X-Google-Smtp-Source: ABdhPJyymsJRR8/2QEtBITdRm57a2yq9GMqwfLKXITcPPKACN00+TFaeHM0b76VAYZBKW73KVdDcAyLuYl/ZGhPeO/0=
X-Received: by 2002:a5d:638b:: with SMTP id p11mr6522680wru.380.1626189441976;
 Tue, 13 Jul 2021 08:17:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:6088:0:0:0:0:0 with HTTP; Tue, 13 Jul 2021 08:17:21
 -0700 (PDT)
Reply-To: bazaatg@gmail.com
From:   Tchao Ago Bazaa <crenetogo6@gmail.com>
Date:   Tue, 13 Jul 2021 08:17:21 -0700
Message-ID: <CABuQhevmZFSfDvipgsXxZu3xhknQinaY-KP++cCZoe8_5dJCJg@mail.gmail.com>
Subject: Proposal
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Greetings

I apologize for using this medium to contact you. My name is Barrister
Tchao Ago Bazaa and I am a lawyer by profession. I am contacting you
in respect of my late client who bears the same surname as you and a
citizen of your country, my late client died in a car accident along
with his family some years back, leaving no next of kin. My late
client  was a business man who was into the oil and gold business here
in my country.

He left behind a fund deposit value of  ( Five Million Nine Hundred
Thousand United States Dollars only ) the bank where this money was
deposited is trying to confiscate it, since i cannot locate any member
of the family a long time after his demise, I therefore seek your
since partnership since you share the same family names with my late
client and probably from the same country, do not hesitate to send me
the following information below for easy  communication and endeavor
to reply through my private email address for more details:

Your full names
Your private Telephone Number

Thanks

Tchao Ago Bazaa
