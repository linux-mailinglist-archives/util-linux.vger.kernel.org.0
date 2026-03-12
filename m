Return-Path: <util-linux+bounces-1094-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACrIHECSsml5NgAAu9opvQ
	(envelope-from <util-linux+bounces-1094-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 11:15:28 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D651B27038A
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 11:15:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1ACD301E7DF
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 10:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93D613BF69B;
	Thu, 12 Mar 2026 10:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="a5CEsBpL"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0CE23C5DA2
	for <util-linux@vger.kernel.org>; Thu, 12 Mar 2026 10:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773310458; cv=none; b=OaRFcnJKoMe65hNw+DZrxk1F5KQjyDlZYmBNBa+q7Jn64bwnltizlScRyA0hwn9hViYVnjAdCDI6ApHWIISmf+ukzL+45/UAZi5P71Kvb+frKo1/zW7Pe766Z54j1Yd3pFGtTUIHiIf8j62dF2rKznE9Jv9Qhl3yBBLoiod20eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773310458; c=relaxed/simple;
	bh=kXkZ2Mbq4vU7eB5CP5gyW+AVnCkHzYvf0vSTeks9l9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LwZ1cQYAmA2/zYJ8jbqcfWuIVTvhisK1ANb4Kq97UeI4tlRjntlDMgI5c9SszLA0aUaLWitVaQhgLiIwtsXAlPbSkc3dcjjyYuEMKlah2y96VGwGEgPbJx04aSOrAPH54c/rDhVRUGetzsp9EtYZNHbY8CsHE1Nxp5oPQR3+nSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=a5CEsBpL; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773310453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uMTyKhGQVMqFmMqw18wB5AHYModJidEA9zGPcG87v5g=;
	b=a5CEsBpLbDq9JKl1TCJJWXrCH+7NIBVuKq57TdGLW1phNDYERzivI74B6hRjTvYVXHaib5
	JRw5eR8sX3bKtFWDR/3iX6c0cKb4zhDHFlbiEG7q3qdCa5lVeNmGMmdx2FzwJqOtLtMlEO
	93b/Vpt0++Gwc3/qgqZlKyhV1/AAd34=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-32-Q1LFcs_OP2m1rRlTWa3fRA-1; Thu,
 12 Mar 2026 06:14:09 -0400
X-MC-Unique: Q1LFcs_OP2m1rRlTWa3fRA-1
X-Mimecast-MFC-AGG-ID: Q1LFcs_OP2m1rRlTWa3fRA_1773310448
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 492481945CBB;
	Thu, 12 Mar 2026 10:14:08 +0000 (UTC)
Received: from ws (unknown [10.45.225.129])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2F964180049D;
	Thu, 12 Mar 2026 10:14:06 +0000 (UTC)
Date: Thu, 12 Mar 2026 11:14:03 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org, Xiao Liang <shaw.leon@gmail.com>
Subject: Re: [PATCH 1/3] nsenter: (usage) correct the formatting of eight
 option arguments
Message-ID: <3ehskdq5auebjd3ao2kgd4di3jx2q3k3p74vrnapja4pmkac5g@ocg3qoweswlr>
References: <20260308112004.9206-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308112004.9206-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1094-lists,util-linux=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[telfort.nl];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,karelzak.blogspot.com:url]
X-Rspamd-Queue-Id: D651B27038A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 08, 2026 at 12:20:02PM +0100, Benno Schulenberg wrote:
>  sys-utils/nsenter.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Applied all three nsenter patches, thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


