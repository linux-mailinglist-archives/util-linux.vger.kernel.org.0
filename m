Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97D5733D4C9
	for <lists+util-linux@lfdr.de>; Tue, 16 Mar 2021 14:25:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232724AbhCPNYw (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 16 Mar 2021 09:24:52 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:58991 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230063AbhCPNYq (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 16 Mar 2021 09:24:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615901085;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=T52VYCgumcT5XodFV3BKb5p/R6EC7fnwMRROtDp693M=;
        b=ZxNd9pvBNV4S1ZNCXWA4XBSEewANkD7mquMCw0OwVFJWMdg4DWJ1LlQaf7eKDDmQGdec6h
        v+NM2IpU1dcsdeyNA7UH7S4Bdgeg2cCqp4KTCAIEf5AWHBcZ1bg0F0L608zyKWv+aB0Sf7
        zhN1b6p/KiYlBwIYjdCG2tOb+Ipe0o0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-s2rvX3BeNc-5d473IsfT3A-1; Tue, 16 Mar 2021 09:24:41 -0400
X-MC-Unique: s2rvX3BeNc-5d473IsfT3A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2EA85802B7A;
        Tue, 16 Mar 2021 13:24:40 +0000 (UTC)
Received: from ws.net.home (ovpn-113-171.ams2.redhat.com [10.36.113.171])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B0E25C1A1;
        Tue, 16 Mar 2021 13:24:38 +0000 (UTC)
Date:   Tue, 16 Mar 2021 14:24:35 +0100
From:   Karel Zak <kzak@redhat.com>
To:     =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Cc:     util-linux@vger.kernel.org,
        =?utf-8?Q?Bart=C5=82omiej_=C5=BBolnierkiewicz?= 
        <b.zolnierkie@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] hwclock: fix indentation
Message-ID: <20210316132435.krpcmql6rumul5kf@ws.net.home>
References: <CGME20210316115327eucas1p1735dd1ce566ef851bad9560927198834@eucas1p1.samsung.com>
 <20210316115313.20164-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210316115313.20164-1-l.stelmach@samsung.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Mar 16, 2021 at 12:53:13PM +0100, Łukasz Stelmach wrote:
>  sys-utils/hwclock-rtc.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

