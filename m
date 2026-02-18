Return-Path: <util-linux+bounces-1052-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOICF2imlWkQTAIAu9opvQ
	(envelope-from <util-linux+bounces-1052-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Wed, 18 Feb 2026 12:45:44 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4617156091
	for <lists+util-linux@lfdr.de>; Wed, 18 Feb 2026 12:45:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CF12301C888
	for <lists+util-linux@lfdr.de>; Wed, 18 Feb 2026 11:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA5D33033D8;
	Wed, 18 Feb 2026 11:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jIzEEz3l"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C45A2DCC1F
	for <util-linux@vger.kernel.org>; Wed, 18 Feb 2026 11:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771415088; cv=none; b=QlXhcoVznC3htI3hXfywiI2vpBqSq/rJpbJgVQ5MfdWRn8LpkPeZEoviACFeXcVhIpMX0P80vM/NHPOkZqmyQJWpKVInOU7qbm/U/YMgp6FJ1bAYWAa/7nGUHSkOdm31wzXIbs1Gt8jR4drOxTOkd/ZfUsZ7meaTkutWTYO6f5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771415088; c=relaxed/simple;
	bh=VymYSbFwHdpBX7veqKe1xsoNcGGjHMMVzCMCRUCTF+g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dYG2aiKPh+2eMpDw8L5oIlDcEjLHGFqCSf6rWjF7pEdLQD8ob71JPPnkjuWk3nXRKIbKXVLtktRVOBBG7cbWS9PCMQTnJKoGw3oppaS9Jv+I/TvmzYsnllmvLMMH8fJ7YIVDgB38Ze01NDNndlP0gpU2Z6Bt4VYUv3E+1mUIN9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jIzEEz3l; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771415086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XXHq1BBxU6M61BDlLop5FFf/TaXvNW5zIm3emlHSNNc=;
	b=jIzEEz3lf33JMz2ryOEZ0w17Cst4sZfLKA81RexBKopHkgKk+wJbUdLAaQ4lL6y1E9f80M
	sUNe6Wr7ProPI80clVnV4Jnop+aLh4nLWPNpMfTzhx7o6UAh8ZjEokYMkBBD0qYF7QW/tj
	WSlJJgExVp4TxLVyeW5VjGUrb+OG5sg=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-375-mhDvanMfMImtRmlpr5QG5g-1; Wed,
 18 Feb 2026 06:44:43 -0500
X-MC-Unique: mhDvanMfMImtRmlpr5QG5g-1
X-Mimecast-MFC-AGG-ID: mhDvanMfMImtRmlpr5QG5g_1771415082
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 98DAD18004AD;
	Wed, 18 Feb 2026 11:44:42 +0000 (UTC)
Received: from ws (unknown [10.45.225.57])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B8E7830001A5;
	Wed, 18 Feb 2026 11:44:41 +0000 (UTC)
Date: Wed, 18 Feb 2026 12:44:38 +0100
From: Karel Zak <kzak@redhat.com>
To: Xiao Liang <shaw.leon@gmail.com>
Cc: util-linux@vger.kernel.org
Subject: Re: [PATCH] nsenter: Support specifying namespace by ID
Message-ID: <u6k7ao5u7qlsembd3l4s4g5hstdbib4picoje2x3skrpjcmfwe@kkuojh7fjqn7>
References: <20260214032345.32457-1-shaw.leon@gmail.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260214032345.32457-1-shaw.leon@gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-1052-lists,util-linux=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,karelzak.blogspot.com:url,meson.build:url]
X-Rspamd-Queue-Id: B4617156091
X-Rspamd-Action: no action

On Sat, Feb 14, 2026 at 11:23:42AM +0800, Xiao Liang wrote:
>  configure.ac             |   4 ++
>  meson.build              |   3 ++
>  sys-utils/nsenter.1.adoc |  34 +++++++------
>  sys-utils/nsenter.c      | 104 +++++++++++++++++++++++++++++++++++----
>  4 files changed, 119 insertions(+), 26 deletions(-)

Applied, thanks.

I made minor changes to the code and man page in separate commits.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


