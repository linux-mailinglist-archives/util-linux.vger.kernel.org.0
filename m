Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A88022F812D
	for <lists+util-linux@lfdr.de>; Fri, 15 Jan 2021 17:50:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727840AbhAOQtP (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 15 Jan 2021 11:49:15 -0500
Received: from drop1.michaelkloos.com ([67.205.190.89]:37858 "EHLO
        drop1.michaelkloos.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725923AbhAOQtP (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 15 Jan 2021 11:49:15 -0500
Received: from qpc.home.michaelkloos.com (cpe-173-88-115-50.columbus.res.rr.com [173.88.115.50])
        by drop1.michaelkloos.com (Postfix) with ESMTPSA id 483BB410DC;
        Fri, 15 Jan 2021 16:48:04 +0000 (UTC)
Subject: Re: FAT12 format does not honor the -R option
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
References: <abf8a4c7-fa0c-6e2b-e272-e68531ede173@michaelkloos.com>
 <20210115162843.kwxrwgfe2wxght72@ws.net.home>
From:   "Michael T. Kloos" <michael@michaelkloos.com>
Message-ID: <600001f9-93e4-57db-1b2d-a3e455bb3651@michaelkloos.com>
Date:   Fri, 15 Jan 2021 11:48:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210115162843.kwxrwgfe2wxght72@ws.net.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

If anyone is curious, I found the answer.  Per this thread:

https://github.com/dosfstools/dosfstools/issues/67

You have to use the -a option to disable alignment.  There is discussion 
in the thread of the addition of a warning to indicate to the user of 
this unexpected behavior and how to resolve it.

On 1/15/21 11:28 AM, Karel Zak wrote:
> On Fri, Jan 15, 2021 at 11:01:45AM -0500, Michael T. Kloos wrote:
>> "mkfs.vfat -F 12 -R 2 /dev/loop0" does not seem to honor the -R option.
> For mkfs.vfat see https://github.com/dosfstools/dosfstools. It's not
> maintained by util-linux project.
>
>   Karel
>
