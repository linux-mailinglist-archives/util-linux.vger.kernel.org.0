Return-Path: <util-linux+bounces-1096-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEELIgeTsmnONgAAu9opvQ
	(envelope-from <util-linux+bounces-1096-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 11:18:47 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0448270438
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 11:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A8CB3016929
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 10:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B1653AE1A0;
	Thu, 12 Mar 2026 10:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="isXyen7V"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7847138F637
	for <util-linux@vger.kernel.org>; Thu, 12 Mar 2026 10:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773310723; cv=none; b=fZajQoFv5W+W9aXlsILw/nZ85bjfgTwyBuGLvqtRst/AwgU3bwIZMFAaaT0DcA8YdYaN9+VkHD6zEE4fHcbK7ln1UE6YvMFKy9AE8h/f83LsJX5u/LMki2d7mpysgjMioulo2aDBEUhXKXcIQnq8Vw9t5UhnfMl4TnVx4wuv1e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773310723; c=relaxed/simple;
	bh=aqK5lIE15G33BCjGfFe+caZQyarBMp+vTPTuMtxL+gE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GMSLOd4Dp+TNUHZKi4eSGMUGOVZ0pVfxq5AeMEgNF6GlSvfF8CBA3ykErvNp2OUjkvbhJz1MXHfgwn0suSkeb/Ky/Ms7VpsJeijJPKxmRQbE4dv0bWnz0Ao78GUv6SKMCIs/cDjd87ojDTTpQTI02q+nAxEhPcCiUCPiUYEFlJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=isXyen7V; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773310720;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Cddv8xuNXibPZg50lM8BlAlRJbWT1krlbnSvvhAR+QM=;
	b=isXyen7V2EuxQ9btoX0DpyaNGHKQGpwQCOiWDFUihO39J7bC19r1qLcxj0UlVatRbQdKIn
	/cIvnMTfslaevWZxBrY/LIv8pViif4zrz+SSDHbsuGOIZfxCQb1NEgme0trOGK/spLEAJi
	YxX9zsqwLnBOQdG+X54iXUqdvLTudBk=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-353--_BrCMIXNgmENBXhmK8zhg-1; Thu,
 12 Mar 2026 06:18:36 -0400
X-MC-Unique: -_BrCMIXNgmENBXhmK8zhg-1
X-Mimecast-MFC-AGG-ID: -_BrCMIXNgmENBXhmK8zhg_1773310716
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E232218005B3;
	Thu, 12 Mar 2026 10:18:35 +0000 (UTC)
Received: from ws (unknown [10.45.225.129])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C815B1955D6E;
	Thu, 12 Mar 2026 10:18:34 +0000 (UTC)
Date: Thu, 12 Mar 2026 11:18:31 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org, Sumanth Korikkar <sumanthk@linux.ibm.com>
Subject: Re: [PATCH 1/2] lsmem: correct the grammar of an error message
Message-ID: <saoqkb6rpqx2ckxzp7fhwncfjp2hdgugsesnmkegwy5dfmcnki@5mffdjygdgs2>
References: <20260307114308.7517-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307114308.7517-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1096-lists,util-linux=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[karelzak.blogspot.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0448270438
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 07, 2026 at 12:43:07PM +0100, Benno Schulenberg wrote:
>  sys-utils/lsmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied this one, thanks.

For the second lsmem patch, I'm not sure if it needs an update to
provide more information about online/offline status and
configuration.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


