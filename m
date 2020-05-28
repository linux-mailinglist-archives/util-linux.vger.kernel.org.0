Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CF7D1E6178
	for <lists+util-linux@lfdr.de>; Thu, 28 May 2020 14:53:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389883AbgE1MxT (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 28 May 2020 08:53:19 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:33356 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2389828AbgE1MxT (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 28 May 2020 08:53:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1590670398;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=+qiYYDEcAbKhEXE6/PBwRNatjBd/VGyY+vq6uPSGIGw=;
        b=OwIrqum6lU6Xs+mSJhrJifkJ2I91ztdjmdVrWQpAqgeexx7IW5+RqHkN0wvL0SlP7bhd+1
        lAaZGaZPJwKYNP3OD33YulubiR3i/GNk9tafIezFDdxnleyyLoXoxumwxjTBWthfFICwB2
        HzFF5yRALEJNMLG4SjLptJ2YeUtpwmw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-84POPLTDPvaTGjxUhfbjMw-1; Thu, 28 May 2020 08:53:15 -0400
X-MC-Unique: 84POPLTDPvaTGjxUhfbjMw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A017800D24;
        Thu, 28 May 2020 12:53:14 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.133])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id A6F952B6E0;
        Thu, 28 May 2020 12:53:13 +0000 (UTC)
Date:   Thu, 28 May 2020 14:53:11 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 1/5] Manual pages: kill.1: various language, spelling,
 and formatting fixes
Message-ID: <20200528125311.u3ehflp55x4jejfr@ws.net.home>
References: <20200525125912.43748-1-mtk.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200525125912.43748-1-mtk.manpages@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Mon, May 25, 2020 at 02:59:08PM +0200, Michael Kerrisk (man-pages) wrote:
>  misc-utils/kill.1 | 25 ++++++++++++++++---------
>  1 file changed, 16 insertions(+), 9 deletions(-)

All 5 patches applied.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

