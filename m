Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D2B1E777BE
	for <lists+util-linux@lfdr.de>; Sat, 27 Jul 2019 10:43:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728120AbfG0InR (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 27 Jul 2019 04:43:17 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:47033 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727885AbfG0InR (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 27 Jul 2019 04:43:17 -0400
Received: by mail-lj1-f195.google.com with SMTP id v24so53821306ljg.13
        for <util-linux@vger.kernel.org>; Sat, 27 Jul 2019 01:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P9h30D/h1mXOAgxOi608hEeFot0DiyCDBTvS+bq3UMw=;
        b=Wg/ysjsCVzbCWcnfTA0/fTzMBid9oeUXSrDsZQGdQtNSf6WPlmdOISioRiDekrWWLu
         /MJYrHRe0c/ZBalUKkpfFGqRa2c0JJdQobIi8G/kjPhNqIHIpKD+1/byYwbG85QExwCy
         AQIOcFvLUE8KHlbem6Arvfwj5gXMOY6tUyBQC8PRL5/lsFWrV8p3VdufvKUH8L2v5DnX
         O0xoo1QpNog/avriXRHnthMNFo+zoQUlgK+asOoezjoahPrwbQ/YgqaaGEAygcwQLyOY
         E4LFrtgKxhF4ZJMOshcD1rOzn+4Xnnk7Q9HG2bFl3Rn/TH8u5zucDwzMRhU/tHFI4Ncn
         gneQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P9h30D/h1mXOAgxOi608hEeFot0DiyCDBTvS+bq3UMw=;
        b=FxlcIpBmaRw+cpeVhTfb0NBdkq93Kpg96d/KgzqKxYkgQMAWlPq1MddtgvQ/MsGQ3C
         NeQrJ/DB1DsDrDpwHQ2OVndVAm3WiXMqTkoiNWHrOQi1+jbof4hXPlVYVIos+V5pbuzq
         OVPGrSzt1ikIKGtNNNvqZ8vMMKQ96SXgndBgHpwdt42Afm1OecqHn0+4X8BT2TWd10vj
         8NxWI+XOVhF4RqBNtRZCi0GfpCGCgcDb/taCSYVYzDmpKLLD5coQ7GGAGEez8DCW7cVp
         QC1Fxc3Xc7QFx6cAn4oJBhp0HNQMKPLeT7unfBoFi02DFcFezWtx0QQYa1MQN8Gdg4Bi
         tJ3A==
X-Gm-Message-State: APjAAAWfy+GZQylWfAzABKONQgBkzn/n6t3xd8h7BVi3tFioKq80/wqk
        Y46mD67uGjf+uf5TOBi5aoe4am2tA6OHo95DRmy8ocp9
X-Google-Smtp-Source: APXvYqz/NY7JkE2AwNcXtPiaj55Ul1Yu8OnMwY6wjbRFsTS0HciRhMOFqL69XK3RkS1Yp3s39gtz4FW7OhokAP97hrc=
X-Received: by 2002:a2e:8801:: with SMTP id x1mr51108110ljh.1.1564216994975;
 Sat, 27 Jul 2019 01:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190627092235.36888-1-zhouyousong@yunionyun.com>
 <CAECwjAhM1FmCoxZnxUxJcE+vCN5=uBd_SuMZEQ6qj8OKfCf3oA@mail.gmail.com> <20190715080018.tjfvon3vfpsp4uca@ws.net.home>
In-Reply-To: <20190715080018.tjfvon3vfpsp4uca@ws.net.home>
From:   Yousong Zhou <yszhou4tech@gmail.com>
Date:   Sat, 27 Jul 2019 16:43:03 +0800
Message-ID: <CAECwjAhAvJLHzJAQ2fMhkvhcmj9VfJy2wTSq=UuTxdPqQES6tQ@mail.gmail.com>
Subject: Re: [PATCH] column: fix outputing empty column at the end of line
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org,
        Yousong Zhou <zhouyousong@yunionyun.com>
Content-Type: text/plain; charset="UTF-8"
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Mon, 15 Jul 2019 at 16:00, Karel Zak <kzak@redhat.com> wrote:
>
> On Sat, Jul 13, 2019 at 01:30:27PM +0800, Yousong Zhou wrote:
> > On Thu, 27 Jun 2019 at 17:22, Yousong Zhou <yszhou4tech@gmail.com> wrote:
> > >
> > > The following commands manifests the problem.  In old versions before
> > > commit 4762ae9d60 ("column: use libsmartcols for --table"), both of them
> > > should output with 2 "|"
> > >
> > >         echo '||'  | column -o '|' -s '|' -t
> > >         echo '|| ' | column -o '|' -s '|' -t
> > >
> > > Fixes: 4762ae9d60 ("column: use libsmartcols for --table")
> > > Signed-off-by: Yousong Zhou <zhouyousong@yunionyun.com>
> > > ---
> >
> > Hi, do you think this is a real bug and the fix a proper one?  should
> > I post a pull request through the github project page?
>
>
> Sorry for delay, I had vacation last weekend.
>
> I think your patch seems fine at first glance and send it to mailing
> list is good enough. You do not have to use github PR. Thanks.
>
>     Karel

Does the patch still look good now ;)

                yousong

>
> --
>  Karel Zak  <kzak@redhat.com>
>  http://karelzak.blogspot.com
