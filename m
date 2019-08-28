Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6CB64A003A
	for <lists+util-linux@lfdr.de>; Wed, 28 Aug 2019 12:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726310AbfH1KvL (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 28 Aug 2019 06:51:11 -0400
Received: from mx1.redhat.com ([209.132.183.28]:49344 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726272AbfH1KvL (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Wed, 28 Aug 2019 06:51:11 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id E98C218B3D85;
        Wed, 28 Aug 2019 10:51:10 +0000 (UTC)
Received: from 10.255.255.10 (ovpn-204-73.brq.redhat.com [10.40.204.73])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 18D7D19D7A;
        Wed, 28 Aug 2019 10:51:09 +0000 (UTC)
Date:   Wed, 28 Aug 2019 12:51:07 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Patrick Steinhardt <ps@pks.im>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] tests: use env and support both unbuffer/stdbuf
Message-ID: <20190828105107.tkhwqh3limxjo5yc@10.255.255.10>
References: <20190827111748.g4o375ya2shfrivs@10.255.255.10>
 <219cbcaeb173a07e97dbac8e1b653904369d91e0.1566907983.git.ps@pks.im>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <219cbcaeb173a07e97dbac8e1b653904369d91e0.1566907983.git.ps@pks.im>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]); Wed, 28 Aug 2019 10:51:11 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Aug 27, 2019 at 02:26:08PM +0200, Patrick Steinhardt wrote:
> Triggered by commit f612c4c67 (tests: fix --unbuffered mode with
> ASAN, 2019-08-27), which says:
> 
>     Well, this patch sucks. It would be nice to have things in
>     the way how it has been original expected by Patrick's patch,
>     but ...
> 
> So this commit here effectively reverts it and instead tries to
> improve the shortcomings of the original patch. First, it uses
> env(1) to set ASAN_OPTIONS instead of directly adding it to the
> args array to fix execution of "${args[@]}" "$@".
> 
> Second, it now supports both unbuffer(1) and stdbuf(1). The
> latter uses LD_PRELOAD tricks, which doesn't play nicely with
> ASAN, so it will not be used if ASAN has been requested. It's
> still valuable to have support for both, as many more systems
> will have stdbuf(1) from coreutils installed but not unbuffer(1)
> from expect.

Applied, thanks.

Unfortunately, it seems result is fragile. It fails on travis
https://travis-ci.org/karelzak/util-linux/jobs/577767328

The problem is the order of some output lines, for example:
tests/output/rename/exit_codes

Maybe the best and most robust solution would be split stdout and
stderr into two files for each test. Now we have $TS_OUTPUT, what about
to replace it with $TS_STDOUT and $TS_STDERR? Something like:

 - $TS_CMD_MOUNT $DEVICE $TS_MOUNTPOINT >> $TS_OUTPUT 2>&1
 + $TS_CMD_MOUNT $DEVICE $TS_MOUNTPOINT >> $TS_STDOUT 2>> $TS_STDERR

And also create tests/expected/<foo>/<bar>{.err} for tests where any
output on stderr is expected, otherwise assume $TS_STDERR is empty.

This change will be pretty invasive, but than we can easily compare 
outputs and keep track about what is where printed. 

    Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
