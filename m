Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7DD37173306
	for <lists+util-linux@lfdr.de>; Fri, 28 Feb 2020 09:35:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726538AbgB1If3 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 28 Feb 2020 03:35:29 -0500
Received: from mail-il1-f196.google.com ([209.85.166.196]:42754 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726207AbgB1If3 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 28 Feb 2020 03:35:29 -0500
Received: by mail-il1-f196.google.com with SMTP id x2so2023830ila.9
        for <util-linux@vger.kernel.org>; Fri, 28 Feb 2020 00:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OXyFeX6mAXl7ibpfgMxisE4ycSpVpmIz9s5cjNf8Vhw=;
        b=pn3452AKsTBvGlo0Y5JA0NZltS3uiCzuNxlOu9vIU/91jdvfz1MmnUcdniXZft8fOK
         uRgelnJFXnk/5446/FJEkurj9vFQkfopb6YzN9hGnaI6ygpIsXBuRwoK4kfbvuwENiZZ
         0wpCmRg1DtQDcyWKqHDbVr5FOAQOpPzh6yVGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OXyFeX6mAXl7ibpfgMxisE4ycSpVpmIz9s5cjNf8Vhw=;
        b=t5/+eikuosOpKO2T+ct4ht66MoME0osQbS95mqjCXnHA+0gNTi6poErsxG/EfvEgI3
         u+RgH+WzP6t+D9znqz2M2MsHICaeBWISjKUZFuEmbpL+uyHUsLLvcNuHGuGZs7rCl5nf
         PLKg9YE8HYWuYaVZB+xA73rNxtzmiDs407b+3YOODpcFMQRCyuSTjtecE2zfldukqENp
         /x5vMpchYQyHOejeZbGC2SZJBg7FIvl344fg/0BTisqqC0oPErzboYZEsg3IccUrNpYV
         HhdO5bxu4nSZDHutY/4DWVApICC6pVVb2V6yORaZ0S+Q37mdEbbnGf9l3tRK5OvkrfTz
         xfGQ==
X-Gm-Message-State: APjAAAWzQLcb3bRfQe4ay5sluZf+z7/6BqSLvHzcvIfxTviwEqbdJLEs
        zX9oIiHiO+6pv8b9Iy1K2p7kZBhV64G5d+/4RuFdnyF0d9Y=
X-Google-Smtp-Source: APXvYqxjtpW0+aq1pP5LqW+8ExOWmG1iZmCw8TTmpTp910yfA5bDPzQCZIQLWAdbpcyM6H+iB+v7QzmYJWaDKFsm31s=
X-Received: by 2002:a92:c0c9:: with SMTP id t9mr3379386ilf.174.1582878928605;
 Fri, 28 Feb 2020 00:35:28 -0800 (PST)
MIME-Version: 1.0
References: <CAOssrKehjnTwbc6A1VagM5hG_32hy3mXZenx_PdGgcUGxYOaLQ@mail.gmail.com>
 <1582556135.3384.4.camel@HansenPartnership.com> <CAJfpegsk6BsVhUgHNwJgZrqcNP66wS0fhCXo_2sLt__goYGPWg@mail.gmail.com>
 <a657a80e-8913-d1f3-0ffe-d582f5cb9aa2@redhat.com> <1582644535.3361.8.camel@HansenPartnership.com>
 <CAOssrKfaxnHswrKejedFzmYTbYivJ++cPes4c91+BJDfgH4xJA@mail.gmail.com>
 <1c8db4e2b707f958316941d8edd2073ee7e7b22c.camel@themaw.net>
 <CAJfpegtRoXnPm5_sMYPL2L6FCZU52Tn8wk7NcW-dm4_2x=dD3Q@mail.gmail.com>
 <3e656465c427487e4ea14151b77d391d52cd6bad.camel@themaw.net>
 <CAJfpegu5xLcR=QbAOnUrL49QTem6X6ok7nPU+kLFnNHdPXSh1A@mail.gmail.com>
 <20200227151421.3u74ijhqt6ekbiss@ws.net.home> <ba2b44cc1382c62be3ac896a5476c8e1dc7c0230.camel@themaw.net>
In-Reply-To: <ba2b44cc1382c62be3ac896a5476c8e1dc7c0230.camel@themaw.net>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Fri, 28 Feb 2020 09:35:17 +0100
Message-ID: <CAJfpeguXPmw+PfZJFOscGLm0oe7dUQY4CYXazx9=x020Fbe86A@mail.gmail.com>
Subject: Re: [PATCH 00/17] VFS: Filesystem information and notifications [ver #17]
To:     Ian Kent <raven@themaw.net>
Cc:     Karel Zak <kzak@redhat.com>, Miklos Szeredi <mszeredi@redhat.com>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        Steven Whitehouse <swhiteho@redhat.com>,
        David Howells <dhowells@redhat.com>,
        viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Jann Horn <jannh@google.com>,
        "Darrick J. Wong" <darrick.wong@oracle.com>,
        Linux API <linux-api@vger.kernel.org>,
        linux-fsdevel <linux-fsdevel@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Lennart Poettering <lennart@poettering.net>,
        =?UTF-8?Q?Zbigniew_J=C4=99drzejewski=2DSzmek?= <zbyszek@in.waw.pl>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        util-linux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Feb 28, 2020 at 1:43 AM Ian Kent <raven@themaw.net> wrote:

> > I'm not sure about sysfs/, you need somehow resolve namespaces, order
> > of the mount entries (which one is the last one), etc. IMHO translate
> > mountpoint path to sysfs/ path will be complicated.
>
> I wonder about that too, after all sysfs contains a tree of nodes
> from which the view is created unlike proc which translates kernel
> information directly based on what the process should see.
>
> We'll need to wait a bit and see what Miklos has in mind for mount
> table enumeration and nothing has been said about name spaces yet.

Adding Greg for sysfs knowledge.

As far as I understand the sysfs model is, basically:

  - list of devices sorted by class and address
  - with each class having a given set of attributes

Superblocks and mounts could get enumerated by a unique identifier.
mnt_id seems to be good for mounts, s_dev may or may not be good for
superblock, but  s_id (as introduced in this patchset) could be used
instead.

As for namespaces, that's "just" an access control issue, AFAICS.
For example a task with a non-initial mount namespace should not have
access to attributes of mounts outside of its namespace.  Checking
access to superblock attributes would be similar: scan the list of
mounts and only allow access if at least one mount would get access.

> While fsinfo() is not similar to proc it does handle name spaces
> in a sensible way via. file handles, a bit similar to the proc fs,
> and ordering is catered for in the fsinfo() enumeration in a natural
> way. Not sure how that would be handled using sysfs ...

I agree that the access control is much more straightforward with
fsinfo(2) and this may be the single biggest reason to introduce a new
syscall.

Let's see what others thing.

Thanks,
Miklos
