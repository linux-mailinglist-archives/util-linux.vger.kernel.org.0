Return-Path: <util-linux+bounces-1104-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEVtEmTjt2mzWwEAu9opvQ
	(envelope-from <util-linux+bounces-1104-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 16 Mar 2026 12:03:00 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE662986E7
	for <lists+util-linux@lfdr.de>; Mon, 16 Mar 2026 12:02:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5F37304DCB0
	for <lists+util-linux@lfdr.de>; Mon, 16 Mar 2026 10:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C7EC1A9FB7;
	Mon, 16 Mar 2026 10:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="S1vLpXsx"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A2A3909B0
	for <util-linux@vger.kernel.org>; Mon, 16 Mar 2026 10:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773658636; cv=none; b=R5+I/4NgPDQFqQdllkNHGXeXfjqDZX1gtmgsvodVbcrZVHgMUz7AMaAHpA+CQMNtmAJqAk50lBjcqkUoXSIPKeJypIq+XwbMxeSyNq56OAS5Ll2Ep7DeCthyuLIsndj7pnqcKa3bbkXLx224rPwwlxNkmqx5GgcNGr1fWMaVYyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773658636; c=relaxed/simple;
	bh=tQ74x5P+9Rb7TXSK6DfIuDGxyxQq1KEBCh5p7gXP8LA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z7ZXTvIA/agsQfK0C1vlvw3Xuz0b7eyfDVhXmdjC51K3RwDIKulCcfJhlHMROwhMJFV3JzT9ThLZK3QldCh9c+bTo5glW5Yk0i6hXoF8t6rckuQcFDAytTuVbo0FK0YYGXPsdp0bqL7Ad/jVUnf9Zi/+bT6EcgMVwXbc9SLDBBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=S1vLpXsx; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773658632;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xm83Qw0w2x7ciEIXXd+xJSrhzFwuMD+fNLsoWKQTAzA=;
	b=S1vLpXsxTdB/w8nEGA8V+vCYyuSEi0ER07f2oycxJLm/tewQcLsm3dRzasHqYbZaTP6Ibi
	BOby3AhroFRVNx2o+LmUId2fOUGGgoIsAg+2L2QIkEKULya2nY8V0D8sz48jswSfM1FynO
	2I4KG9OB9x9ZP9BNV8sN5IGRL1f+yRg=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-216-L9Ur1qFDPaC2UtvQNbdTdg-1; Mon,
 16 Mar 2026 06:57:11 -0400
X-MC-Unique: L9Ur1qFDPaC2UtvQNbdTdg-1
X-Mimecast-MFC-AGG-ID: L9Ur1qFDPaC2UtvQNbdTdg_1773658630
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BB994195608E;
	Mon, 16 Mar 2026 10:57:09 +0000 (UTC)
Received: from ws (unknown [10.45.227.16])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9E8551954102;
	Mon, 16 Mar 2026 10:57:08 +0000 (UTC)
Date: Mon, 16 Mar 2026 11:57:05 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org, Dick Marinus <dick@mrns.nl>
Subject: Re: [PATCH 1/2 V2] copyfilerange: (usage) correct the markup and
 improve the wording
Message-ID: <nncxqrukcaciydzfgcw6gwzxkbk6bpn6u7pyayvixm7k3tupnk@v3zflcfkzbmt>
References: <20260312155532.52342-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312155532.52342-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1104-lists,util-linux=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[telfort.nl];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,karelzak.blogspot.com:url]
X-Rspamd-Queue-Id: ACE662986E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 04:55:31PM +0100, Benno Schulenberg wrote:
> V2: Use the standard USAGE_ARGUMENTS header instead of an
>     unusually placed lone paragraph.
> ---
>  misc-utils/copyfilerange.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)

Both patches have been applied. Thank you.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


