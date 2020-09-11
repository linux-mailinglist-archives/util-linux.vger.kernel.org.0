Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D45DF2662CB
	for <lists+util-linux@lfdr.de>; Fri, 11 Sep 2020 18:01:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726513AbgIKQBP (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 11 Sep 2020 12:01:15 -0400
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:46661 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726214AbgIKQAm (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 11 Sep 2020 12:00:42 -0400
X-Originating-IP: 80.110.88.233
Received: from [192.168.0.2] (80-110-88-233.cgn.dynamic.surfer.at [80.110.88.233])
        (Authenticated sender: emmanuel@libera.cc)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 001701BF203
        for <util-linux@vger.kernel.org>; Fri, 11 Sep 2020 16:00:26 +0000 (UTC)
To:     util-linux@vger.kernel.org
From:   Emmanuel Kasper <manu@debian.org>
Autocrypt: addr=manu@debian.org; prefer-encrypt=mutual; keydata=
 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
 hytJdg==
Subject: libblk / blkid not recognizing Atari FAT16 variation
Message-ID: <c8bd78fd-85c8-4851-b2a6-e836d0d2a389@debian.org>
Date:   Fri, 11 Sep 2020 18:00:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: fr
Content-Transfer-Encoding: 7bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi List

As said in $subject,

  truncate --size 64M fs.img
  mkfs.fat -A fs.img # -A for Atari variant
  blkid fs.img # nothing

(a real disk image with partitions can also be downloaded here
https://subsole.org/st_mint )

However fsck, and kernel can check and mount this partition.
The kernel detects properly the fat when mounting a block device,
without having to force the filesystem on the command line.

From this doc about the Atari fat format,
info-coach.fr/atari/documents/_mydoc/Atari_HD_File_Sytem_Reference_Guide.pdf

I see on page 9
that the main differences between MS DOS and Atari FAT, is about the fat
logical sector size,
which can goes over 512 bytes in the Atari FAT, whereas in MSDOS FAT it
is always 512 bytes.

fsck.vfat -v fs.img
fsck.fat 4.1 (2017-01-24)
Checking we can access the last sector of the filesystem
Boot sector contents:
System ID "kdosf"
Media byte 0xf8 (hard disk)
      2048 bytes per logical sector <---- more than 512 bytes


However after a quick glance on the code in fat_valid_superblock()
at
https://github.com/karelzak/util-linux/blob/master/libblkid/src/superblocks/vfat.c#L218

it seems to me that libblk should would work with sectors up to 4096
bytes, so I am bit puzzled.
Any pointers on what could be missing here ?

Manu


-- 
You know an upstream is nice when they even accept m68k patches.
  - John Paul Adrian Glaubitz, Debian OpenJDK maintainer
