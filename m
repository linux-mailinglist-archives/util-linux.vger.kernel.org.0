Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D037927C299
	for <lists+util-linux@lfdr.de>; Tue, 29 Sep 2020 12:46:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725355AbgI2Kqg (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 29 Sep 2020 06:46:36 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:56554 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725283AbgI2Kqg (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 29 Sep 2020 06:46:36 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601376396;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=IiS3HnOmUidfWqsJBqzASuBGoCbsUUcdhcCavDTfekw=;
        b=NGeFwBYCLwykQOTdXm6+XarS0PgwG/6iRQf0erxK06UN+3iz8M3DVJmSFDCLg1cKqyUd/2
        XushKt3jXSIaEn/XXD2dtMB7JAdmLoD3pnPFJNmHaX2vrfgvVF5t26jXbCodnL1+k9+G/h
        NwXVBwKQUTujQg6NnCQRr3IWUQgSqog=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-84-KCPYtq8iNtCnEQYyKHuKSw-1; Tue, 29 Sep 2020 06:46:32 -0400
X-MC-Unique: KCPYtq8iNtCnEQYyKHuKSw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EFF0C8018A9;
        Tue, 29 Sep 2020 10:46:30 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.172])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 12B8E60C84;
        Tue, 29 Sep 2020 10:46:29 +0000 (UTC)
Date:   Tue, 29 Sep 2020 12:46:27 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Shunsuke Nakamura <nakamura.shun@jp.fujitsu.com>
Cc:     util-linux@vger.kernel.org,
        Shunsuke Nakamura <nakamura.shun@fujitsu.com>
Subject: Re: [PATCH] lscpu: Add FUJITSU aarch64 A64FX cpupart
Message-ID: <20200929104627.i4tivxi6kd4m24oh@ws.net.home>
References: <20200928094614.3648619-1-nakamura.shun@jp.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200928094614.3648619-1-nakamura.shun@jp.fujitsu.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Mon, Sep 28, 2020 at 06:46:14PM +0900, Shunsuke Nakamura wrote:
>  sys-utils/lscpu-arm.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

