Return-Path: <util-linux+bounces-1108-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGu3NRzIu2leoQIAu9opvQ
	(envelope-from <util-linux+bounces-1108-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 19 Mar 2026 10:55:40 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD1E2C920A
	for <lists+util-linux@lfdr.de>; Thu, 19 Mar 2026 10:55:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D27C33239895
	for <lists+util-linux@lfdr.de>; Thu, 19 Mar 2026 09:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7BD83AB268;
	Thu, 19 Mar 2026 09:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TMXIV1N5"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D893B47C1
	for <util-linux@vger.kernel.org>; Thu, 19 Mar 2026 09:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773913365; cv=none; b=s1PPUyDQwd0vW5rvj6icK1Y9XxD9iYfJN88LYcz57fASa8dh2y4a6gTVDTJXQbUsJGuK3T+futCUyZ/kyEmSpB5teoCU4otTMQ0oSkK9SFmNkrmJ4nQo0wxXmlYMnwyg2d/hV0uniCltr9aAvqCwPWe5Cdk3I9vl78HiZ4VX+9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773913365; c=relaxed/simple;
	bh=deqUphVLIJVuxGMytJU/qTJiV7gEJ3PgRzrmCdMf4bA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FAQU3ljRR16PyVj7OtekFhq7YJdkleG33mJRJ9zJzXgB0HVMISZ4o1wmM1Yrm5GKPh5xd46AEILUu9LWy0zyCTshWQSsWCpxoaJLoJTVjfVCmPWV8dV431sdORNK5NufiObt7V3Pwtgg8x0Ii68dZtXxUY/qvXnrGxj1285OnVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TMXIV1N5; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773913362;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Wk2UiZPgSwX2bOSiWuUtA/5+8rJe5fDzDPBcqDT5rFA=;
	b=TMXIV1N5dLr34wJsD0GcqjNMP6lFBCbFfqIDrxubO+jTJfeJ+J5O1w6xFwJNwlabY1a0/3
	IkoxiP3XzsO60i7HFK53fMrn8whdX7gqb5yPw9qlcQ0Y3EN4K3cUqebntXWep7VT1cel7O
	gXDL4DYZ8uoDUinTvydP6XvXYJ5LLoM=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-474-0clRxbsGNrG5dzmlTw0l4Q-1; Thu,
 19 Mar 2026 05:42:38 -0400
X-MC-Unique: 0clRxbsGNrG5dzmlTw0l4Q-1
X-Mimecast-MFC-AGG-ID: 0clRxbsGNrG5dzmlTw0l4Q_1773913357
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EA906195606F;
	Thu, 19 Mar 2026 09:42:36 +0000 (UTC)
Received: from ws (unknown [10.45.225.135])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CCAE430001A1;
	Thu, 19 Mar 2026 09:42:35 +0000 (UTC)
Date: Thu, 19 Mar 2026 10:42:32 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org, Dick Marinus <dick@mrns.nl>
Subject: Re: [PATCH 1/2] copyfilerange: wrap some overlong lines (in a
 tabsize-independent way)
Message-ID: <irwehhtehblq54q63ailqsdyndackzqifdd5a5ejxelk25nhxd@52zpwpzs3hfk>
References: <20260316110938.5119-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316110938.5119-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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
	TAGGED_FROM(0.00)[bounces-1108-lists,util-linux=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[karelzak.blogspot.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3DD1E2C920A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 12:09:37PM +0100, Benno Schulenberg wrote:
>  misc-utils/copyfilerange.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)

Both patches merged. Thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


