Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3CB2B22B6
	for <lists+util-linux@lfdr.de>; Fri, 13 Nov 2020 18:43:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726057AbgKMRnj (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 13 Nov 2020 12:43:39 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:32233 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726087AbgKMRni (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Fri, 13 Nov 2020 12:43:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1605289417;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=FYTsoKExveULtZ/KaJm1FqwV5OY44C1pLlEobGoIe/8=;
        b=Q4av16sSmZGRgJgVbQh1vKyr/rlR2uy9Xbu8FsvqHAR+kDlSwObOzep9Swa47lcwVhk1pU
        eSVGkNJv0lVYJqRKug0biCBLB5YOAIWlQuK1UfGXdAjTqldsH3pV3/luo5jPpHDL7d9xzQ
        GDQJ7KrTkaUaOS95rqWYxeOUUkSe+P8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-0Qs7w6bxN6CiO-mIVT9bEw-1; Fri, 13 Nov 2020 12:43:34 -0500
X-MC-Unique: 0Qs7w6bxN6CiO-mIVT9bEw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0A481087D60;
        Fri, 13 Nov 2020 17:43:33 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.248])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AEDF5C1C7;
        Fri, 13 Nov 2020 17:43:33 +0000 (UTC)
Date:   Fri, 13 Nov 2020 18:43:30 +0100
From:   Karel Zak <kzak@redhat.com>
To:     Masayoshi Mizuma <msys.mizuma@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 0/4] lscpu: Fix socket information on aarch64 machine
Message-ID: <20201113174330.cuqd4yuqsaeuwsal@ws.net.home>
References: <20200911135328.1465-1-msys.mizuma@gmail.com>
 <20200914101032.y3dn2oksf4jnbmvz@ws.net.home>
 <20200914123209.hantcnayp6gzswvc@gabell>
 <20201113171252.ffy6brgxmdm6lt53@gabell>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201113171252.ffy6brgxmdm6lt53@gabell>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Nov 13, 2020 at 12:12:52PM -0500, Masayoshi Mizuma wrote:
> On Mon, Sep 14, 2020 at 08:32:09AM -0400, Masayoshi Mizuma wrote:
> > On Mon, Sep 14, 2020 at 12:10:32PM +0200, Karel Zak wrote:
> > > On Fri, Sep 11, 2020 at 09:53:24AM -0400, Masayoshi Mizuma wrote:
> > > > lscpu may show the wrong number of physical sockets on aarch64 machine
> > > > as 'Socket(s)'.
> > > 
> > > I'm working on new lscpu (to make it more extendible and ready for
> > > systems with different CPUs types on the same board). I'll apply
> > > your changes later. Thanks!
> > 
> > Great, thanks!
> 
> Hi Karel,
> 
> Could you apply the patches?
> Let me know if I should rebase the patches to the latest lscpu and resend them.

I'd already merged.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

