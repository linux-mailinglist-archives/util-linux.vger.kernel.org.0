Return-Path: <util-linux+bounces-1174-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HBTwLeCIIGoz4wAAu9opvQ
	(envelope-from <util-linux+bounces-1174-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Wed, 03 Jun 2026 22:04:48 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3187663B0A4
	for <lists+util-linux@lfdr.de>; Wed, 03 Jun 2026 22:04:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=debian.org header.s=smtpauto.stravinsky header.b=m4nGrvGs;
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1174-lists+util-linux=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="util-linux+bounces-1174-lists+util-linux=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=debian.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4B7F9302FA56
	for <lists+util-linux@lfdr.de>; Wed,  3 Jun 2026 20:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06653AD524;
	Wed,  3 Jun 2026 20:04:43 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DD13F0ABC
	for <util-linux@vger.kernel.org>; Wed,  3 Jun 2026 20:04:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780517083; cv=none; b=TxyJqEgRX6XNW92jp64IMWKUjKOSp4PFWrcFPz6FN1fFmCKQxrfCq3oJqtp5PWE0iY6mxada42hItGzrvRK95NnfbHiYhvy29AzXKK71hevqp7jbSjZBHNAIoiC2a3FwWA3vo/kYTcwJU4o4g3zx3Ls4r4QfBaIiwepcToH0RNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780517083; c=relaxed/simple;
	bh=BWMW6Tv2vsMCQRHWQ0RbfFstwTp8+QCb5ZmscbW9gRw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RN4PTHlL4lhqLwtKYhN9R4iS3SsO+RPn5ma6ToiU8RJSUhF1ij2/KlhbbDI2NTjLaOTo+dGS7KH3gUcrph3WviI+Gs9cGPTPvGsa0zIAtUzPolVRJ8XhyQfOzY5z1JfHMIlWm9UWPTU72AIhu2eHsMnxxLvbd69bxqH5gQ7wOU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=m4nGrvGs; arc=none smtp.client-ip=82.195.75.108
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8kGadiHjTi+c//CJ2sUarP9xr4xEkw63Ug/GDF5TaP0=; b=m4nGrvGsJinJQnl5YDPysdwvvG
	ul5UG5uy32dKPLqzy7Br5VNahB1CRs5w4Ftbiu3pig0NBSIEg/wdhIWBWw+1fTM7zOfw6L8NwF7/j
	J+JAPgEPdTKacYBk2aig1+4BRepLkGekO5DeDODWRKoE/ihmwIe++SXVoSiTi/YSWsWCo6APgJCDw
	77dKKAEQ0u83WfdSHvAzf41W4CPyV8X/2Mvcwrtm31mg4Gb/5kRGBYbXaoFFvdoWZdYehLGQ4An+T
	SuPic/TX+vHMJMmG8sgP3rmck/KgamDo7IhNUNt8KRy2SP+6hG4AahVa1OZsByS3QugDZdQCdv1vL
	jgJKH8KQ==;
Received: from authenticated-user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <zeha@debian.org>)
	id 1wUrpO-003z8A-0B;
	Wed, 03 Jun 2026 20:04:38 +0000
Date: Wed, 3 Jun 2026 22:04:36 +0200
From: Chris Hofstaedtler <zeha@debian.org>
To: util-linux@vger.kernel.org
Cc: 1138789@bugs.debian.org,
	Johannes =?utf-8?Q?W=C3=BCller?= <johanneswueller@gmail.com>,
	debian-loongarch@lists.debian.org
Subject: Re: Bug#1138789: FTBFS on loong64: mkswap: error: swap area needs to
 be at least 160 KiB
Message-ID: <aiCI1IeBms90Uzy0@per.namespace.at>
References: <aiCHUJ8pmy_Atx2S@per.namespace.at>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aiCHUJ8pmy_Atx2S@per.namespace.at>
X-Debian-User: zeha
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.stravinsky];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1174-lists,util-linux=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:util-linux@vger.kernel.org,m:1138789@bugs.debian.org,m:johanneswueller@gmail.com,m:debian-loongarch@lists.debian.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[bugs.debian.org,gmail.com,lists.debian.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[zeha@debian.org,util-linux@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zeha@debian.org,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[debian.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3187663B0A4

Hi Johannes, Karel,

util-linux 2.42.1 apparently fails its mkswap tests on loong64. Given 
it fails in mkswap/mkswap-file-existing, I suspect this is "caused" 
by commit 775729884a3945a53df33e0d3ff2ba263b96b59e / 
6d87ff51568c017a6d08043d554bf0ea8dee5457.

Could you take a look please?

> diff-{{{
> --- /dev/null	2026-05-29 12:41:25.961759630 +0000
> +++ /build/reproducible-path/util-linux-2.42.1/tests/output/mkswap/mkswap-file-existing	2026-06-03 19:26:30.186627085 +0000
> @@ -0,0 +1,3 @@
> +mkswap failed
> +mkswap: error: swap area needs to be at least 160 KiB
> +mkswap -F failed on existing file
> }}}-diff
> 
>  FAILED (mkswap/mkswap-file-existing)
> ========= script: /build/reproducible-path/util-linux-2.42.1/tests/ts/mkswap/mkswap =================
> ================= OUTPUT =====================
>      1	mkswap failed
>      2	mkswap: error: swap area needs to be at least 160 KiB
>      3	mkswap -F failed on existing file
> 


Full build log at:

https://buildd.debian.org/status/fetch.php?pkg=util-linux&arch=loong64&ver=2.42.1-1&stamp=1780514831&file=log

Many thanks!
Chris


