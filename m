Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2A00480A6D
	for <lists+util-linux@lfdr.de>; Sun,  4 Aug 2019 12:24:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726017AbfHDKYH (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 4 Aug 2019 06:24:07 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:46703 "EHLO
        mail-qk1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725932AbfHDKYG (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Sun, 4 Aug 2019 06:24:06 -0400
Received: by mail-qk1-f181.google.com with SMTP id r4so57992742qkm.13
        for <util-linux-ng@vger.kernel.org>; Sun, 04 Aug 2019 03:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=28EOIK1uDoIhEpGrQeviSsPD0tZcjITco3CU/Jfu6tQ=;
        b=a1v1fs8+H2fR5C2DC50V2vZwrboLz1b58D+gkgAkjCM6sYL3Vo4hHBTtEXQBfeO/pD
         ml2m9IgSBHuoOek+mVFKk5uniTjSyGUVM1Cl6+Fza4feWUv+eGIUHrb9bxOYoxeMeRlR
         jRn0eD7p1di4+MM0PsT70640Ksh753QXad2YOuuYEhZE68kjYC1k/8gFsTe/GZaB5Nl+
         Hf+rit3mBYYonliYprBy20Ku6nDO5dyXfhLhnblHsFrGFO/4mnnEC7TNOiOv9H4ebTvF
         2jWAeoghUxoWob6KuNRzWv5rfDQdSs1knfTOWDE0rKn/yZ6Kgt3Ay+WGeLYNt6/wPQqU
         UZUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=28EOIK1uDoIhEpGrQeviSsPD0tZcjITco3CU/Jfu6tQ=;
        b=L/p6wOg2STzl8y+CXyyvRpCYdtI8I0e1hSjWbgvquFLGj3fWskisX4l/1csGq3pJVS
         9Do/eYnA36MPjDJ8rzg0oYvTMXuX8ghrj45wa4+Yoxs5f90dq7fP76bqeqD/KhVjimt0
         WjXMhzCjZE25gjJ05RsThScl7iKhglK944qnwqktQ1f6JUVR6eH8X4tKYjPRD6nOLL2S
         IOgaVMVThD8BVUejh+6ujJV3rUNc4ifvKK5ePFBmiHvPwwSltkyrUHhoqcLdeJQvLP/1
         qQGCzTvoLwX28qxmmjhbDiOzhTf4QAQ5+/snn4bnznc83pNS9zrFN7lwSzZIe6MUJvnX
         CPqQ==
X-Gm-Message-State: APjAAAUUN57jjFG/nki9J9uwpLik3wJYPSxDiwAk60c0dfd7hJa4Rcs0
        lvwrQ1vulwQ7PB4YRoioBS4=
X-Google-Smtp-Source: APXvYqxYNdtFmzweBu70/qZtwfAQpogT8RWfglJhbzWgEFBW4tZWEZFCQVPLAckrLFBLSsBSVnJMEA==
X-Received: by 2002:a05:620a:1413:: with SMTP id d19mr94954215qkj.341.1564914245102;
        Sun, 04 Aug 2019 03:24:05 -0700 (PDT)
Received: from vps.qemfd.net (vps.qemfd.net. [173.230.130.29])
        by smtp.gmail.com with ESMTPSA id j66sm33523984qkf.86.2019.08.04.03.24.03
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 04 Aug 2019 03:24:04 -0700 (PDT)
Received: from schwarzgerat.orthanc (unknown [10.88.0.2])
        by vps.qemfd.net (Postfix) with ESMTP id 0B4352B5D6;
        Sun,  4 Aug 2019 06:24:03 -0400 (EDT)
Received: by schwarzgerat.orthanc (Postfix, from userid 1000)
        id EAC51600377; Sun,  4 Aug 2019 06:24:02 -0400 (EDT)
Date:   Sun, 4 Aug 2019 06:24:02 -0400
From:   Nick Black <dankamongmen@gmail.com>
To:     util-linux-ng@vger.kernel.org
Cc:     Karel Zak <kzak@redhat.com>, Andreas Dilger <adilger@dilger.ca>
Subject: libblkid detects entire nvme namespace as zfs filesystem
Message-ID: <20190804102402.GA6182@schwarzgerat.orthanc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi there. I develop a disk management tool called "growlight",
and have been tracking down a bug here:

 https://github.com/dankamongmen/growlight/issues/4

It came down to the fact that I've got two NVMe SSDs of the same
model in this machine, both with a single namespace, both with a
GPT partition table on said namespace, both with three
partitions (laid out the same way), and libblkid thinks
that the namespace device itself is TYPE="zfs_member". This does
not happen for my spinning disks, and I believe it to be
incorrect.

Here's gdisk output for one of the SSDs:

-------------------------------
[schwarzgerat](0) $ sudo gdisk /dev/nvme0n1
GPT fdisk (gdisk) version 1.0.3

Partition table scan:
  MBR: protective
  BSD: not present
  APM: not present
  GPT: present

Found valid GPT with protective MBR; using GPT.

Command (? for help): p
Disk /dev/nvme0n1: 1953525168 sectors, 931.5 GiB
Model: WDS100T3X0C-00SJG0
Sector size (logical/physical): 512/512 bytes
Disk identifier (GUID): BF1C425C-02B7-4C9D-9E37-402BE6F84798
Partition table holds up to 128 entries
Main partition table begins at sector 2 and ends at sector 33
First usable sector is 34, last usable sector is 1953525134
Partitions will be aligned on 2048-sector boundaries
Total free space is 2014 sectors (1007.0 KiB)

Number  Start (sector)    End (sector)  Size       Code  Name
   1            2048         2099199   1024.0 MiB  EF00  EFI System
   2         2099200       209717247   99.0 GiB    FD00  Linux RAID
   3       209717248      1953525134   831.5 GiB   BF01  Solaris /usr & Mac ZFS
-------------------------------

Everything looks good; there's a valid GPT, and it defines the
three partitions we expect. The first partition is my ESP on
/boot/efi, the second is half of a mdadm RAID1-backed ext4 on /,
and the third is half of a ZFS mirror on /home. 

Here's blkid output for the namespace and the partition:

-------------------------------
[schwarzgerat](0) $ sudo blkid -p -i /dev/nvme0n1p3
/dev/nvme0n1p3: VERSION="5000" LABEL="zhomez" UUID="7730803059136165722" UUID_SUB="1552588083735239772" TYPE="zfs_member" USAGE="filesystem" MINIMUM_IO_SIZE="512" PHYSICAL_SECTOR_SIZE="512" LOGICAL_SECTOR_SIZE="512" PART_ENTRY_SCHEME="gpt" PART_ENTRY_NAME="Solaris /usr & Mac ZFS" PART_ENTRY_UUID="e234214d-7642-4302-a041-c0b6b340ad58" PART_ENTRY_TYPE="6a898cc3-1dd2-11b2-99a6-080020736631" PART_ENTRY_NUMBER="3" PART_ENTRY_OFFSET="209717248" PART_ENTRY_SIZE="1743807887" PART_ENTRY_DISK="259:4"
[schwarzgerat](0) $ sudo blkid -p -i /dev/nvme0n1
/dev/nvme0n1: VERSION="5000" LABEL="zhomez" UUID="7730803059136165722" UUID_SUB="1552588083735239772" TYPE="zfs_member" USAGE="filesystem" MINIMUM_IO_SIZE="512" PHYSICAL_SECTOR_SIZE="512" LOGICAL_SECTOR_SIZE="512" PTUUID="bf1c425c-02b7-4c9d-9e37-402be6f84798" PTTYPE="gpt"
[schwarzgerat](0) $
-------------------------------

In contrast, here's a spinning disk plus its ZFS partition:

-------------------------------
[schwarzgerat](0) $ sudo blkid -p -i /dev/sdf
/dev/sdf: MINIMUM_IO_SIZE="4096" PHYSICAL_SECTOR_SIZE="4096" LOGICAL_SECTOR_SIZE="512" PTUUID="5df293fc-a619-104c-b8ba-02d4cd945ebe" PTTYPE="gpt"
[schwarzgerat](0) $ sudo blkid -p -i /dev/sdf1
/dev/sdf1: VERSION="5000" LABEL="chungus" UUID="7155547617804506101" UUID_SUB="4552286815811062243" TYPE="zfs_member" USAGE="filesystem" MINIMUM_IO_SIZE="4096" PHYSICAL_SECTOR_SIZE="4096" LOGICAL_SECTOR_SIZE="512" PART_ENTRY_SCHEME="gpt" PART_ENTRY_NAME="zfs-cc3eec2efa0e4f94" PART_ENTRY_UUID="a36a2260-2980-174e-a33f-4232dca79d34" PART_ENTRY_TYPE="6a898cc3-1dd2-11b2-99a6-080020736631" PART_ENTRY_NUMBER="1" PART_ENTRY_OFFSET="2048" PART_ENTRY_SIZE="23437750272" PART_ENTRY_DISK="8:80"
[schwarzgerat](0) $
-------------------------------

Note the absence of TYPE or USAGE or LABEL in sdf, in contrast
to nvme0n1, where all are defined (equivalently to nvme0n1p3).
The UUID is equal for nvme0n1 and nvme0n1p3, also.

I can't imagine any interpretation where this is valid, though
I'm sure one might exist. I'm looking at probe_zfs() now, but
wanted to get this out there in case I'm just misunderstanding
something.

--rigorously, nick

-- 
nick black -=- https://www.nick-black.com
to make an apple pie from scratch,
you need first invent a universe.
