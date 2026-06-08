Return-Path: <util-linux+bounces-1184-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EN2FJoSlJmr0aQIAu9opvQ
	(envelope-from <util-linux+bounces-1184-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 08 Jun 2026 13:20:36 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3B76559E1
	for <lists+util-linux@lfdr.de>; Mon, 08 Jun 2026 13:20:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=KB2cE9bR;
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1184-lists+util-linux=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="util-linux+bounces-1184-lists+util-linux=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0A42730095F4
	for <lists+util-linux@lfdr.de>; Mon,  8 Jun 2026 11:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A194346766;
	Mon,  8 Jun 2026 11:12:25 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267B233F390
	for <util-linux@vger.kernel.org>; Mon,  8 Jun 2026 11:12:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780917144; cv=none; b=OKouap02ovh7EB4pNCHiYPSL0QGHsETBeQoQESIvwS2oQwLAjaAdQ2qV5OsRrkcRI4VQj1zXbDCurAViCTNu2tXYhLILE5lvLots5Z0KrJ8/w50p16Vd6yk8HCq68Atg8ZglYC/xINgsoT2slXJsHrU+q4XhVvOdHrlBTC3Wowk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780917144; c=relaxed/simple;
	bh=yTgVG2RK3pDTUieH3kogO0rGlSDj6c4IMbao+eR7l08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gM5cjKqbK8VUKuPaLawC3LNfu+dl9occnVl+W3Emyy1JPc4xTx4votJR1p7NK4s9EoQlcoIE2ZrBS+/953Mmq9urNUYx4y1/aS8IS5YiAi1/zNx7wvOW46N8goBhjGNF7Ry2GrCUI3DY5bZwtyHu/VWcPc9IEeHKwFrSoW8GXvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KB2cE9bR; arc=none smtp.client-ip=170.10.133.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1780917140;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Py3LHSyRWF59HAJ617l/zDs2L1BoODHr0Leqwm/Qpnw=;
	b=KB2cE9bRcKuWz7lOgZY9k+vHZuhm9yX+njPtmyU0yFvzrrbbJ7w3xaDqGI+b7MsPaRsxd4
	yaelq5Od69vJcT3GCS8IeOA1Q1Ou0R7wUbXqF81jruddLuCc+qENNosZfTvC09Om2uDHxJ
	nAuaoqEoWRzN89bEjXwlar//qPb6Y28=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-364-1Dh3HZYoMCeV4E9pODtjpQ-1; Mon,
 08 Jun 2026 07:12:17 -0400
X-MC-Unique: 1Dh3HZYoMCeV4E9pODtjpQ-1
X-Mimecast-MFC-AGG-ID: 1Dh3HZYoMCeV4E9pODtjpQ_1780917136
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A6AF419560B0;
	Mon,  8 Jun 2026 11:12:15 +0000 (UTC)
Received: from ws (unknown [10.44.33.159])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B2F973008B34;
	Mon,  8 Jun 2026 11:12:14 +0000 (UTC)
Date: Mon, 8 Jun 2026 13:12:11 +0200
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org
Subject: Re: [PATCH 1/3] lsmem: (usage) list possible values for <when> like
 for the other <when>
Message-ID: <5zni7ahfvmnhsid7f4we74hrlmga6itznrsjj4sjurydin4sm2@4jqk36onqhgb>
References: <20260604095252.162210-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260604095252.162210-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:bensberg@telfort.nl,m:util-linux@vger.kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[telfort.nl];
	TAGGED_FROM(0.00)[bounces-1184-lists,util-linux=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,karelzak.blogspot.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A3B76559E1

On Thu, Jun 04, 2026 at 11:52:50AM +0200, Benno Schulenberg wrote:
>  sys-utils/lsmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

All three patches have been applied. Thank you!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


