Return-Path: <util-linux+bounces-1123-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cA56IEahz2nDyAYAu9opvQ
	(envelope-from <util-linux+bounces-1123-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Fri, 03 Apr 2026 13:15:18 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D047A393959
	for <lists+util-linux@lfdr.de>; Fri, 03 Apr 2026 13:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 234C3302A2DE
	for <lists+util-linux@lfdr.de>; Fri,  3 Apr 2026 11:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 620D838AC66;
	Fri,  3 Apr 2026 11:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="DynJHFRb"
X-Original-To: util-linux@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58A2315D53
	for <util-linux@vger.kernel.org>; Fri,  3 Apr 2026 11:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775214873; cv=none; b=l5BW5tEaYIae3PxTkWCmN9jcD6XpR+p7OYWeDxjInI5YOP3fmS3ruq5Y7hVPvJCe0C3rkiaZqkr9K5S8QTSesWzsDsXkwF4Nl8N1noBWC78cTH2fp60koDHdPhDQahNwQd+2wcKgBD4ghhWXl/mDfoqPK5Y1pKT19tn0oRAAUKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775214873; c=relaxed/simple;
	bh=uV3p0EpndNJ7vFNq5VvTv1GzbWzbIkVns2d13/NaudY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HppKrSyLIfXGS5lXDjfXQuiXYWzqDSUL/XVBhQT3IfaEv2HLApdBWz2OHK0QQV76/0V5/beSMiIxYzwoiMkSCEkLkP5xktmz+CFEijZ3FAHY8X8+6ZnrqiqZQNYoRuK1RJGVOVzFqHKc49pSCHmaPZA7d5Wb27P9gYsuuWt/sVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=DynJHFRb; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=LhUKV7YgkLEwDVdtGf7vqsqDewl0SAzuj5YozYBTiIY=; b=DynJHFRbDW6rEAzKvntTFqokaa
	/u5cPYESvNmyvZeYfT4aTj08lLeTdGUHv/3EH6n49TkY9EwGCRK5ngpcWTLyINH8h+NfJi19CZtqW
	uAFERIuuPd8fj2rKG+rBBoUK3/fjFrBjwOVPF3xSYl3VuKcwMLqeNQmVtPIcPwfX8VKuP7DBIZk9H
	/wfkC/0/BmgjB1wEWgwViDUYd/Id+kucOZeft+JJaFzbyHDW/iWsvFFiXrgxXxMG2GdMEEc/IvIOx
	3mOwVeuPAKKbOt6necajXbetC4vyyCbtQA04h//oI9+GZ5x2sYWEyhKHPltF9hy77e360goTBgbH5
	SDSFhU+g==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <zeha@debian.org>)
	id 1w8cTu-004UkB-0U;
	Fri, 03 Apr 2026 11:14:29 +0000
Date: Fri, 3 Apr 2026 13:14:27 +0200
From: Chris Hofstaedtler <zeha@debian.org>
To: Katie May <katie.may@canonical.com>, 1132588@bugs.debian.org
Cc: util-linux@vger.kernel.org, cgoesche <cgoesc2@wgu.edu>
Subject: Re: Bug#1132588: runuser: missing whitelist-environment option
Message-ID: <ac-hE5WXBkG4pKZa@per.namespace.at>
References: <CA+499YPv1qATJg3SWqz_UrY77Lksibs5UJAaAhck0Vct3EdSuQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CA+499YPv1qATJg3SWqz_UrY77Lksibs5UJAaAhck0Vct3EdSuQ@mail.gmail.com>
X-Debian-User: zeha
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.stravinsky];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[debian.org];
	TAGGED_FROM(0.00)[bounces-1123-lists,util-linux=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[debian.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zeha@debian.org,util-linux@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,wgu.edu:email,per.namespace.at:mid]
X-Rspamd-Queue-Id: D047A393959
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

[CC'ing upstream]

On Fri, Apr 03, 2026 at 11:57:46AM +0200, Katie May wrote:
> Package: util-linux
> Version: 2.42-1
> 
> Dear Maintainer,
> 
> runuser no longer accepts the whitelist-environment option (both in long
> and short form) despite it still being listed in the man page.
> 
> For example, without specifying whitelist, runuser works
> ```
> # runuser -l test -c id
> uid=12345(test) gid=12345(test) groups=12345(test)
> ```
> 
> But if I specify an environment variable to whitelist I get an error
> ```
> # runuser -l test -w MY_VAR -c id
> -sh: 0: Illegal option -w
> ```

It appears to work when placing the options in a different order, 
f.e. this works:

  # MY_VAR=foo runuser -w MY_VAR -l root -c env

Notably the placement of the -l option and the username seem to be 
the problem.

I'll note that `MY_VAR=foo runuser -l root -w MY_VAR -c env` worked in 2.41.

Maybe ac0147fd14b348097c82c1c89a5417b582e26bad broke this?

| commit ac0147fd14b348097c82c1c89a5417b582e26bad
| Author:     cgoesche <cgoesc2@wgu.edu>
| AuthorDate: Sun Nov 2 11:55:09 2025 -0500
| Commit:     cgoesche <cgoesc2@wgu.edu>
| CommitDate: Mon Nov 3 13:16:19 2025 -0500
| 
|     su: pass arguments after <user> to shell
| 
|     The su(1) manpage describes how the arguments after <user>
|     are passed to the invoked shell. However this is empirically
|     wrong, as option flags after <user> are interpreted by su(1)
|     and will eventually never be passed or yield an error that
|     terminates the program due to an unrecognized option flag.
| 
|     To fix this we can change getopt(3)'s scanning mode with a '+'
|     prefixed to 'optstring', this will make it so that getopt(3)
|     stops processing argv elements on the first occurrence of a
|     non-option argument, e.g. '-' or '<user>'.
| 
|     Additionally, if the argument that directly follows '-' is an
|     option flag, su(1) will assume that this argument and the ones
|     that follow, are to be passed to a shell invoked by the root user.
| 
|     Addresses: https://github.com/util-linux/util-linux/pull/1809
|     Signed-off-by: cgoesche <cgoesc2@wgu.edu>


Chris


