Return-Path: <util-linux+bounces-498-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A349A43683
	for <lists+util-linux@lfdr.de>; Tue, 25 Feb 2025 08:54:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5D807A5C31
	for <lists+util-linux@lfdr.de>; Tue, 25 Feb 2025 07:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9728E25A32D;
	Tue, 25 Feb 2025 07:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="O257wdTq"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F2A1DF964
	for <util-linux@vger.kernel.org>; Tue, 25 Feb 2025 07:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740470062; cv=none; b=Bkp/EaohPKec326WnZX63YIhuBN6CGiBb487gaPwDgm58CHxDopRjK/h+8TITnwfZVUFyME5+k3NhzmkdJWdD3oVHZV+oY817fDO8+d89YUky8HxPnjxlkSxUQana9kIF82j22mobBPrLGF6SZ+OpdlFw+c4sRSjQ08Qm51Hrb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740470062; c=relaxed/simple;
	bh=KZsziHdO52+5MtOd7WBxYZXWn1f58aN5FipR+5DfZRU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sfzB3GNMQ43JdWqNvktNbewyyTFtbyak0ka+FgfMut41kA5QHSXQbj3TI5iFM75DOIUPSioxcnn+S6sN803fwFG8C7PsYiiNokOfBCnQ1VXgyAbt5gvNzNe/q95h183VS3jooEK8o1d8Aa1brq95JepRoj6yiEGP3uRJGYE/wTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=O257wdTq; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1740470059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+Lj2RZ+loRXU1dQeZaB9vqBAp06EuvEg1FWikCDyAh0=;
	b=O257wdTqu0SHFfm6jUcPtHzor2RDbQR+/ii+jqYk2W+QfcQqGi86z9XnGtPVo7jwel+fI9
	016q9CkqTCESihOHmHRco9IWWM6TJ8MBJ8GoN5C7u6n3UQlyoNxSuYY0HmiAE9ETJG1WVg
	cBUOJaaxuBonxYnUczIY5zh2qxAcD0U=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-218-2sL0pW6PMLaH_YV8tkOVjA-1; Tue,
 25 Feb 2025 02:54:15 -0500
X-MC-Unique: 2sL0pW6PMLaH_YV8tkOVjA-1
X-Mimecast-MFC-AGG-ID: 2sL0pW6PMLaH_YV8tkOVjA_1740470055
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E770218EB2CE;
	Tue, 25 Feb 2025 07:54:14 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.247])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DE50C19560AE;
	Tue, 25 Feb 2025 07:54:13 +0000 (UTC)
Date: Tue, 25 Feb 2025 08:54:10 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org
Subject: Re: [PATCH 1/6] scriptreplay: indicate that <divisor> is conditional
 on <typescript>
Message-ID: <gpz6dipauta7bads37kubjrnlwvcrsrs2pgppnlvd2ce5zwcti@ta6tb3vjyutm>
References: <20250224130840.25770-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250224130840.25770-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15

On Mon, Feb 24, 2025 at 02:08:35PM GMT, Benno Schulenberg wrote:
>  term-utils/scriptreplay.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

All 6 patches applied, thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


