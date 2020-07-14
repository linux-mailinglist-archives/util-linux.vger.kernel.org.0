Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 728D221F158
	for <lists+util-linux@lfdr.de>; Tue, 14 Jul 2020 14:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728006AbgGNMd0 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Jul 2020 08:33:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726041AbgGNMdZ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 14 Jul 2020 08:33:25 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36ECAC061755
        for <util-linux@vger.kernel.org>; Tue, 14 Jul 2020 05:33:25 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id 12so13777518oir.4
        for <util-linux@vger.kernel.org>; Tue, 14 Jul 2020 05:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ExhFgX0roa7wmBLzZDlXPuMAyNG9BQ0pQvXPz8+krJ8=;
        b=rWSzYGxLbXhvik9/YEnN6n9/uazMN7oMcUAshhslIV6Szq6osk2b8+njIOtB2Ahw8C
         KBijMGeYq2vdLYgdxJTNnyPFDUgZkU5JQy12mXqCZEF1MhhzCmdOdGasEpeCDcACSpBF
         3inShZcUh/C2ODu1LEvwdIAQF8ym7mP5gltqsC1nf7C/AU+F02/EzsO7kks1m0aVYrik
         /Xthj2ka/jFP0SOxckfoXMlqISStU6aVRu3UzE2ORU4kZNF9HRQMf4uHiKSHUlXUTn4H
         CngX41P7EPSacf5LEI7U/9EHlQgdMfCOW7Gb5mFCBFGg8qHi37XI83ePTZjRMhJS+pUj
         TGQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ExhFgX0roa7wmBLzZDlXPuMAyNG9BQ0pQvXPz8+krJ8=;
        b=GvEU3tDvfBUaNIoj2mMwyif5MvRBWz1wMDon68JEEYsmlbjVq0/gtlJZ6/P1Ezml29
         mHL9xQGMvlGiDLGAfDUy83V83LH6LMIaVqH5XsmwVQSghSdv+efr9ERh448Q6IqbjK9l
         khcHsKmV2NB8k7tLX/C1FMjxV7lQrEysE+XFjdWJwUYZ4lncJHeAOnMTrTB4dlSK8BTh
         I9Ukj0NYbZ/lOAdC7su5T8ML1Nv+kOQMwCiCt628WXrcmVJ38OlA9YUPi1qtg+E232jD
         13M3X05888/qOcpKHKotHJrVS49FNoJEY06erf2BMQQS5G2vDq11tJ8DmbgDyHe6dtXs
         9Sgg==
X-Gm-Message-State: AOAM530MKOKyZPwIMIj/pKY54e3Ix6Tyua6MBCVrkTdb17RNIKWjRRYw
        kIx4hzJ3i/XZN9MOyGI4X0ssHfMUWHd4jDqK4rU=
X-Google-Smtp-Source: ABdhPJwnlR3SE34NlUt/ARpSVschnRBGv4ZX5x1oKfyuPm0AVeeVV1Lq/rlLoWy2ZLgLsxcJt1LITOZSEpexdTupmYI=
X-Received: by 2002:aca:5683:: with SMTP id k125mr3474581oib.159.1594730004651;
 Tue, 14 Jul 2020 05:33:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200714095741.45292-1-mtk.manpages@gmail.com>
 <20200714095741.45292-5-mtk.manpages@gmail.com> <20200714121420.fvmuuasgkq5hrtcz@ws.net.home>
In-Reply-To: <20200714121420.fvmuuasgkq5hrtcz@ws.net.home>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 14 Jul 2020 14:33:13 +0200
Message-ID: <CAKgNAkgA38ycbAJix6_b6xJXf3h7VY9AVop5QZVbKTc8kbZAiQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] Manual pages: various: reword "allow(s) to"
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi Karel,

On Tue, 14 Jul 2020 at 14:14, Karel Zak <kzak@redhat.com> wrote:
>
> On Tue, Jul 14, 2020 at 11:57:41AM +0200, Michael Kerrisk (man-pages) wrote:
> > The wording "allow(s) to" is not grammatical English. Reword various
> > pages to use a more correct form such "can be use to" or "allows
> > the [noun] of".
> >
> > Aklong the way, fix a few nearby wording errors in some pages.
>
> Some of the "allow to" has been already fixed by Bjarni Ingi Gislason
> (well, his fix is "allows <verb>ing" -- not sure what is better ;-).

I see. Those changes also work, of course. Thanks for fixing that conflict.

> The rest has been merged without change.

Thanks.

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
