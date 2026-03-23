Return-Path: <util-linux+bounces-1112-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sESoMAVDwWnPRwQAu9opvQ
	(envelope-from <util-linux+bounces-1112-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 23 Mar 2026 14:41:25 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C802F323D
	for <lists+util-linux@lfdr.de>; Mon, 23 Mar 2026 14:41:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D24623053DC0
	for <lists+util-linux@lfdr.de>; Mon, 23 Mar 2026 13:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E18B39C00D;
	Mon, 23 Mar 2026 13:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iHa/Kw28"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57F61A38F9
	for <util-linux@vger.kernel.org>; Mon, 23 Mar 2026 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774272775; cv=none; b=O1vGQNwWJilusHNaPjdIWFqy/7Gc9Xl7ayVWbHK6JhwPZSWmDFE51nNdnwMa5r9aB2NzlPtkA13ARabHAOqWQMrrhCb/RbpgoJiY47zxxdL1kXWHZxTK3R8hLwBLwCv9HMmX+nJTZagFZaCrSt6jA4iblWE4hTUjtoVL5P1dguI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774272775; c=relaxed/simple;
	bh=cGYUhZP3zJzjZNMHr7jzLs6AJtNuqiv9ZvCg/I1L1Wg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mkqtg3FQ14uNvdYmAFA4aEjuq+dadzf9N7PghwDaAkVlyVzKaDv4Qc05D84cxwS93wGtC8wAyhuBlkrpPkkiokKF2QnTKWYoM/N4B6j8LdO5yUPJdLYXgdaBg26gFrMsP+LCTML+2ZLrCtQ9Zu8VlGvFQYiRgQANB1PeziuxIac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=iHa/Kw28; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1774272772;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=y2K23hUaS7w+XQr0ut/bYDJub153uxUtcmAbHVNGJ3I=;
	b=iHa/Kw28Wia40p7437Pv3Sup6VH6jjL3s2H/twMC3EhIRgQfXQz8OY0fLwG66vD1RJ50HR
	mteeIaim9tRF7Xv524geJo6DdRH0gCqo/o9TIq1Na6sxFdBhXjhZLvaYjZKC0tnVo14Gk4
	3Yrrd/XR6UpW2jK9WZwGBjKmbFWKaxU=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-673-WX_iBH4RM0aryK6y1WZmkQ-1; Mon,
 23 Mar 2026 09:32:47 -0400
X-MC-Unique: WX_iBH4RM0aryK6y1WZmkQ-1
X-Mimecast-MFC-AGG-ID: WX_iBH4RM0aryK6y1WZmkQ_1774272766
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8C8FD18005BD;
	Mon, 23 Mar 2026 13:32:46 +0000 (UTC)
Received: from ws (unknown [10.45.226.136])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E675918001FE;
	Mon, 23 Mar 2026 13:32:44 +0000 (UTC)
Date: Mon, 23 Mar 2026 14:32:41 +0100
From: Karel Zak <kzak@redhat.com>
To: Anna Wilcox <AWilcox@wilcox-tech.com>
Cc: util-linux@vger.kernel.org, Sam James <sam@gentoo.org>
Subject: Re: [PATCH] test_enosys: Handle musl libc error strings
Message-ID: <uzzujmmlyzncqwxlklu7ltnavmvcdlrbq43r5shz6pu2sjuirx@l3iwcbmfmj2g>
References: <20260323030358.59511-1-AWilcox@Wilcox-Tech.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260323030358.59511-1-AWilcox@Wilcox-Tech.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1112-lists,util-linux=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[util-linux];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,karelzak.blogspot.com:url,wilcox-tech.com:email]
X-Rspamd-Queue-Id: 24C802F323D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 22, 2026 at 10:03:52PM -0500, Anna Wilcox wrote:
> strerror(3) on musl gives different strings for some of the errnos we
> test for, so the tests incorrectly fail on musl.  Change the strings
> back into the glibc ones so they match the expected values properly.
> 
> Signed-off-by: Anna Wilcox <AWilcox@Wilcox-Tech.com>
> Suggested-by: Sam James <sam@gentoo.org>
> ---
>  tests/ts/enosys/enosys | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/tests/ts/enosys/enosys b/tests/ts/enosys/enosys
> index 591b292a8..698283056 100755
> --- a/tests/ts/enosys/enosys
> +++ b/tests/ts/enosys/enosys
> @@ -20,6 +20,12 @@ TS_DESC="enosys"
>  . "$TS_TOPDIR"/functions.sh
>  ts_init "$*"
>  
> +function ts_canonicalise_strerror {
> +	sed -Ei -e 's/Out of memory/Cannot allocate memory/g' \
> +		-e 's/Not a tty/Inappropriate ioctl for device/g' \
> +		-e 's/No error information/Success/g' $1
> +}

For something like this we already use

  tests/helpers/test_strerror.c

for example (git grep result):

tests/ts/fdisk/oddinput:ts_check_test_command "$TS_HELPER_STRERROR"
tests/ts/fdisk/oddinput:sed -i -e "s@$($TS_HELPER_STRERROR ENOENT)@ENOENT@" $TS_OUTPUT $TS_ERRLOG
tests/ts/fdisk/oddinput:sed -i -e "s@$($TS_HELPER_STRERROR EINVAL)@EINVAL@" $TS_OUTPUT $TS_ERRLOG

It replaces the error message with the errno abbreviation.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


