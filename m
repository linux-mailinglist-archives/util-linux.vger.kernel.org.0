Return-Path: <util-linux+bounces-509-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 23998A47926
	for <lists+util-linux@lfdr.de>; Thu, 27 Feb 2025 10:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9834188343C
	for <lists+util-linux@lfdr.de>; Thu, 27 Feb 2025 09:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9607225A34;
	Thu, 27 Feb 2025 09:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Qfxqb5Pu"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B1D22579D
	for <util-linux@vger.kernel.org>; Thu, 27 Feb 2025 09:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740648623; cv=none; b=ATHTkX290e5AMEex/zYRSbXFbW/ZzQGM6WfKKLG3nQZ19HHxXFXOTDwvh4TE9NP1iOgbydJ4VOMD7Yc6QM5/Prja5AYuIGtplgGfL6FkItUOaZj5yuvF9rWXvS/RerraXj20Rl9dtHGfI/retXpAVCkynXvmr70am6Mkw84B2r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740648623; c=relaxed/simple;
	bh=ma8XZlwKdZC5c8cXkqdeNk04YdNT0mBFBa/A/IbMLHU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ofkAiYVIrnMvyREQLRTYG8oGLHc8yqJNVomcgfBqf4rdB7hR3VuJDObHRVYC3r/s2q+TOLomRN9fkHGDANTgjJXLev4EdLkSKPyIkVpLHXe5m28YYZYoIKZRw87I25eE/7ND1AwnzDO4PARDv6M4BKXQLEFGBTNqO3m7wpE0t2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Qfxqb5Pu; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1740648620;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HSgy6KxldbYNLfE3dwSdo8bKyZ9gJFvB2xtk9kyZg1Y=;
	b=Qfxqb5PuMJcEj8MJ/YT97jM5Pi1YKplNgR7xxUzY7GSDVk3kyVMt+ZQCDyKMLhwC9PeeCO
	AjIou12dRGVfP2aIix01Lss9lfzbm0J6o/3cptX+odxlezCJD/tkalY1yXB60fdKRWnPrS
	Jb/Hc1up2Wg+IVZQoNAZakmryYkbiLc=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-424-KzgcFgUlNAmxpoMSu7gzOw-1; Thu,
 27 Feb 2025 04:30:18 -0500
X-MC-Unique: KzgcFgUlNAmxpoMSu7gzOw-1
X-Mimecast-MFC-AGG-ID: KzgcFgUlNAmxpoMSu7gzOw_1740648617
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5AAE71800982;
	Thu, 27 Feb 2025 09:30:17 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.247])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF9C01800358;
	Thu, 27 Feb 2025 09:30:15 +0000 (UTC)
Date: Thu, 27 Feb 2025 10:30:12 +0100
From: Karel Zak <kzak@redhat.com>
To: Joe Jin <joe.jin@oracle.com>
Cc: Zhenwei Pi <pizhenwei@bytedance.com>, Sami Kerola <kerolasa@iki.fi>, 
	util-linux@vger.kernel.org
Subject: Re: [PATCH 3/3] lsirq,irqtop: add support for reading data from
 given file
Message-ID: <tzkpkjopbtqlpmeic2xoephezgfl63xa5e4eytycmg24cbnx4q@qamwltb7ol6y>
References: <20250227044916.89925-1-joe.jin@oracle.com>
 <20250227044916.89925-4-joe.jin@oracle.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250227044916.89925-4-joe.jin@oracle.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

On Wed, Feb 26, 2025 at 08:49:16PM GMT, Joe Jin wrote:
> +	if (ctl->input == NULL) {
> +		if (ctl->softirq == 1)
> +			ctl->input = strdup(_PATH_PROC_SOFTIRQS);
> +		else
> +			ctl->input = strdup(_PATH_PROC_INTERRUPTS);
> +		if (!ctl->input)
> +			err_oom();
> +	}

 Please, use xstrdup(), than you do not need to care about result and
 use err_oom();

    Karel
-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


