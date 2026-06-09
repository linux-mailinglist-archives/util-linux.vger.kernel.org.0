Return-Path: <util-linux+bounces-1186-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7t6ICPD1J2p+6QIAu9opvQ
	(envelope-from <util-linux+bounces-1186-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Tue, 09 Jun 2026 13:16:00 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C67C65F66F
	for <lists+util-linux@lfdr.de>; Tue, 09 Jun 2026 13:15:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=TjgzcCuZ;
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1186-lists+util-linux=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="util-linux+bounces-1186-lists+util-linux=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6BAED304973D
	for <lists+util-linux@lfdr.de>; Tue,  9 Jun 2026 11:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C6873FD121;
	Tue,  9 Jun 2026 11:07:47 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E093FB06D
	for <util-linux@vger.kernel.org>; Tue,  9 Jun 2026 11:07:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781003266; cv=none; b=LHKJq945KY5gz0xl9E7ll/bUl3I0oy+Bg92o35F9Ql0xARg8IFYqMlRfOxUAzU7fthM1F3IXnEKz+1kmJaNeVSYJSDHQERfrGOHc/c6hvBXvvUktOqZ/2QMgB/ycMbQsDkmF9nAho/AfZ95SOS7YGq/WpdjpKIbhKN/w3fQrVNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781003266; c=relaxed/simple;
	bh=0m4oqxtEOuUfFSoU0bwJXzUiZxkpD7Y4By3LlTRa1Qk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y1fTxdYVu2cbQiOW7MJsN5aE+cprDTYGw1mXvOTop8UuCZtBUYO1vVw88ICZqlNwcK3B79WvASvZ+Nt658quqAkafqF1miMkmVOvN4aMhc/BnlY/7XTvhvOHwso5okgwPGiGij61SBOpK0r+3TPFh40E0kOTXwPd32mQAgK5Sos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TjgzcCuZ; arc=none smtp.client-ip=170.10.133.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1781003264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5RK+BLbnbcMU673UQTF7Tha3qkshYAe50CL3E4sRZ5o=;
	b=TjgzcCuZ0q8I5FPUWkfnS8VBx9rqONRj1qlx6Vzwr0dIGe4iXszBSzzEQBtPy2Zie2WzC/
	/M1zSYKxX37QKoin3MyxOl4Nn6TVo4vw0EDKKdKjzVnc3585NE+edpH2Z16h0gWVkpahJL
	WVwT/jMlwXOUh72g4jObxZtex15dTBo=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-418-0IULEadCOGKvBUKQMtwfdA-1; Tue,
 09 Jun 2026 07:07:41 -0400
X-MC-Unique: 0IULEadCOGKvBUKQMtwfdA-1
X-Mimecast-MFC-AGG-ID: 0IULEadCOGKvBUKQMtwfdA_1781003260
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 80114180059A;
	Tue,  9 Jun 2026 11:07:40 +0000 (UTC)
Received: from ws (unknown [10.44.33.29])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5AF0419560A6;
	Tue,  9 Jun 2026 11:07:38 +0000 (UTC)
Date: Tue, 9 Jun 2026 13:07:35 +0200
From: Karel Zak <kzak@redhat.com>
To: Bjarni Ingi Gislason <bjarniig@simnet.is>
Cc: util-linux@vger.kernel.org
Subject: Re: [man page] undefined string 'Aq'
Message-ID: <xtsm7gnocz2gfl6wlpx6e5zjpqzxs3o2zuykeg5uanpmp7wiit@3y5rogi6uid7>
References: <aiWf2S5xi0RgPW1U@kassi.invalid.is>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aiWf2S5xi0RgPW1U@kassi.invalid.is>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bjarniig@simnet.is,m:util-linux@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1186-lists,util-linux=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,3y5rogi6uid7:mid,karelzak.blogspot.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C67C65F66F

On Sun, Jun 07, 2026 at 04:44:09PM +0000, Bjarni Ingi Gislason wrote:
>   The string 'Aq' is used (in .TH) before it is defined.

Thanks! Fixed by commit a4c22d0417e67a587d7f2c78e0fb0311ce5ddd6a

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


