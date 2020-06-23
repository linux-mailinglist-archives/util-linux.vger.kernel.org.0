Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2B1C20583F
	for <lists+util-linux@lfdr.de>; Tue, 23 Jun 2020 19:06:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732548AbgFWRGh (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 23 Jun 2020 13:06:37 -0400
Received: from mail.namespace.at ([213.208.148.235]:33278 "EHLO
        mail.namespace.at" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732868AbgFWRGh (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 23 Jun 2020 13:06:37 -0400
Date:   Tue, 23 Jun 2020 19:06:33 +0200
From:   Chris Hofstaedtler <zeha@debian.org>
To:     kerolasa@gmail.com
Cc:     util-linux <util-linux@vger.kernel.org>
Subject: Re: [PATCH] hexdump: automatically use -C when called as hd
Message-ID: <20200623170633.mdpukzxjr4v7gkmw@percival.namespace.at>
References: <20200623001430.890832-1-zeha@debian.org>
 <CAG27Bk1DNLjV0uVqLVX=0BN=50xxxkX0szStyatwAytNmOcA8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAG27Bk1DNLjV0uVqLVX=0BN=50xxxkX0szStyatwAytNmOcA8A@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

* Sami Kerola <kerolasa@iki.fi> [200623 13:17]:
> On Tue, 23 Jun 2020 at 01:15, Chris Hofstaedtler <zeha@debian.org> wrote:
> >
> > When invoking hexdump as hd enable the "Canonical" format to by
> > default, implying the -C option.
> >
> > This is historic behaviour on Debian and apparently also on FreeBSD.
> > Some Debian users have asked for this to be restored, after Debian
> > switched to util-linux' hexdump and hd.
> 
> Wouldn't it make more sense to add an alias to a global profile?
> 
> alias hd='hexdump -C'

That's not scalable on Debian given the number of shells we ship.
Also, util-linux already has a number of binaries that modify their
behaviour depending on the name they are invoked as.

FreeBSD has this here:
https://github.com/freebsd/freebsd/blame/master/usr.bin/hexdump/hexsyntax.c#L59
And supports it for over 24 years; I believe Debian shipped with
this support since basically forever, too.

Chris
