Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 10AEA384D1
	for <lists+util-linux@lfdr.de>; Fri,  7 Jun 2019 09:17:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727066AbfFGHRx (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 7 Jun 2019 03:17:53 -0400
Received: from mx1.redhat.com ([209.132.183.28]:52016 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726711AbfFGHRx (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Fri, 7 Jun 2019 03:17:53 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 551983084213;
        Fri,  7 Jun 2019 07:17:53 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.205.47])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 93F7B7D565;
        Fri,  7 Jun 2019 07:17:52 +0000 (UTC)
Date:   Fri, 7 Jun 2019 09:17:49 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Dan MacDonald <allcoms@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: lsblk full disk id output column
Message-ID: <20190607071749.kf2ucex6b7y3btcx@ws.net.home>
References: <CANOoOjvoz4q32tphKo-HwCmNLpugb8DvfSkzkToXRqpwVkve2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANOoOjvoz4q32tphKo-HwCmNLpugb8DvfSkzkToXRqpwVkve2Q@mail.gmail.com>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Fri, 07 Jun 2019 07:17:53 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jun 06, 2019 at 03:14:35PM +0100, Dan MacDonald wrote:
> I need a tool that makes it simple to correlate disk device names with
> their ids, as can be seen under . The main reason for this is when
> administrating ZFS (replacing failed disks etc)  it doesn't deal with
> device names (sda, sdb etc) but uses disk id's instead and I often
> struggle to marry them up.
> 
> I know lsblk already has the "-o model" output column which prints
> part of the disk id but I want to see the full disk id (the full
> device name, with or without its /dev/disk/by-id prefix) printed under
> a column called ID, DISKID or similar.

Not sure what you mean with ID in this case.

Try 
    lsblk -o+MODEL,WWN 
or
    lsblk -o+MODEL,SERIAL

maybe we can add SERIAL-LONG, because udev differentiate between
SERIAL and SERIAL_SHORT (used by lsblk), and it's MODEL+SERIAL.

See also

    udevadm info /dev/sda


  Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
