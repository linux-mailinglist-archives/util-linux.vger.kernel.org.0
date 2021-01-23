Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 144973017A5
	for <lists+util-linux@lfdr.de>; Sat, 23 Jan 2021 19:32:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725765AbhAWScW (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 23 Jan 2021 13:32:22 -0500
Received: from foss.arm.com ([217.140.110.172]:52802 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725883AbhAWScW (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Sat, 23 Jan 2021 13:32:22 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D41F1474;
        Sat, 23 Jan 2021 10:31:36 -0800 (PST)
Received: from e107158-lin (unknown [10.1.194.78])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D30413F719;
        Sat, 23 Jan 2021 10:31:35 -0800 (PST)
Date:   Sat, 23 Jan 2021 18:31:33 +0000
From:   Qais Yousef <qais.yousef@arm.com>
To:     Vincent Guittot <vincent.guittot@linaro.org>
Cc:     util-linux@vger.kernel.org,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Dietmar Eggemann <dietmar.eggemann@arm.com>,
        Patrick Bellasi <patrick.bellasi@matbug.net>
Subject: Re: [PATCH 3/5] uclampset: Add man page
Message-ID: <20210123183133.dniog4z2rxw45sd6@e107158-lin>
References: <20210116190940.2320819-1-qais.yousef@arm.com>
 <20210116190940.2320819-4-qais.yousef@arm.com>
 <CAKfTPtAKBUmvXAnDSyp1-S=uXewQus-HzEaNhpOieRHS1p-tqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAKfTPtAKBUmvXAnDSyp1-S=uXewQus-HzEaNhpOieRHS1p-tqQ@mail.gmail.com>
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On 01/20/21 15:46, Vincent Guittot wrote:
> > +.TP
> > +For example:
> > +.B uclampset \-s
> > +.I -m\ 512
> > +.I -M\ 700
> > +.PP
> > +will prevent any task from being boosted higher than 512. And all tasks in the
> 
> will prevent any task from being boosted higher than 700

700 or 512 you mean here?

> or
> will ensure  any task to be boosted higher than 512

It is certainly not that. That's the confusion I was trying to clear up in this
note. The system values are _constraints_. It sets an upper bound on the
maximum uclamp_min/max value the system will apply.

For example if a task::uclamp_min=1024 but the system::uclamp_min=512 512, then
effectively the task will only be boosted to 512. Once this restriction is left
by setting system::uclamp_min=1024 again, then the task will get the boost
value it requested.

I'm open to suggestions on how to better explain this..

Thanks

--
Qais Yousef
