Return-Path: <util-linux+bounces-1129-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cC9VBnX/1GnOzQcAu9opvQ
	(envelope-from <util-linux+bounces-1129-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Tue, 07 Apr 2026 14:58:29 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A223AEBE5
	for <lists+util-linux@lfdr.de>; Tue, 07 Apr 2026 14:58:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FF553011874
	for <lists+util-linux@lfdr.de>; Tue,  7 Apr 2026 12:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB6F3B4EAD;
	Tue,  7 Apr 2026 12:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="aRm9NAAc"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E293B4EAB
	for <util-linux@vger.kernel.org>; Tue,  7 Apr 2026 12:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775566605; cv=none; b=pfr55XFVjR7LjVfzibS6keWOaK1hyQEx9sr3kBzKDDUGeYMlK3OyUm4kBRXK7poE74Bgz3zwMc0c3fDdQoqAiqrlvy71XVvGHpc9DNg/5JbG8IGyMzlW9Y52fOS0C6blG8rZHlKWYHF0pP0Mcz8YsOVjbacW4zFNl1UgA4NjnTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775566605; c=relaxed/simple;
	bh=BOVb+KGVh7Ogg2cl15my+9F4DykjbrRGRRaSr1EGgHk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jnDNOupVfigAgkqBKDSdfdjyfz5wo1AiJx9FR26+bOSa2i3yvxh2qtzZSUulWCCuZUGbzwlXi3xpzIUa53MMFMH6cF9zj5kTE8Toxp7gVncMDVTZH20vt2VjuJpdAME95l7X5Ql/3A+cPwsaqPb/SdeN0KVoNxxktnxS/4c8kcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=aRm9NAAc; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1775566603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6rX76rFhq+Nb4iac8Ry5Czc9N5rXLefeOQbNAoU+GIg=;
	b=aRm9NAAcMsXNGmthKk4QX98f/iZWr+m1h/q6qRlCIIKSuULfAbdLAkF/Ihr95NR5clYl3y
	E9Yv9ZSGT2R8BBvP9xkfy2QUnBmBNli9+A0R2/F9FC0oHGR+dVKYm7NEmLJ2MLH0nvaHbF
	Gi5rKnGDGPnYAmyQFoJL604w4vUqWl8=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-13-uqkqBwnWOr-3k7tdgvSE4Q-1; Tue,
 07 Apr 2026 08:56:40 -0400
X-MC-Unique: uqkqBwnWOr-3k7tdgvSE4Q-1
X-Mimecast-MFC-AGG-ID: uqkqBwnWOr-3k7tdgvSE4Q_1775566599
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 24971195608E;
	Tue,  7 Apr 2026 12:56:39 +0000 (UTC)
Received: from ws (unknown [10.44.33.27])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3E32D1955F2B;
	Tue,  7 Apr 2026 12:56:37 +0000 (UTC)
Date: Tue, 7 Apr 2026 14:56:35 +0200
From: Karel Zak <kzak@redhat.com>
To: Morgan <me@numin.it>
Cc: util-linux@vger.kernel.org
Subject: Re: [PATCH] pidfd-utils: include correct struct statfs header for
 darwin
Message-ID: <kytxejmmpbpy45ncxxa7xis4wh7pbjgboqfe2i4xsqvm4rnvde@5pxos7dsi7xw>
References: <CAEUYr6ZjVX1bd-xcBGtFN_ZYwQnXDYsw7d1-7sTpF2BbgfrR+g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEUYr6ZjVX1bd-xcBGtFN_ZYwQnXDYsw7d1-7sTpF2BbgfrR+g@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1129-lists,util-linux=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[util-linux];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 64A223AEBE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Apr 05, 2026 at 06:18:29PM -0700, Morgan wrote:
> include/statfs_magic.h | 16 ++++++++++++++++
> lib/pidfd-utils.c      |  3 ---

I have committed only the statfs_magic.h part to make it more portable,
pidfd-utils.c needs to be marked as Linux-only as it's based on things
like pidfd abd statx.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


