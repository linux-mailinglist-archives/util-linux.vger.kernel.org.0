Return-Path: <util-linux+bounces-1173-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d2rJETNwIGrg3QAAu9opvQ
	(envelope-from <util-linux+bounces-1173-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Wed, 03 Jun 2026 20:19:31 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E3E63A7CD
	for <lists+util-linux@lfdr.de>; Wed, 03 Jun 2026 20:19:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=debian.org header.s=smtpauto.stravinsky header.b=GbHyEOd3;
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1173-lists+util-linux=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="util-linux+bounces-1173-lists+util-linux=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=debian.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C72A630296EB
	for <lists+util-linux@lfdr.de>; Wed,  3 Jun 2026 18:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CBD93F44C9;
	Wed,  3 Jun 2026 18:17:09 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACE73DD51F
	for <util-linux@vger.kernel.org>; Wed,  3 Jun 2026 18:17:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780510629; cv=none; b=uKI8Xjm0Y4IeTuNxI52LAs1pY7FRN0IcgcBMRGItCSRKsxOU1WsxbrJ+spMfAi2qSJCWX2Cvx6jiui5tRaz2wpm6rz3p5xl67XNLWAW2TFVQ95N6fY3M8uSSCERSxMyJc3AApLI+3MuYrFx7Ylqi1JNJ0Ja9Asm1VY1ZjXPsuLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780510629; c=relaxed/simple;
	bh=Scj8WfI1ah1QJqk/Sp6V7jCfCPO7BVhaa3ULA2uM+jg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U6vCrXaRBc3dEVJjQep94O/AZJIBIrqmfFYVrsmj22uerxqSqb1b4gDSvemuy1BRD86Eoum7u9j/kFqCc5qHr2BxzWzePoDpyFFVdHixRZapjKFtfcqsZfp9diudHgS52Z94TkZjKbwCFJ+KzP2W1ktu5Er0rR5Sy+F6VsYPl+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=GbHyEOd3; arc=none smtp.client-ip=82.195.75.108
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ltLnJWiwf786iFBzZhCLsgXhgR46GtVszfAfwpp9QdQ=; b=GbHyEOd3mRQ/T84Yfz8NEi3LqK
	h2rpTsgfpkWovo50AxTXqO7bxEVSf8IWBZJTJDQl1zlcAag1AyHXmgk7WY+hWIwMR+8H4AuKbJyQz
	k8YOMfWcX7CcSd4dcQQWOrrpwJA5FRC60SzPHYLwWWcVVnnz3rQ10O/ifsBFBhBjtgUPswzPyGXyx
	qD8wVA/aeuw6FjJGb0hO5QycuRDa3V8wwujf3h3HJGxy86z6pX7lroS23SYWNcYdNeXH8Qzs1N6tl
	Rjaeb+on9/Poi1K0NZ97U4x0UY+kUomO1+CjPvKeTRJDKPeEhQRSq3WYH0h+h3CGCQxrt1Vl1QtBD
	M3CCXkOQ==;
Received: from authenticated-user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <zeha@debian.org>)
	id 1wUq9H-003vPO-0R;
	Wed, 03 Jun 2026 18:17:03 +0000
Date: Wed, 3 Jun 2026 20:17:01 +0200
From: Chris Hofstaedtler <zeha@debian.org>
To: util-linux@vger.kernel.org
Cc: Ralph Ronnquist <ralph@selfhost.au>, 1134639@bugs.debian.org
Subject: Re: Bug#1134639: nsenter -t 1 -m escapes mount and pid namespaces
Message-ID: <aiBvnWAjX7uu8ydx@per.namespace.at>
References: <aejkWHDXmpCX7Gh7@smyga.hemma>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aejkWHDXmpCX7Gh7@smyga.hemma>
X-Debian-User: zeha
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.stravinsky];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1173-lists,util-linux=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:util-linux@vger.kernel.org,m:ralph@selfhost.au,m:1134639@bugs.debian.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[zeha@debian.org,util-linux@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zeha@debian.org,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[debian.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,per.namespace.at:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38E3E63A7CD

Hi Ralph,

sorry for the late reply. I am not an expert on namespaces, and have 
thus forwarded your bug to the upstream mailing list.

On Thu, Apr 23, 2026 at 01:08:08AM +1000, Ralph Ronnquist wrote:
> I observed this ina simple test setup, with on ordinary filesystem
> built with {debootstrap --variant=minbase sid FS ...}
> 
> First: {unshare -m -p -f chroot FS} will change root into that
> filesystem with unshared mount and pid namespaces.
> 
> Next: {mount -t proc proc /proc} will mount the procfs for that pid
> namespace. We see with {ls -l /proc/1/ns/mnt} the identity of the
> unshared mount namespace, which is different from the identity before
> chroot.
> 
> But: {nsenter -t 1 -m -- ls -l /proc/1/ns/mnt} shows the identity of
> the host mount namespace -- the outer namespace.
> 
> Thus {nsenter -t 1 -m} "escapes" from the unshared namespace to the
> containing namespace. And for example: {nsenter -t 1 -m /bin/sh}
> starts a shell in the outer mount and pid namespace(s)!
> 
> This seems to be a severe bug.
> 
> Apparently {nsenter -t 1 -m} finds pid 1 in the outer namespace rather
> than in the call pid namespace.

Hopefully someone from upstream can shed a light :-)

Chris

