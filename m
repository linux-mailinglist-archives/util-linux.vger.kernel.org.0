Return-Path: <util-linux+bounces-1128-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KLBBK/A1GmWwwcAu9opvQ
	(envelope-from <util-linux+bounces-1128-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Tue, 07 Apr 2026 10:30:39 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3303AB5EA
	for <lists+util-linux@lfdr.de>; Tue, 07 Apr 2026 10:30:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 85789301A686
	for <lists+util-linux@lfdr.de>; Tue,  7 Apr 2026 08:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC20B3A6B9B;
	Tue,  7 Apr 2026 08:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JioTvvPt"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14C13A5E87
	for <util-linux@vger.kernel.org>; Tue,  7 Apr 2026 08:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775550463; cv=none; b=GSqLIB+wPQBlnpoyP+hx3+YhVWU7Wi8vtiwKPA/PZvufLYK2++ikmIuGhl79KRhdFSVbO9Fd/w7IAt39K8X8Is8+6X/IuWGuXaT+e4arNy8JgFRCNCg+fOK4DByU5JWAWI/fHT7WSU50fa1kWzwzcF+7KIhMizEynKIhLiwo+Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775550463; c=relaxed/simple;
	bh=gZSghBg4CPfDvB4YweaZtGY/MczNPUd96D0tYgXmrcs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YjO6UaLQPPxi5mrkC8f/X3r8fMFwpmfKZWjq36f55LGkE8xlUA94Taa2GFnezxXkwwJdeUFTHvlMRAgNnYpSi3nS26AsbcrmaMD6xTg8YxyTpbXwdNse/FjtIVvO5S4eexnBgtO3CtvfhzygEh/P5Xej0awgoR5ovlqS1HK0mPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JioTvvPt; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1775550458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AB8PvbJfz54Rm1rV/53hYXKdgSUEL2hBiEfwuom4yRc=;
	b=JioTvvPt7ae4+cqez3gkRtXXhWHFEtCyRoO1HXFpsxUb7T4ElHxa0tRwGC06VWNC/aGFzY
	iRYSJJFvNw5IeIhxAouxNB+4rRCAUtIDasaQf4NEdd4yFLNdc+cKkCNAwIQRCdwwZ6riX2
	TIcQp5CrVEGcLmchmT+3X2t4VbZlA6M=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-572-Pri2FtXePxSGwHOAVbSBUg-1; Tue,
 07 Apr 2026 04:27:34 -0400
X-MC-Unique: Pri2FtXePxSGwHOAVbSBUg-1
X-Mimecast-MFC-AGG-ID: Pri2FtXePxSGwHOAVbSBUg_1775550453
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 225BE18005B9;
	Tue,  7 Apr 2026 08:27:33 +0000 (UTC)
Received: from ws (unknown [10.44.33.27])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E23B1300019F;
	Tue,  7 Apr 2026 08:27:30 +0000 (UTC)
Date: Tue, 7 Apr 2026 10:27:27 +0200
From: Karel Zak <kzak@redhat.com>
To: Chris Hofstaedtler <zeha@debian.org>
Cc: Christian Albrecht Goeschel Ndjomouo <cgoesc2@wgu.edu>, 
	Katie May <katie.may@canonical.com>, 1132588@bugs.debian.org, util-linux@vger.kernel.org, 
	Johannes Stezenbach <js@sig21.net>
Subject: Re: Bug#1132588: runuser: missing whitelist-environment option
Message-ID: <uttqesxy3cytollz4bc2gxnumxyjz2qsnvfoyvn7m6pa5qcvrl@3zx3mlllbdya>
References: <CA+499YPv1qATJg3SWqz_UrY77Lksibs5UJAaAhck0Vct3EdSuQ@mail.gmail.com>
 <ac-hE5WXBkG4pKZa@per.namespace.at>
 <SJ0P220MB0541E236A2387E8EBDB7C94BE95EA@SJ0P220MB0541.NAMP220.PROD.OUTLOOK.COM>
 <adDx4uLKdmKyzhCf@zeha.at>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <adDx4uLKdmKyzhCf@zeha.at>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1128-lists,util-linux=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[util-linux];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,karelzak.blogspot.com:url]
X-Rspamd-Queue-Id: 0F3303AB5EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Apr 04, 2026 at 01:19:39PM +0200, Chris Hofstaedtler wrote:
> At this point I also doubt that even if the documentation supports the new
> behaviour it's worth breaking all the existing users.

I share the same view. We really don't want regressions that force
users to rewrite their scripts.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


