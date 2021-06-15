Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF6F93A7959
	for <lists+util-linux@lfdr.de>; Tue, 15 Jun 2021 10:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbhFOIuc (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 15 Jun 2021 04:50:32 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:56321 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231264AbhFOIuc (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 15 Jun 2021 04:50:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1623746907;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=EIBelyFEWH5DQgzDv3M/u0QCrnEjAIyG/IpNkqr3b+0=;
        b=U0r7/DGx7hILgAxjQaD+ImCiOTo5kWkE+hp42VA7j5sKx7dTswgCsn/s/ZPVOuH7a6vxvC
        acpCaaoygF07XVvy+/fHxLekE/QunqVxwBal0dgfs5mN2UHdNqhihK3KRIFOvCe9cRPH6i
        tfFO0lgxb+6JwJ+1ZkhVjmCOur+3PRE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-qh-b6QIrNjq138DCBmr5Xg-1; Tue, 15 Jun 2021 04:48:26 -0400
X-MC-Unique: qh-b6QIrNjq138DCBmr5Xg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 29511107ACF6;
        Tue, 15 Jun 2021 08:48:25 +0000 (UTC)
Received: from ws.net.home (ovpn-113-152.ams2.redhat.com [10.36.113.152])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DFD41962D;
        Tue, 15 Jun 2021 08:48:23 +0000 (UTC)
Date:   Tue, 15 Jun 2021 10:48:21 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Huang Shijie <shijie@os.amperecomputing.com>
Cc:     util-linux@vger.kernel.org, patches@amperecomputing.com,
        zwang@amperecomputing.com, mas@amperecomputing.com,
        ilkka@os.amperecomputing.com,
        Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, jbastian@redhat.com
Subject: Re: [PATCH] lscpu: get the processor information by DMI
Message-ID: <20210615084821.s2mcvmpaetb7fbjq@ws.net.home>
References: <20210614094845.13958-1-shijie@os.amperecomputing.com>
 <20210614104126.htcsjaaibwfcvp2n@ws.net.home>
 <YMhw94JMDieTpqLA@hsj>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YMhw94JMDieTpqLA@hsj>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jun 15, 2021 at 09:20:55AM +0000, Huang Shijie wrote:
> > > +	/* Get CPU family */
> > > +	memset(buf, 0, sizeof(buf));
> > > +	sprintf(buf, "%d", di.processor_family);
> > > +	free(ct->family);
> > > +	ct->family = xstrdup(buf);
> > 
> > is there any difference between "cpu family" from /proc/cpuinfo and
> > this DMI field? Do we need a new field ct->bios_family or overwrite 
> > the ct->family good enough? I don't know ;-)
> > 
> In the arm platform, it seems it does not show the "cpu family" info in lscpu.
> And I did not find the "cpu family" in the /proc/cpuinfo, only find "cpu architecture: 8".
> Unfortunately, the "cpu architecture :8 " is hardcode, it will be changed for armv9 in future.
> 
> In the DMI, the "cpu family" shows 0x101 which means "arm v8".

So, re-use ct->family for now. We can change it later.

  Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

