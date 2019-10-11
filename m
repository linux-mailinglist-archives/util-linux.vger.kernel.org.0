Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6CCE2D3AED
	for <lists+util-linux@lfdr.de>; Fri, 11 Oct 2019 10:23:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726705AbfJKIWn (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 11 Oct 2019 04:22:43 -0400
Received: from monster.unsafe.ru ([5.9.28.80]:53340 "EHLO mail.unsafe.ru"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726555AbfJKIWm (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Fri, 11 Oct 2019 04:22:42 -0400
X-Greylist: delayed 309 seconds by postgrey-1.27 at vger.kernel.org; Fri, 11 Oct 2019 04:22:41 EDT
Received: from Legion-PC.fortress (nat-pool-brq-t.redhat.com [213.175.37.10])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.unsafe.ru (Postfix) with ESMTPSA id AE381C61AD3;
        Fri, 11 Oct 2019 08:17:31 +0000 (UTC)
Date:   Fri, 11 Oct 2019 10:17:30 +0200
From:   Alexey Gladkov <gladkov.alexey@gmail.com>
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH v1 0/4] Add modules.builtin.modinfo support
Message-ID: <20191011081730.sji36gxhg22s3vld@Legion-PC.fortress>
Mail-Followup-To: Karel Zak <kzak@redhat.com>, util-linux@vger.kernel.org
References: <20191010120928.3817287-1-gladkov.alexey@gmail.com>
 <20191011065842.f5tm6ynkbltiqcyq@10.255.255.10>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011065842.f5tm6ynkbltiqcyq@10.255.255.10>
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Oct 11, 2019 at 08:58:42AM +0200, Karel Zak wrote:
> 
>  Alexey, it seems you need another mailing list for libkmod, see:
>  https://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git/about/

Ooops! My bad. I guess I need more sleep :)
Thanks for not ignoring !!!

>  Thanks,
>    Karel
> 
> > Alexey Gladkov (4):
> >   libkmod: Add parser for modules.builtin.modinfo
> >   libkmod: Add function to get list of built-in modules
> >   Lookup aliases in the modules.builtin.modinfo
> >   modinfo: Show information about built-in modules
> > 
> >  Makefile.am                |   1 +
> >  libkmod/libkmod-builtin.c  | 231 +++++++++++++++++++++++++++++++++++++
> >  libkmod/libkmod-internal.h |  10 ++
> >  libkmod/libkmod-module.c   |  76 ++++++++++--
> >  libkmod/libkmod.c          |  25 ++++
> >  libkmod/libkmod.h          |   1 +
> >  tools/depmod.c             |  63 ++++++++++
> >  tools/modinfo.c            |  39 ++++---
> >  8 files changed, 419 insertions(+), 27 deletions(-)
> >  create mode 100644 libkmod/libkmod-builtin.c
> > 
> > -- 
> > 2.21.0
> > 
> 
> -- 
>  Karel Zak  <kzak@redhat.com>
>  http://karelzak.blogspot.com
> 

-- 
Rgrds, legion

