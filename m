Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9D2746BA19
	for <lists+util-linux@lfdr.de>; Wed, 17 Jul 2019 12:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726309AbfGQK05 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 17 Jul 2019 06:26:57 -0400
Received: from mx1.redhat.com ([209.132.183.28]:60936 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725873AbfGQK05 (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Wed, 17 Jul 2019 06:26:57 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 87A05308FBAF;
        Wed, 17 Jul 2019 10:26:57 +0000 (UTC)
Received: from ws.net.home (ovpn-204-41.brq.redhat.com [10.40.204.41])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id BB6051001B16;
        Wed, 17 Jul 2019 10:26:56 +0000 (UTC)
Date:   Wed, 17 Jul 2019 12:26:53 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Mike Fleetwood <mike.fleetwood@googlemail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: fdisk not wiping sector 0 before writing new MBR
Message-ID: <20190717102653.esdmaidgsjwtypwu@ws.net.home>
References: <CAMU1PDj4Vtvzw_=o_a5_S=j22Ro7_JqTwwh7k2dBDGk56Ns5LQ@mail.gmail.com>
 <20190717101625.vz657vj5g2ir5gcy@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190717101625.vz657vj5g2ir5gcy@ws.net.home>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Wed, 17 Jul 2019 10:26:57 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Wed, Jul 17, 2019 at 12:16:28PM +0200, Karel Zak wrote:
> On Thu, Jul 04, 2019 at 10:55:16PM +0100, Mike Fleetwood wrote:
> > Hi,
> > 
> > This is a bit more of a speculative than my other recent one, but I saw
> > this quote in aix.c:
> >     "All fdisk-like programs has to properly wipe the first sector.
> >     Everything other is a bug."
> >
> > Using fdisk to create an MBR over the top of a whole disk FAT32 (and
> > probably FAT16) file system doesn't clear any of the FAT32 boot record
> > (aka super block).  Blkid and wipefs report this as just an MBR, but
> > because the boot record is intact, GNU parted reports this still as a
> > whole disk FAT32 file system.
> 
> This is bug. MBR probing code in fdisk is weak and it does not check for 
> false positives like blkid, so FAT32 is interpreted as MBR and the bootbits
> are not wiped (fdisk wipes first sector only if it creates a new
> partition table).

Ah, I've forgot... it's fixed now :-)

    Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
