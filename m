Return-Path: <util-linux+bounces-1183-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mHYoJEOkJmqHaQIAu9opvQ
	(envelope-from <util-linux+bounces-1183-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 08 Jun 2026 13:15:15 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E08936558E7
	for <lists+util-linux@lfdr.de>; Mon, 08 Jun 2026 13:15:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="eUrC/EZs";
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1183-lists+util-linux=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="util-linux+bounces-1183-lists+util-linux=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 372653112593
	for <lists+util-linux@lfdr.de>; Mon,  8 Jun 2026 11:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D797B33DEE5;
	Mon,  8 Jun 2026 11:01:08 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85DC63382CB
	for <util-linux@vger.kernel.org>; Mon,  8 Jun 2026 11:01:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780916468; cv=none; b=FQ2KCMYD0n4q1tyn8WTAy43CruI748M/lDD0gF/+G++SqPuuagbMJjn/G8q7Yv3Spqen2IWkl5G4z7D6yBaovFGC6AFggPpM4cUjGsFbJ9R4pwmabO2TBYh1x1chGOQ0pm6YI1c+kNi9KijKo/q4/uBmCnGgVK3QdsPKMTrp6N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780916468; c=relaxed/simple;
	bh=aNov1iHDJ937gk0LpyeUdzO6g9A1t0YXHsOESzpMr/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eSjWcBC75UpTCr+bUfA20pHFFwlhmVID2D2UyAbHpqDVUiDheEQT4AigY3OJTeQvjPpkiHBCJjGMUu4xVj7CmkdKJzAuYtlBy0Dmbwu2Sghqh3CNethvkWn6hKgRlA6+DrqiPOMmAoZWenYOkN7DmdYpPBrgPfya7xN6EJC1tQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eUrC/EZs; arc=none smtp.client-ip=170.10.133.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1780916466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ChNcmOb/25r5ghm/La3zXNbiqjxSymOigz/hxgoYXZw=;
	b=eUrC/EZs8tOYzDKAP+VJFoJPID5LQ6FdHCmlHo7sOqdPi2ZiTQOW8etkFhVonvbQ0hgzCp
	wdqEQEcvf7MrFpVB8VKv1EBIS8Dd/6uUuP8m3Ml1aqfBIejoa/Z6U0z8jYDdZgv9paULai
	fvsEpl886eVeXkd9ASUwsllqi52Ytw8=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-20-6I7nXhIwPVqdW-dJVvVVYA-1; Mon,
 08 Jun 2026 07:01:04 -0400
X-MC-Unique: 6I7nXhIwPVqdW-dJVvVVYA-1
X-Mimecast-MFC-AGG-ID: 6I7nXhIwPVqdW-dJVvVVYA_1780916463
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 794B81955DAE;
	Mon,  8 Jun 2026 11:01:03 +0000 (UTC)
Received: from ws (unknown [10.44.33.159])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ED55F180034F;
	Mon,  8 Jun 2026 11:01:01 +0000 (UTC)
Date: Mon, 8 Jun 2026 13:00:58 +0200
From: Karel Zak <kzak@redhat.com>
To: Chris Hofstaedtler <zeha@debian.org>
Cc: util-linux@vger.kernel.org, 
	Johannes =?utf-8?Q?W=C3=BCller?= <johanneswueller@gmail.com>, 1138789@bugs.debian.org, debian-loongarch@lists.debian.org
Subject: Re: [PATCH] mkswap: use 64k pages in file-existing test
Message-ID: <vwrh76odob5kr7mdtatgsuqrftfybisieyhb3dmgch5y4rdukq@6zmqirjnhewi>
References: <aiCHUJ8pmy_Atx2S@per.namespace.at>
 <aiCHUJ8pmy_Atx2S@per.namespace.at>
 <aiCI1IeBms90Uzy0@per.namespace.at>
 <aiFqhPSChxTxAuZv@zeha.at>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aiFqhPSChxTxAuZv@zeha.at>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-1183-lists,util-linux=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:zeha@debian.org,m:util-linux@vger.kernel.org,m:johanneswueller@gmail.com,m:1138789@bugs.debian.org,m:debian-loongarch@lists.debian.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bugs.debian.org,lists.debian.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,karelzak.blogspot.com:url,6zmqirjnhewi:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E08936558E7

On Thu, Jun 04, 2026 at 02:20:56PM +0200, Chris Hofstaedtler wrote:
> Some systems run with kernels using page sizes other than 4K. The
> file-existing test used a file of 10 pages at 4K. This would fail on
> kernels with higher page sizes (here 16K) like this:
> 
>   mkswap: error: swap area needs to be at least 160 KiB
> 
> Use 10 * 64K pages, hopefully allowing all kernels with 4K, 16K, 64K
> pages to pass the tests.
> 
> Noticed on Debian loong64 kernel 7.0.9+deb14-loong64, and on sparc64 and
> alpha.
> 
> Bug: https://bugs.debian.org/1138789

It was already fixed by commit c5da6dcfe, which explicitly forces the
page size to 4096 rather than extending the file size.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


