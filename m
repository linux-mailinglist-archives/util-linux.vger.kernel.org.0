Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4EDF23ECE9
	for <lists+util-linux@lfdr.de>; Fri,  7 Aug 2020 13:51:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728399AbgHGLvd (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 7 Aug 2020 07:51:33 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:53967 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726293AbgHGLvd (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 7 Aug 2020 07:51:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1596801092;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Jgn3ijil2KOvFGGVsZTZAwopt37NpMcoCaacd3SpmYk=;
        b=e2U0WUw5YfjOmTUMO4J7nTjLwVdF/NtotpUvpjYR0+1mIohTulxw1mETqu7B5perhV54Qd
        ZYom8Nekf+IYKVyE8idgAiNa2jYZ1zL5bXd93G16SMzQWlz0PN72r3RiZd+GXA1oKQGb+2
        fFLkPL68b5Eo2m+2pJ7rkOssje31CGc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-6zc4GLzJMnCGMBTNxIv3Hg-1; Fri, 07 Aug 2020 07:51:29 -0400
X-MC-Unique: 6zc4GLzJMnCGMBTNxIv3Hg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D5F2107BEF5;
        Fri,  7 Aug 2020 11:51:28 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.193.69])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 75A888AC05;
        Fri,  7 Aug 2020 11:51:27 +0000 (UTC)
Date:   Fri, 7 Aug 2020 13:51:24 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Pavel Machek <pavel@ucw.cz>
Cc:     util-linux@vger.kernel.org
Subject: Re: [ANNOUNCE] util-linux v2.36
Message-ID: <20200807115124.nsjpltxtvkog2fhk@ws.net.home>
References: <20200723100828.262ftx3qhie2sc32@ws.net.home>
 <20200725170211.GA2807@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200725170211.GA2807@amd>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Sat, Jul 25, 2020 at 07:02:11PM +0200, Pavel Machek wrote:
> Hi!
> 
> > The commands fdisk(8), sfdisk(8), cfdisk(8), mkswap(8) and wipefs(8) now
> > support block devices locking by flock(2) to better behave with udevd or other
> > tools. Ffor more details see https://systemd.io/BLOCK_DEVICE_LOCKING/.  This
> 
> There's typo "ffor", but I guess it is too late to fix that?

Fixed in git repository -- but yes, it's already released.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

