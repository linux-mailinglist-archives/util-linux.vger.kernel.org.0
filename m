Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D21A83016FE
	for <lists+util-linux@lfdr.de>; Sat, 23 Jan 2021 17:52:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725899AbhAWQvp (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 23 Jan 2021 11:51:45 -0500
Received: from foss.arm.com ([217.140.110.172]:49330 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725765AbhAWQvp (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Sat, 23 Jan 2021 11:51:45 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B23211D4;
        Sat, 23 Jan 2021 08:50:59 -0800 (PST)
Received: from e107158-lin (e107158-lin.cambridge.arm.com [10.1.194.78])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B7B93F719;
        Sat, 23 Jan 2021 08:50:58 -0800 (PST)
Date:   Sat, 23 Jan 2021 16:50:55 +0000
From:   Qais Yousef <qais.yousef@arm.com>
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Dietmar Eggemann <dietmar.eggemann@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Patrick Bellasi <patrick.bellasi@matbug.net>
Subject: Re: [PATCH 1/5] Move sched_attr struct and syscall definitions into
 header file
Message-ID: <20210123165055.yphylpc575dqbw5s@e107158-lin>
References: <20210116190940.2320819-1-qais.yousef@arm.com>
 <20210116190940.2320819-2-qais.yousef@arm.com>
 <20210120102555.mu5czlpkb3gujapc@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210120102555.mu5czlpkb3gujapc@ws.net.home>
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On 01/20/21 11:25, Karel Zak wrote:
> On Sat, Jan 16, 2021 at 07:09:36PM +0000, Qais Yousef wrote:
> > So that we can re-use them in other files.
> 
> Good idea.
> 
> > +++ b/include/sched_attr.h
> > @@ -0,0 +1,97 @@
> > +/*
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License, version 2, as
> > + * published by the Free Software Foundation
> 
> My goal is to keep include/ and lib/ usable for LGPL and BRD code,
> because util-linux is not only GPL code. The ideal solution is to 
> use public domain or LGPL for this shared directories. 
> 
> Maybe we can use Public Domain also for this new header file as it
> contains only ifdef fallbacks. 
> 
> The other solution is to keep GPL sched_attr.h in schedutils/ directory.

Sorry I didn't realize the licensing constraint.

Don't we need Robert's Love permission to change the license? Making it Public
Domain makes sense. There's nothing special in here.

Thanks

--
Qais Yousef
