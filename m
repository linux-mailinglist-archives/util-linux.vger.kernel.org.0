Return-Path: <util-linux+bounces-350-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A97279E9276
	for <lists+util-linux@lfdr.de>; Mon,  9 Dec 2024 12:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BCEE18860E8
	for <lists+util-linux@lfdr.de>; Mon,  9 Dec 2024 11:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C831226EE3;
	Mon,  9 Dec 2024 11:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="N38O6Obh"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F34223715
	for <util-linux@vger.kernel.org>; Mon,  9 Dec 2024 11:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733743901; cv=none; b=uMvkaeCeX0M5HAzJwfYtIZrse09Wf45a2tjQbMskLLrKbs9r3kN9W7QuNFRS16WFhGhbOBn/y2+zhmqTHRZLnOsM+Xmei9zfZxewh4M60pSaH2wYzpsrhaGANO0EZJoaThHcIDsji/GXVDIfdD4Nw+/sXD7/T5E9UT1P2vatbX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733743901; c=relaxed/simple;
	bh=HV9tZtM8pGUQ/it305oH/rhW8ybGXLqnmuXfRl8Vj4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mFZVU0q5qS3HAzqvgxPZ3Vl0hRS/QtziDDkR1qAyJwdtyuCyfxQ5GbfWZGt59WMFP167POL/FjJL53WZH7XLDCVKgCpRCC4EHN9f8ILS10OykSlM9RQololf3Cvh8dgNeVOgRtPsI6+s8LbhL7jmiG2/TVFoNTswdCfSS8vjhrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=N38O6Obh; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1733743897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tpToiCO/JP9+/VAwyiCU53uk1yn/NjxsQOAf4RMO0c8=;
	b=N38O6Obhi00hfGrybrMBMJ/Nj1eNlA+gxFe0noXCwxL7C35M7vzkFNEYznj0TsOEPVngDh
	3LQD+s3oaDNlLmU1g33UQg0TKJJujYGURr5AYrbUWlqECDoTmpFZoANAAILcTCMeLsTHO/
	aevDuPkQ5GAiD22WvB0WjLLChE9wFs8=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-227-2KGFhLXqOweVHX826u_qDw-1; Mon,
 09 Dec 2024 06:31:34 -0500
X-MC-Unique: 2KGFhLXqOweVHX826u_qDw-1
X-Mimecast-MFC-AGG-ID: 2KGFhLXqOweVHX826u_qDw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5946B1956086;
	Mon,  9 Dec 2024 11:31:33 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.12])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 105D61956056;
	Mon,  9 Dec 2024 11:31:30 +0000 (UTC)
Date: Mon, 9 Dec 2024 12:31:27 +0100
From: Karel Zak <kzak@redhat.com>
To: Zhaoming Luo <zhmingluo@163.com>
Cc: util-linux@vger.kernel.org, bug-hurd@gnu.org
Subject: Re: [PATCH v2] hwclock: Support GNU Hurd
Message-ID: <i62gihq2eo4ndwdesnyyzqdxm2pq7vkvdqpedabfwno3usdleq@m4x4veocglyj>
References: <20241209111611.370398-1-zhmingluo@163.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241209111611.370398-1-zhmingluo@163.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

On Mon, Dec 09, 2024 at 07:16:11PM GMT, Zhaoming Luo wrote:
>  configure.ac            |  6 +++++-
>  sys-utils/Makemodule.am |  5 +++++
>  sys-utils/hwclock-rtc.c | 19 ++++++++++++++++++-
>  sys-utils/hwclock.c     |  2 +-
>  sys-utils/hwclock.h     |  4 +++-
>  5 files changed, 32 insertions(+), 4 deletions(-)

Great, I have created a pull request for CI tests at
https://github.com/util-linux/util-linux/pull/3319 and will merge it
later. Thank you!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


