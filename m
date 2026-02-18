Return-Path: <util-linux+bounces-1051-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDtZJfqNlWmbSQIAu9opvQ
	(envelope-from <util-linux+bounces-1051-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Wed, 18 Feb 2026 11:01:30 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 03034155106
	for <lists+util-linux@lfdr.de>; Wed, 18 Feb 2026 11:01:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B8C673006828
	for <lists+util-linux@lfdr.de>; Wed, 18 Feb 2026 10:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D14211A14;
	Wed, 18 Feb 2026 10:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PKfMyr5N"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D996326B777
	for <util-linux@vger.kernel.org>; Wed, 18 Feb 2026 10:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771408881; cv=none; b=ZF+B1NgPxSPCtpboXJhX+tTTvqopUMKxQ5l8iaucbBxCrBJviA5hKrOFje3o+3OGwWC0OtutnubwK0Upwc4AWAiEC+7O8haCZQrEjgolAb4uP47LDFYhPRDSEqkiKasOnwgPpIYODNG9JOGTVngcGUrpH2W169Xs1o8w53Egqjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771408881; c=relaxed/simple;
	bh=GZ8haOuC183/LswHWHYFXNBZzof0K5s0mQSR5rvfCeo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I55efVQoNVYDGCTEQrxoDZoGwoKwY7rpcap4Ebx61QC7bFJEOuvD8YxB6XrwzfmHKmoIlEncfoTBrY5uKoN7YPFGKYEQywMoTXDw9JomNAAYbRCbqZKNy9fQxMatLZ8Zi2QnRNrms8BuGajNftoXiNTYQ6rOV7bV1sWdPIGpAlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PKfMyr5N; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771408878;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rU51F5JoLeW1GC2OioyG8s3c3QDo0RAlVzmHvuYFW3U=;
	b=PKfMyr5N+NUEb9qhNHJZUeF/YUr2Km/WiLAZ7wqXCPy0V0xLmnwq+C0THdGXiX10VZaqXy
	GEm94i5RKZ9T51nziHFtpoiAQ5L46ASrFY3lbcpVz2MCUtzcMxYZ4pzC10zYRWX3Z0UYUR
	7MiQoTw8Ba204Ev+7q3bGKAckoAeHgc=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-503-2R5_zS7tMlO3CNL7ACePHg-1; Wed,
 18 Feb 2026 05:01:14 -0500
X-MC-Unique: 2R5_zS7tMlO3CNL7ACePHg-1
X-Mimecast-MFC-AGG-ID: 2R5_zS7tMlO3CNL7ACePHg_1771408873
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CD7771933F96;
	Wed, 18 Feb 2026 10:01:13 +0000 (UTC)
Received: from ws (unknown [10.45.225.57])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5F4601800666;
	Wed, 18 Feb 2026 10:01:12 +0000 (UTC)
Date: Wed, 18 Feb 2026 11:01:09 +0100
From: Karel Zak <kzak@redhat.com>
To: sina-abroshan <sina.abroshan@gmail.com>
Cc: util-linux@vger.kernel.org, bensberg@coevern.nl
Subject: Re: [PATCH] lsblk: improve error reporting for invalid device paths
Message-ID: <msyljenx3rqwsxsz4hitxvmptzgafff3h477v7endvvb43rgt6@uunolvb67ttf>
References: <20260212112423.2400888-1-sina.abroshan@gmail.com>
 <20260215083417.185974-1-sina.abroshan@gmail.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260215083417.185974-1-sina.abroshan@gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1051-lists,util-linux=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[karelzak.blogspot.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 03034155106
X-Rspamd-Action: no action

On Sun, Feb 15, 2026 at 12:04:17PM +0330, sina-abroshan wrote:
>  misc-utils/lsblk.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


