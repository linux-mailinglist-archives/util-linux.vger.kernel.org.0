Return-Path: <util-linux+bounces-1095-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMfwIliSsmnJNgAAu9opvQ
	(envelope-from <util-linux+bounces-1095-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 11:15:52 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 050FE2703BF
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 11:15:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B183D303326B
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 10:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF053BC670;
	Thu, 12 Mar 2026 10:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="i6XCc/fU"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A5E3BE166
	for <util-linux@vger.kernel.org>; Thu, 12 Mar 2026 10:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773310491; cv=none; b=LSWAp1PN7/vzCEkItSQMGOVUUYpXZnpxawDsV+mVLzimNpDRWx1929xqYfr728SMaMarNMuPzYmwL7tbQAvywOHCB+DvKoDbE+FVn62nHKTtAj3/NI+uZfFUjZrkdPaO72kPvJ9udONfy6xZoFnfBmVp+iSRycKuMpIO1w5sjUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773310491; c=relaxed/simple;
	bh=e+XAyQveVU4Qs4qselpY+7ZkiF9CAP6C/VI8gBaiqFE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V2jtfXgrdVmA/ZkSlwHbqQI78LbYWnDlTiENnP6J2R5JBFyAg8XsFUJIJazDrjHioU6L9I3jBbPG/tGEg4OcZz7axlCR/yHgaTqXphXQnB4plJ/DScHD6ElxpSxRODHypQyfNTba1jGXsOFAXEjBWOEMur4uZ7cind1omOBG3a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=i6XCc/fU; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773310485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qOcvIhsETbl1d9bExXfkmuPf8sZXrTaZmw4QLYKFoS8=;
	b=i6XCc/fUy+XQE7FxBsxRv64sGDxbzFSzIk70VMT4XJy1Qh86Jy+B+dGbJ9mY4/CLnMJq5B
	93ApfqkS8AuPOYVojdBONLS3RJf5iZpI5ZNlzZkPphNGI0zyP9vYexN8HRxnOnQtZTI1Is
	5a0IeOtG6o1AtEVI06lCz12MURPV5qc=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-466-6YnfsQpWPPWK6txIqFrwXg-1; Thu,
 12 Mar 2026 06:14:43 -0400
X-MC-Unique: 6YnfsQpWPPWK6txIqFrwXg-1
X-Mimecast-MFC-AGG-ID: 6YnfsQpWPPWK6txIqFrwXg_1773310482
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5E5DE1956095;
	Thu, 12 Mar 2026 10:14:42 +0000 (UTC)
Received: from ws (unknown [10.45.225.129])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 30AC819560B7;
	Thu, 12 Mar 2026 10:14:40 +0000 (UTC)
Date: Thu, 12 Mar 2026 11:14:38 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org, 
	Christian Goeschel Ndjomouo <cgoesc2@wgu.edu>
Subject: Re: [PATCH] waitpid: consistently write the abbreviation "PID" in
 all-uppercase
Message-ID: <ve2rocf67c6xihlkd3arowu3ijimud3wsdflafp4lginl3jrzl@fkimkksbpgjn>
References: <20260309111544.4952-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309111544.4952-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1095-lists,util-linux=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,karelzak.blogspot.com:url]
X-Rspamd-Queue-Id: 050FE2703BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 09, 2026 at 12:15:44PM +0100, Benno Schulenberg wrote:
>  misc-utils/waitpid.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


