Return-Path: <util-linux+bounces-272-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A1D91016E
	for <lists+util-linux@lfdr.de>; Thu, 20 Jun 2024 12:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 226C82815E3
	for <lists+util-linux@lfdr.de>; Thu, 20 Jun 2024 10:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267691A8C08;
	Thu, 20 Jun 2024 10:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Gq2JA2oU"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDBF502A9
	for <util-linux@vger.kernel.org>; Thu, 20 Jun 2024 10:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718879158; cv=none; b=cKaGU1G0Lzb3KWpGKNa7saCdqZlvAN9pJFwCGIWs0SVxwiIs2DxtPtbRtEUyxmqoirSE6V72cU+LHqPyg42Jju9Y4RFe07C+8suu8sxjraYDZDfJvNHFMH5pYv079C6rw5yOZAur5ACxX3Q9hQPVN8VTir4/tdRNy+mZ6As1PEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718879158; c=relaxed/simple;
	bh=/fFZN72J6elKJq/gvuzZzSbIXCSnXvFSr8yzLZXwClI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GglhWocIdOfxdRWlzSZNBPPLedpn1Oi0VU0EsKM5beKCyG6LZRv+mTMG6n2kfG5dIZZ4Q4GxzonliIEJh6WuNhpFOnSFcKLIfGhXh4vQFXjDB/551Zpe5LTijFfqrEskzs0ZygT8xBmeSW1uLRNh6gbF8+YIAV2oJI5JmZy+R20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Gq2JA2oU; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718879155;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Wl+89U8/T95K6lZpb4HzqVT8ttHAaNSrqSQwyr9MAis=;
	b=Gq2JA2oU7D62jk56QjDcxHhA2htjmgz/YE1TXnbRfBY//QnXB4XnXnJXVuQDu2IYIV5Poo
	3w8BbglpVfkRzI8LIctXRLcb35muUQr9NPm8loGIr6z0YK69LRU46HZVGNQM6ROtfCxjnA
	EhbAx0Q5Nb6Neo9Jr1d1DLm+gu6Ezv4=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-64-s0kSyZmlNXaV2EeuxZc80w-1; Thu,
 20 Jun 2024 06:25:53 -0400
X-MC-Unique: s0kSyZmlNXaV2EeuxZc80w-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DD7F31956095;
	Thu, 20 Jun 2024 10:25:52 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.185])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E4AA819560AE;
	Thu, 20 Jun 2024 10:25:51 +0000 (UTC)
Date: Thu, 20 Jun 2024 12:25:48 +0200
From: Karel Zak <kzak@redhat.com>
To: Laurent Vivier <laurent@vivier.eu>
Cc: util-linux@vger.kernel.org
Subject: Re: [PATCH v3 0/2] unshare: manage binfmt_misc mounts
Message-ID: <lp76qyxlea3q4buhxutsyw4b7hc36pozwfz3usiykvtgx5veme@wsbioqugqs6c>
References: <20240619081951.656640-1-laurent@vivier.eu>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240619081951.656640-1-laurent@vivier.eu>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

On Wed, Jun 19, 2024 at 10:19:49AM GMT, Laurent Vivier wrote:
>  include/pathnames.h      |  1 +
>  sys-utils/unshare.1.adoc | 21 ++++++++++++
>  sys-utils/unshare.c      | 71 +++++++++++++++++++++++++++++++++++++++-
>  3 files changed, 92 insertions(+), 1 deletion(-)

Applied, thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


