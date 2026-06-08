Return-Path: <util-linux+bounces-1185-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lvJqClgRJ2p6rAIAu9opvQ
	(envelope-from <util-linux+bounces-1185-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 08 Jun 2026 21:00:40 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 653DC659EF8
	for <lists+util-linux@lfdr.de>; Mon, 08 Jun 2026 21:00:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=debian.org header.s=smtpauto.stravinsky header.b=IQEoXncK;
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1185-lists+util-linux=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="util-linux+bounces-1185-lists+util-linux=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=debian.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45043304B13F
	for <lists+util-linux@lfdr.de>; Mon,  8 Jun 2026 18:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D3563D4129;
	Mon,  8 Jun 2026 18:44:13 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68FB32B11F
	for <util-linux@vger.kernel.org>; Mon,  8 Jun 2026 18:44:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780944253; cv=none; b=oQuGytYJnAkCdn4W4GkmDIK3Prgr+u8pMcUJCgJfmccMdKW6apFzP7y5p464URuY+nY4BidzALekysvW/Bq3Ci03BkBEzhfsGv5gAvSjPP4DvYxe9oHq50BFfHkc/wbRLzSAZEsRMI2QlFkn1EEymsd8vdVnBtYy4ofrZvT9YcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780944253; c=relaxed/simple;
	bh=+M9YS8vvEFO99PPfv9ToMuZ1cFWW9RLydmtuKJJ/Q7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lH6oZdpoWXBiID6XnkCl+y93s5PaNQWyOJiP8h5JgMz6jPEafj/bxy36SRa8j2nuAoOJTWxd0TcxJq+5/Y2z/yWGxb1HAR1rUUPKychdyDtm8+tqrdt0JpcByLBgoGCTspTRfuC5jCMfSkD/gX+F+Gin2greXWNue1kHBAcYAks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=IQEoXncK; arc=none smtp.client-ip=82.195.75.108
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=GwBiHVcTIwU23ez3utO3xiVt0Y+QxSFYS1mTZ45q6cg=; b=IQEoXncKUTdUxplFzzRG2lBz3R
	JMFRV+E2nAy9d+YZqPxV2122OL+sw346nI9qiOymcfTNm4wddkBMu6sdop3Q7Hw6mesgnmoLgVGLG
	Z5XuECT29c+gdnS6BPHHc1YSZ8bTaMeG5BE82MV3Ue7v74J8iIR//CMB8jXEqkGG9e0waVdkA1dIT
	X7hnIOApLAriHqBPtJmoxly3gzgL+hn0ihzjddPfWxGw3p2EC93MIfZnvDc96FaOEJW36gaURzTUK
	SpSfepIDQcccMlDpgbODi+uKqOsKDxjcjmhR4Zx9kA0HmUpAWDNsgzQwGG7wm3U0j3dgULs5z78Oq
	ZlrOgVWw==;
Received: from authenticated-user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <zeha@debian.org>)
	id 1wWexB-007pEn-2k;
	Mon, 08 Jun 2026 18:44:06 +0000
Date: Mon, 8 Jun 2026 20:44:03 +0200
From: Chris Hofstaedtler <zeha@debian.org>
To: Karel Zak <kzak@redhat.com>, 1138789@bugs.debian.org
Cc: util-linux@vger.kernel.org,
	Johannes =?utf-8?Q?W=C3=BCller?= <johanneswueller@gmail.com>,
	debian-loongarch@lists.debian.org
Subject: Re: Bug#1138789: [PATCH] mkswap: use 64k pages in file-existing test
Message-ID: <aicNc4MZ3dfH7sDb@per.namespace.at>
References: <aiCHUJ8pmy_Atx2S@per.namespace.at>
 <aiCHUJ8pmy_Atx2S@per.namespace.at>
 <aiCI1IeBms90Uzy0@per.namespace.at>
 <aiFqhPSChxTxAuZv@zeha.at>
 <aiCHUJ8pmy_Atx2S@per.namespace.at>
 <vwrh76odob5kr7mdtatgsuqrftfybisieyhb3dmgch5y4rdukq@6zmqirjnhewi>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <vwrh76odob5kr7mdtatgsuqrftfybisieyhb3dmgch5y4rdukq@6zmqirjnhewi>
X-Debian-User: zeha
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.stravinsky];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1185-lists,util-linux=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kzak@redhat.com,m:1138789@bugs.debian.org,m:util-linux@vger.kernel.org,m:johanneswueller@gmail.com,m:debian-loongarch@lists.debian.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[zeha@debian.org,util-linux@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,lists.debian.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zeha@debian.org,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[debian.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 653DC659EF8

On Mon, Jun 08, 2026 at 01:00:58PM +0200, Karel Zak wrote:
> On Thu, Jun 04, 2026 at 02:20:56PM +0200, Chris Hofstaedtler wrote:
> > Some systems run with kernels using page sizes other than 4K. The
> > file-existing test used a file of 10 pages at 4K. This would fail on
> > kernels with higher page sizes (here 16K) like this:
> > 
> >   mkswap: error: swap area needs to be at least 160 KiB
> > 
> > Use 10 * 64K pages, hopefully allowing all kernels with 4K, 16K, 64K
> > pages to pass the tests.
> > 
> > Noticed on Debian loong64 kernel 7.0.9+deb14-loong64, and on sparc64 and
> > alpha.
> > 
> > Bug: https://bugs.debian.org/1138789
> 
> It was already fixed by commit c5da6dcfe, which explicitly forces the
> page size to 4096 rather than extending the file size.

Ah, thank you! I've pulled this commit into our build.

Best,
Chris

