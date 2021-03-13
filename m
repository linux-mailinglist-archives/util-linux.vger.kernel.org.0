Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26505339BD3
	for <lists+util-linux@lfdr.de>; Sat, 13 Mar 2021 05:49:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231597AbhCMEtM (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 12 Mar 2021 23:49:12 -0500
Received: from ishtar.tlinx.org ([173.164.175.65]:48998 "EHLO
        Ishtar.sc.tlinx.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231392AbhCMEsq (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 12 Mar 2021 23:48:46 -0500
Received: from [192.168.3.12] (Athenae [192.168.3.12])
        by Ishtar.sc.tlinx.org (8.14.7/8.14.4/SuSE Linux 0.8) with ESMTP id 12D4mduI085195;
        Fri, 12 Mar 2021 20:48:41 -0800
Message-ID: <604C4427.3040501@tlinx.org>
Date:   Fri, 12 Mar 2021 20:48:39 -0800
From:   L A Walsh <lkml@tlinx.org>
User-Agent: Thunderbird 2.0.0.24 (Windows/20100228)
MIME-Version: 1.0
To:     Karel Zak <kzak@redhat.com>
CC:     util-linux@vger.kernel.org
Subject: Re: is there a util, or can findmnt be enhanced...(RFE?)
References: <604A8111.8090100@tlinx.org> <20210312075543.jei3secawflwrw6b@ws.net.home>
In-Reply-To: <20210312075543.jei3secawflwrw6b@ws.net.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On 2021/03/11 23:55, Karel Zak wrote:
> $ pwd
>  /home/projects/util-linux
>
>  $ findmnt --target .
>  TARGET SOURCE         FSTYPE OPTIONS
>  /home  /dev/nvme0n1p2 ext4   rw,relatime
>   
----
    Hmmm.  Didn't know about that.  Thanks for the info!  Why does it
produce no output when a non-mount-point is entered?  I.e. -- is that
behavior something that is currently relied upon?

     If not, maybe it could give some indication about an associated mount
of the path that was entered (vs. giving no output)?

    I admit to the desire to have the default case have something do 
something
that is more generally useful, but if people are relying on the empty
output as being a useful indicator of a non-mount-point, wouldn't want to
disrupt that. 

    Either way, thanks!

-linda

