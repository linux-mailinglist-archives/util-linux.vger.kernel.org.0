Return-Path: <util-linux+bounces-303-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FFF99D417
	for <lists+util-linux@lfdr.de>; Mon, 14 Oct 2024 17:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D0B1284548
	for <lists+util-linux@lfdr.de>; Mon, 14 Oct 2024 15:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E001AED3F;
	Mon, 14 Oct 2024 15:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hxzlKCYG"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AFE1AC8AE
	for <util-linux@vger.kernel.org>; Mon, 14 Oct 2024 15:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728921467; cv=none; b=HjS7ZjvMoJJ7KPivAfPE9RAEJGpWmPy2VWU3DqXUdyFBU5RwqJ9h1gUHMAL7/ojwCEqmUrH4n2dShlY6QweLikiyy7J6oeBRl/Z2XzmTDQvPHlIZD0p+xJp5ncbCG8W15f4nfuzvKkUOMX+jnJSfqzCprcUXgkYQe6OwJhQei/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728921467; c=relaxed/simple;
	bh=+buNy0g+JjO6nwiBeYM0jRkXzzScx/l1b0NrsWUBKB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C2FgrxXagJ88iP//Lwq0CQnYqeUuH4jeGOHBP+SN8DtmdRUtLms93qHynKFr0SAxzCZX09R9kZVZdqk2xGN+CLjaV87SO6FMrJZQi0JIS5POpFAWr9y4nhoXSz209JdWwFI9DEj3yQBsvg2hsFUeQITs1ZjSLDgrXQWRh1py3l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=hxzlKCYG; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1728921464;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pF6h7VhHHBGfGvVXA7QvUSygCzoMMI9fdNXh9FBZTJw=;
	b=hxzlKCYGwNUtIHwP+RvpHNQGmAl0pQnfjiVcheRyex7O+DJwjHjpTVaZb2qFhYIw+rdAv+
	h5G4TXUFTs4OckgD2bKp094aj/oxbW2ycrc/vGVxg5OoQVAVovnxtZKnkeZ4UiWvye06ol
	fLJQzdPcvOc1rNDFAuoJcJdLMV1GGsE=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-124-SqwDTzCJPqi9hleh9Jd4EQ-1; Mon,
 14 Oct 2024 11:57:41 -0400
X-MC-Unique: SqwDTzCJPqi9hleh9Jd4EQ-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AFFF71955EB3;
	Mon, 14 Oct 2024 15:57:39 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.224.59])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6323D19560AA;
	Mon, 14 Oct 2024 15:57:37 +0000 (UTC)
Date: Mon, 14 Oct 2024 17:57:34 +0200
From: Karel Zak <kzak@redhat.com>
To: Alan Huang <mmpgouride@gmail.com>
Cc: util-linux@vger.kernel.org, linux-bcachefs@vger.kernel.org, 
	Kent Overstreet <kent.overstreet@linux.dev>, Hongbo Li <lihongbo22@huawei.com>, 
	"Darrick J. Wong" <djwong@kernel.org>, xfs <linux-xfs@vger.kernel.org>
Subject: Re: Libmount bug ?
Message-ID: <iipuwlnf73x3zjj4kgpgqqvu4u5t4iefg3qawqgzvl546rrbz5@w7tvj3jr5h2v>
References: <14ADF290-5B46-44D5-83BC-9AE3732B192C@gmail.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <14ADF290-5B46-44D5-83BC-9AE3732B192C@gmail.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40


 Hi Alan,

On Sat, Oct 12, 2024 at 04:57:39PM GMT, Alan Huang wrote:
> The bcachefs has the helper called mount.bcachefs.

do you mean the following script?
https://evilpiepirate.org/git/bcachefs-tools.git/tree/mount.bcachefs.sh

I believe that if you call the regular mount(8) from the script, then
it's probably fine to not worry about the options. mount(8) will be
able to ignore them.

> Currently, there are users using fstab with nofail/user fail to mount,
> we would like to know whether other filesystems using similar helper
> properly handle this.

The mount.nfs command uses libmount internally to generate the
mount(2) syscall flags, so it is not affected by any additional
options.

The mount.fuse command has a list of unwanted mount options:
https://github.com/libfuse/libfuse/blob/master/util/mount.fuse.c#L318-L326

Please note that the "EXTERNAL HELPERS" section in the mount(8) man
page describes which options are ignored.

Also, if your mount helper is setuid (like mount.nfs), you still need
to parse fstab to obtain mount options from a safe source. This is
because options from the command line should be ignored as they are
considered unsafe.

> 
> This is like commit 06e05eb0f78566b68c44328c37d7c28d8655e9df 
> (“libmount: don't pass option "defaults" to helper")
> 
> Or would you like something like this? This might be incomplete though (e.g. owner, noowner etc.)
> 
> diff --git a/libmount/src/optmap.c b/libmount/src/optmap.c
> index d7569a0f0..c13b9ba19 100644
> --- a/libmount/src/optmap.c
> +++ b/libmount/src/optmap.c
> @@ -152,11 +152,11 @@ static const struct libmnt_optmap userspace_opts_map[] =
>     { "auto",    MNT_MS_NOAUTO, MNT_NOHLPS | MNT_INVERT | MNT_NOMTAB },  /* Can be mounted using -a */
>     { "noauto",  MNT_MS_NOAUTO, MNT_NOHLPS | MNT_NOMTAB },  /* Can only be mounted explicitly */
> 
> -   { "user[=]", MNT_MS_USER },                             /* Allow ordinary user to mount (mtab) */
> -   { "nouser",  MNT_MS_USER, MNT_INVERT | MNT_NOMTAB },    /* Forbid ordinary user to mount */
> +   { "user[=]", MNT_MS_USER, MNT_NOHLPS},                             /* Allow ordinary user to mount (mtab) */

This may cause issues with certain helpers (e.g. cifs) where "user="
is a standard option. However, this is something that needs to be
addressed in libmount, as it already handles this use-case for cifs.
The use of MNT_NOHLPS may override this.

> +   { "nouser",  MNT_MS_USER, MNT_INVERT | MNT_NOMTAB | MNT_NOHLPS},    /* Forbid ordinary user to mount */
> 
> -   { "users",   MNT_MS_USERS, MNT_NOMTAB },                /* Allow ordinary users to mount */
> -   { "nousers", MNT_MS_USERS, MNT_INVERT | MNT_NOMTAB },   /* Forbid ordinary users to mount */
> +   { "users",   MNT_MS_USERS, MNT_NOMTAB | MNT_NOHLPS},                /* Allow ordinary users to mount */
> +   { "nousers", MNT_MS_USERS, MNT_INVERT | MNT_NOMTAB | MNT_NOHLPS},   /* Forbid ordinary users to mount */
> 
>     { "owner",   MNT_MS_OWNER, MNT_NOMTAB },                /* Let the owner of the device mount */
>     { "noowner", MNT_MS_OWNER, MNT_INVERT | MNT_NOMTAB },   /* Device owner has no special privs */
> @@ -180,7 +180,7 @@ static const struct libmnt_optmap userspace_opts_map[] =
>     { "sizelimit=", MNT_MS_SIZELIMIT, MNT_NOHLPS | MNT_NOMTAB },	   /* loop device size limit */
>     { "encryption=", MNT_MS_ENCRYPTION, MNT_NOHLPS | MNT_NOMTAB },	   /* loop device encryption */
> 
> -   { "nofail",  MNT_MS_NOFAIL, MNT_NOMTAB },               /* Do not fail if ENOENT on dev */
> +   { "nofail",  MNT_MS_NOFAIL, MNT_NOMTAB | MNT_NOHLPS},               /* Do not fail if ENOENT on dev */

Could this option be usable for some helpers?

I believe the best solution is to follow the Fuse way and define a
list of options to ignore in your fs-specific helper.

The ideal solution would be to implement a better libmount (perhaps
libmount2) where the /sbin/mount.<type> helpers are replaced with
dlopen() modules. This way, the library would handle all the details
such as command line and fstab options.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


