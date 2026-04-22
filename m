Return-Path: <util-linux+bounces-1146-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPZoD20T6WmtUAIAu9opvQ
	(envelope-from <util-linux+bounces-1146-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Wed, 22 Apr 2026 20:29:01 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96466449B9E
	for <lists+util-linux@lfdr.de>; Wed, 22 Apr 2026 20:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 517E03091329
	for <lists+util-linux@lfdr.de>; Wed, 22 Apr 2026 18:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72853806A2;
	Wed, 22 Apr 2026 18:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b="jCF6EMSM"
X-Original-To: util-linux@vger.kernel.org
Received: from mail.smrk.net (mail.smrk.net [45.76.87.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1EB2475F7
	for <util-linux@vger.kernel.org>; Wed, 22 Apr 2026 18:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.76.87.244
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776882314; cv=none; b=c9CV8b6SnrA6iTuMjpLQuAAw1P7J6aoVfVIEaGT3ltqeeEppsegggWafcG/98Wg5ydlQhHghRn9TMSWf02d4NXLdCzG5VRV34pFKSxa/TzI/LzA7kul3Vrf7n3VXCkXeKWyWEXVjXdUQ9cuS3qRDojkISJEtb/9yNEpNkRquavc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776882314; c=relaxed/simple;
	bh=KRDRPwUZD2rekaXYxxpGut0Z33q6rHj/ap6kWFx0/IM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aLkoFM8bUlBPAeaSWHV78glPNKCob7YFmLfFL2uDnsMxhzccf34hQ4SKRK+EfyD8gbfxplRTYGCExYJPZ9EO0JopoTOYPHYkHWeMK+GJUgEKYdMdrqW9CcsVrwTBsOmQ4Rl1oEX+9CDKP32hd6k7nuv8XHuzDq5l2kJYbTjXrK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net; spf=pass smtp.mailfrom=smrk.net; dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b=jCF6EMSM; arc=none smtp.client-ip=45.76.87.244
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smrk.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
	t=1776882302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vl9H+RsW+/eM38MjQyWWeVKLp7tLg+Ng/gMzjR+8GGY=;
	b=jCF6EMSMHienhOggbvaiRhhf4zgrcLe/Z0ydgxjV+Z7a79/IsQC6UHZ0GdkfRJBbirdZD8
	w38dgiJM3KYNqWoEzHFsgMAbqpZ23/QRKhttq7M8RjbTHBfy6xn/Z+YQ3zDG9ZZ+DIXxY4
	NomdQ58rYouVPTz29QpmVj7bXaq/rjyxWJZ2E8/dKta+ZG5Z/fxOBoEVelh3YL7oCVVHKS
	4Fm50MN/aV6j5tWfGSVIZhGcgpyV8VgCBkmCZ93O8HbYsij3JxI8AXKdTUre4RBZjn11PB
	gRE+E2wOYeT5puCoUtbQ7OcQOAdylZl6yYKa+JyYR/7OxwYec4fAy1D1PTlltw==
Received: from localhost (<unknown> [192.168.5.2])
	by smrk (OpenSMTPD) with ESMTPSA id 00a8d2a6 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 22 Apr 2026 20:25:02 +0200 (CEST)
From: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To: util-linux@vger.kernel.org,
	Benno Schulenberg <bensberg@telfort.nl>
Subject: [PATCH] copyfilerange: (man) fix swapped offsets in command example
Date: Wed, 22 Apr 2026 20:25:03 +0200
Message-ID: <20260422182503.1111558-1-stepnem@smrk.net>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <bd1c4673-ab3a-4934-a7d1-8113a48c9811@telfort.nl>
References: <20260420180528.943663-1-stepnem@smrk.net> <bd1c4673-ab3a-4934-a7d1-8113a48c9811@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.09 / 15.00];
	R_MIXED_CHARSET(1.25)[subject];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[smrk.net,none];
	R_DKIM_ALLOW(-0.20)[smrk.net:s=20221002];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[vger.kernel.org,telfort.nl];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-1146-lists,util-linux=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stepnem@smrk.net,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[smrk.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smrk.net:email,smrk.net:dkim,smrk.net:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 96466449B9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---

On Wed, 22 Apr 2026 08:17:46 +0200
Benno Schulenberg wrote:

> The convention for the subject line when man pages are affected is:
>
>    program: (man) description of change

Interesting.

I did recheck both Documentation/howto-contribute.txt and recent man
page commits before sending the patch, and, having failed to identify
clear guidance, went with the pattern that made more sense to me.

That said, I see now that, had I gone more quantitative about it, I
might have picked the one you prefer :-D

; git log | grep -c '(man): '
21
; git log | grep -c ': (man)'
289

Unfortunately I didn't.

In any case, if the preference is felt strongly enough to require
rerolls just for that, I believe it would make a great addition to
howto-contribute.txt (or at least applying it consistently in the actual
project commit messages; the most recent '(man): ' is from 19. 4.).

Thanks,

  Štěpán

 misc-utils/copyfilerange.1.adoc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/misc-utils/copyfilerange.1.adoc b/misc-utils/copyfilerange.1.adoc
index 303a1a7b25e2..89b95e9516fa 100644
--- a/misc-utils/copyfilerange.1.adoc
+++ b/misc-utils/copyfilerange.1.adoc
@@ -71,7 +71,7 @@
 
 copyfilerange split-first-mb join ::
 
-copyfilerange split-remainder join 1M::
+copyfilerange split-remainder join :1M:
 ....
 
 == SEE ALSO

base-commit: fff8c59c75355d365a69f86719e7bd7818c1daf4
-- 
2.53.0


