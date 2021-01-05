Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CFF92EB123
	for <lists+util-linux@lfdr.de>; Tue,  5 Jan 2021 18:13:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727036AbhAERMm (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 5 Jan 2021 12:12:42 -0500
Received: from info.physics.ubc.ca ([142.103.234.23]:41304 "HELO
        info.physics.ubc.ca" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with SMTP id S1726151AbhAERMm (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 5 Jan 2021 12:12:42 -0500
X-Greylist: delayed 374 seconds by postgrey-1.27 at vger.kernel.org; Tue, 05 Jan 2021 12:12:42 EST
Received: by info.physics.ubc.ca (Postfix, from userid 1000)
        id 208CD121D09; Tue,  5 Jan 2021 09:05:48 -0800 (PST)
Date:   Tue, 5 Jan 2021 09:05:48 -0800 (PST)
From:   Bill Unruh <unruh@physics.ubc.ca>
To:     David O'Brien <daobrien@redhat.com>
cc:     Karel Zak <kzak@redhat.com>, util-linux@vger.kernel.org
Subject: Re: Bug in lsblk command or man page?
In-Reply-To: <c04e1ccc-4053-bb3e-3479-512f263f679e@redhat.com>
Message-ID: <alpine.LMD.2.11.2101050900440.19402@physics.ubc.ca>
References: <ed3332cf-794f-b0d3-caca-16fb65dfd5ac@redhat.com> <20210105102730.w5qxkr3qg353evlr@ws.net.home> <c04e1ccc-4053-bb3e-3479-512f263f679e@redhat.com>
User-Agent: Alpine 2.11 (LMD 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Of course it being "common" does NOT mean that everyone knows the convention,
especially people new to Linux. And is NOT an excuse for the man page being
wrong. So, yes, you should be explicit about it, and not be wrong about it in
the man page.

It is -o list and --output=list

On Wed, 6 Jan 2021, David O'Brien wrote:

> On 1/5/21 8:27 PM, Karel Zak wrote:
>> On Thu, Dec 24, 2020 at 11:14:04AM +1000, David O'Brien wrote:
>>> I don't know if this is expected or not, but it seems very odd:
>>>
>>> # lsblk -o=UUID /stratis/labpool/labfs
>>> lsblk: unknown column: =UUID
>>>
>>> [root@serverb ~]# lsblk -o UUID /stratis/labpool/labfs
>>> UUID
>>> 0118efb8-66fe-406a-837c-725961bdad4d
>>>
>>> [root@serverb ~]# lsblk --output=UUID /stratis/labpool/labfs
>>> UUID
>>> 0118efb8-66fe-406a-837c-725961bdad4d
>>>
>>>
>>> From the man(8) page:
>>> -o, --output list
>>>               Specify which output columns to print.  Use --help to get
>>>               a list of all supported columns.  The columns may affect
>>>               tree-like output.  The default is to use tree for the
>>>               column 'NAME' (see also --tree).
>>>
>>>               The default list of columns may be extended if list is
>>>               specified in the format +list (e.g., lsblk -o +UUID).
>>>
>>> There is no mention of "=" being required, causing failures, etc. I found this quite frustrating.
>>>
>>
>> This is common getopt_long() behavior where equal sign is usable only for
>> long options (and sometimes for optional arguments).
>>
>>  lsblk -o UUID
>>  lsblk --output UUID
>>  lsblk --output=UUID
>>
>> this is how "=" works in almost all commands and I don't see reason
>> why we need to be explicit about it for "lsblk -o".
>>
>>     Karel
>>
> ok. If it's common and expected that's fine. I don't spend a lot of time with this class/type of command and it was just
> new to me and seemed odd.
>
> cheers
> -- 
> David
> Introvert/Unclubbable/Cool
>
> Red Hat's core values are freedom, courage, commitment, and accountability.
>
>
