Return-Path: <util-linux+bounces-1130-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KD9Jj4G1WmczgcAu9opvQ
	(envelope-from <util-linux+bounces-1130-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Tue, 07 Apr 2026 15:27:26 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6343AF103
	for <lists+util-linux@lfdr.de>; Tue, 07 Apr 2026 15:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D67393013188
	for <lists+util-linux@lfdr.de>; Tue,  7 Apr 2026 13:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 767243B7752;
	Tue,  7 Apr 2026 13:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZE0htXzm"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65C83B38BD
	for <util-linux@vger.kernel.org>; Tue,  7 Apr 2026 13:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775568431; cv=none; b=G4QmAQNMcrH7iwbYuNlyc9F5apSBHROclsD8MKjVapchHVX2FBJE6gJmkz0WUew6CDmTN9hEHSTCVm+uxs20Y/cmyBvrBBF0Oz3iW0CMjxLQMl1lSrkgzyNEdlRjhpSzF21V8ZC2EAWBW1C3eUzGBgovrW2hvP0uTghz3T1KcHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775568431; c=relaxed/simple;
	bh=HLk6c6X5/KR1JyysS+dx/Yn0LhMMVibBAWhl4zNAqTM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dfnttDjao7m6A2f+9V/C1BFcQX0/dv9P7DFDAzH67zKcsvbx35Ch8PAgtLjbA3eh61CAmcQbkSIKrjkROMMYV2EgYglQpXSphCZ+CRPlUkW9T2tijbq7nnIyGgeVzB4yB8YDMl3KLl/U6cTKJqW/4AGiptPgT82xUmepZGr9oow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZE0htXzm; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1775568429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uUVVpwlErQ5RwqPPMoA7vL07kKXfKLINqyquQut4wlQ=;
	b=ZE0htXzmzdGE6ztArnRafPPPGiaHOUNgPKlrHFZppHFrngcKB62CTsj8M2IhRfAxfdVWJL
	rhcNMs3aQ+AGDWOqjSnraNH1yB+L00gRyvrSOYEYV1VZeJaEtNNOf8OTDPP1Rf+Hg2ANN2
	qg5y3oWhPx7ZET8WV2bPg4qm5A7PYX8=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-331-NSgRUh3FPNW0983qCm5Ozw-1; Tue,
 07 Apr 2026 09:27:05 -0400
X-MC-Unique: NSgRUh3FPNW0983qCm5Ozw-1
X-Mimecast-MFC-AGG-ID: NSgRUh3FPNW0983qCm5Ozw_1775568424
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 065A718005B6;
	Tue,  7 Apr 2026 13:27:04 +0000 (UTC)
Received: from ws (unknown [10.44.33.27])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 16A6A18001FE;
	Tue,  7 Apr 2026 13:27:00 +0000 (UTC)
Date: Tue, 7 Apr 2026 15:26:58 +0200
From: Karel Zak <kzak@redhat.com>
To: Chris Hofstaedtler <zeha@debian.org>
Cc: Evgeny Kapun <abacabadabacaba@gmail.com>, 1132887@bugs.debian.org, 
	util-linux@vger.kernel.org, wanbingjiang@webray.com.cn
Subject: Re: Bug#1132887: script: "script file -c command" stopped working
Message-ID: <x7m64hxjjld7rkfjwuta75hzmj3f6en57mpvdfttzdliebdqxn@ym5mhuzim23o>
References: <88e0b54d-3c86-46ca-ab3f-e116073216d6@gmail.com>
 <adS9qeW8w0bmUukR@per.namespace.at>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <adS9qeW8w0bmUukR@per.namespace.at>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1130-lists,util-linux=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,bugs.debian.org,vger.kernel.org,webray.com.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[karelzak.blogspot.com:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8D6343AF103
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 10:17:45AM +0200, Chris Hofstaedtler wrote:
> Hi,
> 
> thank you for the report, CC'ing upstream.
> 
> On Tue, Apr 07, 2026 at 07:07:59AM +0300, Evgeny Kapun wrote:
> > Package: bsdutils
> > Version: 1:2.42-1
> > 
> > If I run script(1) as "script file -c command", it returns an error:
> > 
> > script: unexpected number of arguments
> > Try 'script --help' for more information.
> > 
> > It used to work in earlier versions, so now scripts that rely on the old
> > behavior are broken.
> 
> Can you check if reverting this commit makes it work again?

I have created bugfix for this, see https://github.com/util-linux/util-linux/pull/4201

Seems we will need v2.42.1 ASAP :-)

    Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


