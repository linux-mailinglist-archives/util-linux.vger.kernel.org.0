Return-Path: <util-linux+bounces-1189-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3vafOrVbU2psaAMAu9opvQ
	(envelope-from <util-linux+bounces-1189-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Sun, 12 Jul 2026 11:17:41 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F9C7443C7
	for <lists+util-linux@lfdr.de>; Sun, 12 Jul 2026 11:17:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gouders.net header.s=gnet header.b=mbVO8HkO;
	dmarc=pass (policy=quarantine) header.from=gouders.net;
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1189-lists+util-linux=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="util-linux+bounces-1189-lists+util-linux=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47DEA300E24D
	for <lists+util-linux@lfdr.de>; Sun, 12 Jul 2026 09:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8592E2FD1DA;
	Sun, 12 Jul 2026 09:17:38 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2043770B
	for <util-linux@vger.kernel.org>; Sun, 12 Jul 2026 09:17:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783847858; cv=none; b=OoAz4Dy5VOt+rgs0SLW558OaxMIWa79UJCAWX9QRqq2oGPPEdRwJkM74VIBnTYiV8cwkgSPqpX7d3LNM38+5l5aXBa+29PeynxYN77L9TPZi/Wiww278mi0FQqZTf/rnU3zAitVVPvbB9Jkm/wA+51f258D+mxBRkfo+UejhGws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783847858; c=relaxed/simple;
	bh=gCm4tep+pOrWA3BLDSXfR9ocnNTITJGoYOtYKaywgkI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Pg/NOJQwEVOemKr4VBwFEiPfrm12kcIdYMRA/BxOgX/VZ1wC8KVDeDINyq/7YGbH1qjUXWsotwwtwIkFimV0JuZoHQq+m2rhEjyYBTSAYf8zhesaeMlOIjgeUFuUC3rqa1GbVPoAIoF5pLtjDCXpcu0F0BUFVACnn0G7uIUmEvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gouders.net; spf=pass smtp.mailfrom=gouders.net; dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b=mbVO8HkO; arc=none smtp.client-ip=202.61.206.94
Received: from localhost (ip-109-41-50-22.web.vodafone.de [109.41.50.22])
	(authenticated bits=0)
	by mx10.gouders.net (8.18.2/8.17.1.9) with ESMTPSA id 66C92DwD2420697
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 12 Jul 2026 11:02:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
	t=1783846934; bh=gCm4tep+pOrWA3BLDSXfR9ocnNTITJGoYOtYKaywgkI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=mbVO8HkOgGSzg1OylwpFx4rvzYfv/619FO1bZFqIIjJQwOioIxHGHc/zz2xPVRYt1
	 ikiESCfZ2QvUHkfwUk7F5LHb+iAKwe4iAfd4GhdYpqTEZm4WZhnwG8eAiEK6COnVXP
	 XHvmYMee65gTjb36ElhU/js29vbvC/qDC6RCZtIw=
From: Dirk Gouders <dirk@gouders.net>
To: Chris Hofstaedtler <zeha@debian.org>
Cc: util-linux@vger.kernel.org, Marc Lehmann <debian-reportbug@plan9.de>,
        1141670@bugs.debian.org,
        =?utf-8?B?0L3QsNCx?=
 <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: Bug#1141670: util-linux: very slow code and undefined behaviour
 in handle_interrupt
In-Reply-To: <alLEV6xOOwA1RzU_@zeha.at> (Chris Hofstaedtler's message of "Sat,
	11 Jul 2026 19:34:41 -0300")
References: <178350371646.36377.6056214111743171473.reportbug@cerebro.laendle>
	<alLEV6xOOwA1RzU_@zeha.at>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Sun, 12 Jul 2026 11:02:12 +0200
Message-ID: <ghbjccr36z.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gouders.net,quarantine];
	R_DKIM_ALLOW(-0.20)[gouders.net:s=gnet];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zeha@debian.org,m:util-linux@vger.kernel.org,m:debian-reportbug@plan9.de,m:1141670@bugs.debian.org,m:nabijaczleweli@nabijaczleweli.xyz,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dirk@gouders.net,util-linux@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-1189-lists,util-linux=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dirk@gouders.net,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[gouders.net:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,plan9.de:email,gouders.net:from_mime,gouders.net:dkim,gouders.net:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40F9C7443C7

Hi Chris,

On Sat, Jul 11 2026, Chris Hofstaedtler wrote:

> the following was reported to Debian, regarding the hardlink
> utility. It appears to be an upstream issue. Maybe someone can look at
> it. CC:ing =D0=BD=D0=B0=D0=B1 who seems to have touched the relevant func=
tion last.

it seems, this regression was fixed with:

87831fa19 (hardlink: fix performance regression (inefficient signal evaluat=
ion), 2025-04-29)

The commit message says it improved performance by factor ten.

Regards,

Dirk

> * Marc Lehmann <debian-reportbug@plan9.de> [260708 07:23]:
>>Version: 2.41-5
>>
>>Dear Maintainer,
>>
>>while strace'ing to find out why hardlink is so slow, IO found it does th=
is sequence between every fstatat call:
>>
>>   gettid()                                =3D 36482
>>   getpid()                                =3D 36482
>>   tgkill(36482, 36482, 0)                 =3D 0
>>
>>this seems to be a pretty weird thing to do in a tighht scanning
>>loop. Looking at the code, handle_interrupt is responsible:
>>
>>   /**
>>    * handle_interrupt - Handle a signal
>>    */
>>   static void handle_interrupt(void)
>>   {
>>           switch (last_signal) {
>>           case SIGUSR1:
>>                   print_stats();
>>                   putchar('\n');
>>                   break;
>>           default:
>>                   signal(last_signal, SIG_DFL);
>>                   raise(last_signal);
>>                   break;
>>           }
>>           last_signal =3D 0;
>>   }
>>
>>this is already a weird function to begin with, but crucially, it calls s=
ignal(0,... and raise(0).
>>
>>it seems to me the former is likely undefined behaviour and the latter is
>>just unnecessartily slow.
>>
>>most likely, handle_interrupt simply should not be called after every fst=
atat, or at all, without last_signal bering set beforehand.
>>

