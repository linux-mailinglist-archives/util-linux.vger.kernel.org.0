Return-Path: <util-linux+bounces-24-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE1D80A281
	for <lists+util-linux@lfdr.de>; Fri,  8 Dec 2023 12:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 752C5281A1F
	for <lists+util-linux@lfdr.de>; Fri,  8 Dec 2023 11:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FDCB1BDCD;
	Fri,  8 Dec 2023 11:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZQWPGPVl"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4C671729
	for <util-linux@vger.kernel.org>; Fri,  8 Dec 2023 03:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702035924;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LLTa9/TprxoICYTy0faiis1+HzYf2LNUuRA0p/+nK1k=;
	b=ZQWPGPVldtFmRTwJrPUWFUxQvkNACpAu7eq77PKGqMKJcpwkxjIiJIekcAb9c9e33HZ08f
	XbPCa2z0LIFXByTPo8/0C++io8a7b9XOTCkCkKW3WmubvEduXPOI+tImQ+GfOwANCgSqtd
	T4c60RKPkdI2on+eX63MeYaFA1OwtDA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-653-iy9jNaOsPRKm6-ifxSdIJA-1; Fri, 08 Dec 2023 06:45:22 -0500
X-MC-Unique: iy9jNaOsPRKm6-ifxSdIJA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F28C4185A783;
	Fri,  8 Dec 2023 11:45:21 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.175])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80DEF492BC6;
	Fri,  8 Dec 2023 11:45:21 +0000 (UTC)
Date: Fri, 8 Dec 2023 12:45:19 +0100
From: Karel Zak <kzak@redhat.com>
To: Goldwyn Rodrigues <rgoldwyn@suse.de>
Cc: util-linux@vger.kernel.org
Subject: Re: [PATCH] more: exit if POLLHUP or POLLERR on stdin is received
Message-ID: <20231208114519.5kitrxc4goqxolma@ws.net.home>
References: <2eb7rt74ljbdfj2t4psk7qteiwgpab45nyyuzozvy4omxt4xxe@hfbfxuqaeq3x>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2eb7rt74ljbdfj2t4psk7qteiwgpab45nyyuzozvy4omxt4xxe@hfbfxuqaeq3x>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9

On Wed, Dec 06, 2023 at 01:19:17PM -0600, Goldwyn Rodrigues wrote:
> diff --git a/text-utils/more.c b/text-utils/more.c
> index d4db3d5eb..6ab9dfe40 100644

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


