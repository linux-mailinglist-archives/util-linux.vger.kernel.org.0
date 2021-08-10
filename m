Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 257383D8375
	for <lists+util-linux@lfdr.de>; Wed, 28 Jul 2021 00:57:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232650AbhG0W5D (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 27 Jul 2021 18:57:03 -0400
Received: from cmyk.emenem.pl ([217.79.154.63]:33124 "EHLO smtp.emenem.pl"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232198AbhG0W5C (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 27 Jul 2021 18:57:02 -0400
X-Virus-Scanned: amavisd-new at emenem.pl
Received: from [192.168.1.10] (50-78-106-33-static.hfc.comcastbusiness.net [50.78.106.33])
        (authenticated bits=0)
        by cmyk.emenem.pl (8.16.1/8.16.1) with ESMTPSA id 16RMuSMS006783
        (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
        Wed, 28 Jul 2021 00:56:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ans.pl; s=20190507;
        t=1627426592; bh=ZBl1EkmpJRnBApNqpV+aWeMsB6XSxkyxy7jfXLK4pYc=;
        h=Subject:From:To:Cc:References:Date:In-Reply-To;
        b=eX0V4/RcxKtEoLy9uZ1jY/edar+UndYPkrA1KqlIbag1F2qJfpoTAiBK/0nZoI3dy
         sRBLwXSNwSmzbbZoI2uFRskpxW/cerIwW24Qq3Tj/5IwWINWAjS4nbrR8lHj5xwEwv
         eieXHrlz2gAqzpxAN2FCdYvkHY+u+OyhuoJOvCqI=
Subject: Re: Commit d5fd456c88aba4fcf77d35fe38024a8d5c814686 - "loopdev: use
 LOOP_CONFIG ioctl" broke loop on x86-64 w/ 32 bit userspace
From:   =?UTF-8?Q?Krzysztof_Ol=c4=99dzki?= <ole@ans.pl>
To:     Sinan Kaya <sinan.kaya@microsoft.com>, Karel Zak <kzak@redhat.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     util-linux@vger.kernel.org, linux-block@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <a797f527-4599-e986-a326-4bb141487f2c@ans.pl>
 <e7f64d43-2a26-e386-b208-5c35d6a56ed4@ans.pl>
Message-ID: <7de1bd0b-b8ea-daf0-b677-f92db1c1cdff@ans.pl>
Date:   Tue, 27 Jul 2021 15:56:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <e7f64d43-2a26-e386-b208-5c35d6a56ed4@ans.pl>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On 2021-07-27 at 15:39, Krzysztof Olędzki wrote:
> On 2021-07-27 at 14:53, Krzysztof Olędzki wrote:
>> Hi,
>>
>> I have a number of (older) systems that are still based on 32 bit
>> userspace but are running a relatively modern 64 bit kernel -
>> 5.4-stable, where BTW - LOOP_CONFIGURE is not yet available.
>>
>> I noticed that starting with util-linux-2.37 it is no longer possible to
>> mount images using loop:
>>
>> # mount /usr/install/iso/systemrescue-8.04-amd64.iso /mnt/cdrom
>> mount: /mnt/cdrom: failed to setup loop device for
>> /usr/install/iso/systemrescue-8.04-amd64.iso.
>>
>> Reverting d5fd456c88aba4fcf77d35fe38024a8d5c814686 fixes the problem:
>>
>> /tmp/util-linux-2.37# ./mount
>> /usr/install/iso/systemrescue-8.04-amd64.iso /mnt/cdrom
>> mount: /mnt/cdrom: WARNING: source write-protected, mounted read-only.
>>
>> I have not tested if 32 bit kernel + 32 bit userspace is also affected,
>> but 64 bit kernel + 64 bit userspace works.
> 
> Some debugging data:
> 
> 30399: loopdev:      CXT: [0xff8d0f98]: using loop-control
> 30399: loopdev:      CXT: [0xff8d0f98]: loop0 name assigned
> 30399: loopdev:      CXT: [0xff8d0f98]: find_unused by loop-control [rc=0]
> 30399: libmount:     LOOP: [0x57cbbcb0]: trying to use /dev/loop0
> 30399: loopdev:      CXT: [0xff8d0f98]: set backing file=/usr/install/iso/systemrescue-8.04-amd64.iso
> 30399: loopdev:      CXT: [0xff8d0f98]: set flags=4
> 30399: loopdev:    SETUP: [0xff8d0f98]: device setup requested
> 30399: loopdev:    SETUP: [0xff8d0f98]: backing file open: OK
> 30399: loopdev:      CXT: [0xff8d0f98]: open /dev/loop0 [rw]: Success
> 30399: loopdev:    SETUP: [0xff8d0f98]: device open: OK
> 30399: loopdev:    SETUP: [0xff8d0f98]: LOOP_CONFIGURE failed: Inappropriate ioctl for device
> 30399: loopdev:    SETUP: [0xff8d0f98]: failed [rc=-25]
> 30399: libmount:     LOOP: [0x57cbbcb0]: failed to setup device
> 30399: loopdev:      CXT: [0xff8d0f98]: de-initialize
> 30399: loopdev:      CXT: [0xff8d0f98]: closing old open fd
> 30399: loopdev:     ITER: [0xff8d1168]: de-initialize
> 30399: libmount:      CXT: [0x57cbbcb0]: mount: preparing failed
> 30399: libmount:      CXT: [0x57cbbcb0]: excode: rc=32 message="failed to setup loop device for /usr/install/iso/systemrescue-8.04-amd64.iso"
> mount: /mnt/cdrom: failed to setup loop device for /usr/install/iso/systemrescue-8.04-amd64.iso.
> 30399: libmount:      CXT: [0x57cbbcb0]: <---- reset [status=0] ---->
> 
> Seems like the code expects EINVAL (-22) but gets ENOTTY (-25), confirmed with strace:
> ioctl(4, LOOP_CONFIGURE, {fd=3, block_size=0, info={lo_offset=0, lo_number=0, lo_flags=LO_FLAGS_AUTOCLEAR, lo_file_name="/usr/install/iso/systemrescue-8.04-amd64.iso", ...}}) = -1 ENOTTY (Inappropriate ioctl for device)
> 
> Indeed, changing the code from:
>     if (errno != EINVAL)
> to:
>     if (errno != EINVAL && errno != ENOTTY)
> allows it to work.
> 
> Not that with 64-bit userspace, kernel returns EINVAL:
> 
> ioctl(4, LOOP_CONFIGURE, {fd=3, block_size=0, info={lo_offset=0, lo_number=0, lo_flags=LO_FLAGS_AUTOCLEAR, lo_file_name="/usr/src/PACKAGES/systemrescue-8.04-amd64.iso", ...}}) = -1 EINVAL (Invalid argument)

... which is because lo_compat_ioctl returns -ENOIOCTLCMD for 
unsupported cmds, while lo_ioctl returns -EINVAL via lo_simple_ioctl.

And vfs_ioctl returns -ENOTTY for -ENOIOCTLCMD.

Now the question is if this inconsistency is intended? :)

Krzysztof

