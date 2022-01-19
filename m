Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA72C493980
	for <lists+util-linux@lfdr.de>; Wed, 19 Jan 2022 12:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354133AbiASLbF (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 19 Jan 2022 06:31:05 -0500
Received: from www262.sakura.ne.jp ([202.181.97.72]:58765 "EHLO
        www262.sakura.ne.jp" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354064AbiASLbF (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 19 Jan 2022 06:31:05 -0500
Received: from fsav119.sakura.ne.jp (fsav119.sakura.ne.jp [27.133.134.246])
        by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 20JBUsKI084480;
        Wed, 19 Jan 2022 20:30:54 +0900 (JST)
        (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav119.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav119.sakura.ne.jp);
 Wed, 19 Jan 2022 20:30:54 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav119.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
        (authenticated bits=0)
        by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 20JBUsEj084462
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 19 Jan 2022 20:30:54 +0900 (JST)
        (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <28a360a3-b559-24ec-6c3d-3fe6e8302393@I-love.SAKURA.ne.jp>
Date:   Wed, 19 Jan 2022 20:30:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Racy loop device reuse logic
Content-Language: en-US
To:     Jan Kara <jack@suse.cz>
Cc:     util-linux@vger.kernel.org, linux-block@vger.kernel.org,
        Karel Zak <kzak@redhat.com>
References: <20220113154735.hdzi4cqsz5jt6asp@quack3.lan>
 <20220119085247.duhblxzp6joukarw@quack3.lan>
From:   Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <20220119085247.duhblxzp6joukarw@quack3.lan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

I found a way to avoid this race by splitting lo_open() into two phases using task_work_add().
Christoph Hellwig is trying to take a look at https://lkml.kernel.org/r/f6b947d0-1047-66b3-0243-af5017c9ab55@I-love.SAKURA.ne.jp .

On 2022/01/12 22:16, Jan Kara wrote:
> I don't think we can fully solve this race in the kernel and IMO it is
> futile to try that - depending on when exactly systemd-udev decides to

s/systemd-udev/systemd-udevd/g

> close /dev/loop0 and how exactly mount decides to implement its loop device
> reuse, different strategies will / will not work.

Assuming memory leak

 +	spin_unlock(&loop_delete_spinlock);
-+	if (err)
-+		return err;
++	if (err) {
++		kfree(lot);
++		kfree(lrt);
++		return err;
++	}
 +	/* Add to spool, for -ENOMEM upon release() cannot be handled. */

in that patch is fixed, trying to solve this race on the kernel side looks not such bad.

