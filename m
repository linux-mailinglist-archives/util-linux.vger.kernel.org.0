Return-Path: <util-linux+bounces-1105-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yL/MI6Pit2lDWwEAu9opvQ
	(envelope-from <util-linux+bounces-1105-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 16 Mar 2026 11:59:47 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDDC29860C
	for <lists+util-linux@lfdr.de>; Mon, 16 Mar 2026 11:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E91C7303A0AE
	for <lists+util-linux@lfdr.de>; Mon, 16 Mar 2026 10:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E9CF38D6B0;
	Mon, 16 Mar 2026 10:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jWY28DCf"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D116238F248
	for <util-linux@vger.kernel.org>; Mon, 16 Mar 2026 10:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773658692; cv=none; b=gQS2+UqFezedUW1NjcAxe51Idkrq/7zeJ1+4y8/uMV1Absf7N3+nvFO0SOW6iwTxo3L2/KKTTZruYjRjAKxjAKC3/zkN78aZDTswvmGgaM2SVFMFUQumc0lx2v4P3h69wt+FTCShxljBL+OlE76jQ5fe8xM+jG1Koj0QeoItTeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773658692; c=relaxed/simple;
	bh=4ZlTHskxRZw6edZA7CumfZTPxcRdp7WcDoibm1rl2Ss=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iV5pV5WeRnhyAbxKlmqvwvJucrh5Ij/HVd6HlQeajWhDRV2LpRK0HiS9WeuMhfGLjnzT2XLBn77rx2L6QsfH/b7unj+toJzw2CRNnBeEyi5Prsq/yvVuyfuXevRmScC4HdRjvaJTxcc2X3J/oMKlpvnfrYbR4xnb0wIaAIb2Dmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jWY28DCf; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773658689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rdPVQdvOteKPtu4zGnAxGQ3y7M67mHTYlbtVhyfxQsI=;
	b=jWY28DCfkGyNXfeC9REwH4itvq3SSkGiXXnFiK+OMDw/4PjmK+45x8f/IHGo/6pd5WR98N
	ZNm+V7k6P/NfZINIpmVAbVKOL2IhCGhtDRDwsuqJh+ZayX0AR3diE3FXeVidO23c33/BSa
	24aGhYbGmBG2Tol6WRz0jvxeXPlp4A4=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-583-TzgtcsT2PtapfVNuDnJ3RA-1; Mon,
 16 Mar 2026 06:58:08 -0400
X-MC-Unique: TzgtcsT2PtapfVNuDnJ3RA-1
X-Mimecast-MFC-AGG-ID: TzgtcsT2PtapfVNuDnJ3RA_1773658687
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8639919560AE;
	Mon, 16 Mar 2026 10:58:06 +0000 (UTC)
Received: from ws (unknown [10.45.227.16])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 37BCB1955F19;
	Mon, 16 Mar 2026 10:58:04 +0000 (UTC)
Date: Mon, 16 Mar 2026 11:58:01 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org, Sumanth Korikkar <sumanthk@linux.ibm.com>
Subject: Re: [PATCH 2/2] lsmem: (man) correct the markup of column names, and
 improve some grammar
Message-ID: <wujarepqrdbbw2qzmhiyck5xhxael5kamahzago6ij7ln2c5nu@wsfbc7hip55w>
References: <20260307114308.7517-1-bensberg@telfort.nl>
 <20260307114308.7517-2-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307114308.7517-2-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1105-lists,util-linux=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,karelzak.blogspot.com:url]
X-Rspamd-Queue-Id: BFDDC29860C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 07, 2026 at 12:43:08PM +0100, Benno Schulenberg wrote:
>  sys-utils/lsmem.1.adoc | 65 +++++++++++++++++++-----------------------
>  1 file changed, 29 insertions(+), 36 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


