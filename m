Return-Path: <util-linux+bounces-1149-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uID5MRsb72lx6gAAu9opvQ
	(envelope-from <util-linux+bounces-1149-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 27 Apr 2026 10:15:23 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED6146EE74
	for <lists+util-linux@lfdr.de>; Mon, 27 Apr 2026 10:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BDE330067A5
	for <lists+util-linux@lfdr.de>; Mon, 27 Apr 2026 08:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2218F37104E;
	Mon, 27 Apr 2026 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gLfS40+F"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5741E35CB7F
	for <util-linux@vger.kernel.org>; Mon, 27 Apr 2026 08:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777277662; cv=none; b=odguYRVhVZSZoY5l3IOyA1maht+xGJ5GP6IG+fxeYVQcyLGSgzwW7A4X8pQGZVjVzfI2BbuOHwMH/Urqno1D+PMGtyi+TvtALrOOmnU4vyPfvNjpzaBZUzPiGSNDvwhTsWhoxT1cMiw6EUmNPdpPk7ZyyUN6d23AmXEvIbnxDeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777277662; c=relaxed/simple;
	bh=8FjCCfc3ATlCE5jRgXIYhjXgdiV1c+dDkF+DodJsMVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HVzpTkyk0A90fWX1hv21TwdW5dfxLG6DfsIT7E5hVqnoADjAvHgaXhzwCXLcCNG8APfbiBUElZTdFrfUgMidP1ZjPZeLi8lzENRHR4p9HtOzHKzGhpvDCurE/VvBuQGMGEcF8vXdGojrtgEqolYGUJ7Lds/3mLqWlbiCa1NxnyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gLfS40+F; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777277660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Gslu6t7+wsvvZBy8eQg1BEqgK3j57Gco6XPwcNDK/e0=;
	b=gLfS40+F6y0KzL5g/fvTd+V45RWyCPWkibgfAemTaGp0TUu9hSQI3rv1BhIu4UGj+8mYrO
	r0mhX0FTypeGXyZFwzli61vUm7MIq5PbKEHLKySHGCb0I7QRvVwQQ+RBWiOdN9Ifl5L1f9
	Gqjby+HD/wf1YJRkqpl7PhmEsFlZQZY=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-235-Vs7QKCGRPPeSDAUK6VShog-1; Mon,
 27 Apr 2026 04:14:16 -0400
X-MC-Unique: Vs7QKCGRPPeSDAUK6VShog-1
X-Mimecast-MFC-AGG-ID: Vs7QKCGRPPeSDAUK6VShog_1777277655
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A361718005AC;
	Mon, 27 Apr 2026 08:14:14 +0000 (UTC)
Received: from ws (unknown [10.44.32.168])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 539443000C22;
	Mon, 27 Apr 2026 08:14:13 +0000 (UTC)
Date: Mon, 27 Apr 2026 10:14:10 +0200
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>, 
	util-linux@vger.kernel.org
Subject: Re: [PATCH] copyfilerange: (man) fix swapped offsets in command
 example
Message-ID: <qqhh32qg4rh32mtmhry6seh2zdq7zneuwnphbzjogg22ikifpp@cwpa25zy464y>
References: <20260420180528.943663-1-stepnem@smrk.net>
 <bd1c4673-ab3a-4934-a7d1-8113a48c9811@telfort.nl>
 <20260422182503.1111558-1-stepnem@smrk.net>
 <294a8ef5-e73d-4715-a824-ba0ca40e1067@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <294a8ef5-e73d-4715-a824-ba0ca40e1067@telfort.nl>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Rspamd-Queue-Id: 1ED6146EE74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.97 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.69)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1149-lists,util-linux=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[telfort.nl];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Thu, Apr 23, 2026 at 11:48:12AM +0200, Benno Schulenberg wrote:
> 
> Op 22-04-2026 om 20:25 schreef Štěpán Němec:
> > Signed-off-by: Štěpán Němec <stepnem@smrk.net>
> > ---
> 
> Thanks for the tweaked re-submission.

The patch has been applied. Thanks Štěpán.

> > In any case, if the preference is felt strongly enough to require
> > rerolls just for that, I believe it would make a great addition to
> > howto-contribute.txt
> 
> Good idea.  Will post a patch for that.

 +1

    Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


