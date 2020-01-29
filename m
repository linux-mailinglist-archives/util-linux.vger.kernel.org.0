Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D64C314C40B
	for <lists+util-linux@lfdr.de>; Wed, 29 Jan 2020 01:33:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728011AbgA2AdX (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 28 Jan 2020 19:33:23 -0500
Received: from ishtar.tlinx.org ([173.164.175.65]:38556 "EHLO
        Ishtar.sc.tlinx.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728005AbgA2AdX (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 28 Jan 2020 19:33:23 -0500
X-Greylist: delayed 1086 seconds by postgrey-1.27 at vger.kernel.org; Tue, 28 Jan 2020 19:33:23 EST
Received: from [192.168.3.12] (Athenae [192.168.3.12])
        by Ishtar.sc.tlinx.org (8.14.7/8.14.4/SuSE Linux 0.8) with ESMTP id 00T0F7AI057066;
        Tue, 28 Jan 2020 16:15:09 -0800
Message-ID: <5E30CE8B.1080007@tlinx.org>
Date:   Tue, 28 Jan 2020 16:15:07 -0800
From:   L A Walsh <lkml@tlinx.org>
User-Agent: Thunderbird
MIME-Version: 1.0
To:     Karel Zak <kzak@redhat.com>
CC:     "Theodore Ts'o" <tytso@mit.edu>, util-linux@vger.kernel.org,
        LKML <linux-lkml@vger.kernel.org>
Subject: Re: [PATCH] build-sys: fix configure --without-systemd
References: <20200124172947.877099-1-tytso@mit.edu> <20200128120733.s3n7f5gidsorwii7@ws.net.home>
In-Reply-To: <20200128120733.s3n7f5gidsorwii7@ws.net.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On 2020/01/28 04:07, Karel Zak wrote:
> On Fri, Jan 24, 2020 at 12:29:47PM -0500, Theodore Ts'o wrote:
>   
>>  AC_ARG_WITH([systemd],
>>    AS_HELP_STRING([--without-systemd], [do not build with systemd support]),
>> -  [], [with_systemd=check]
>> +  [], [with_systemd=no]
>>     
>
> The current default is to check for the libraries, if installed than
> enable systemd support. This is generic way we use for many libs and
> features. Why do you think that explicit --enable-* will be better?
>   
---

    Perhaps Ted didn't realize that the line he replaced
was only the default action (1st bracket pair empty => no option).
Initially, I thought the same until I read further
down (two lines):

have_systemd=no
AS_IF([test "x$with_systemd" != xno], [ ...
   test for positive case ]

If any of the tests fail, then 'have_systemd=no'
is the option passed along.

I don't _think_ Ted is asking for for the default to be
changed, as the subject of his note states it is
to fix the "--without-systemd" case, but a
fix was added for a bug that wasn't present,
so I don't think he knowingly did what he
intended to do.







