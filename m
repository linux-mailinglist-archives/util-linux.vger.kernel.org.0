Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 136CF1D7777
	for <lists+util-linux@lfdr.de>; Mon, 18 May 2020 13:40:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727796AbgERLki (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 18 May 2020 07:40:38 -0400
Received: from us-smtp-2.mimecast.com ([205.139.110.61]:37480 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726362AbgERLkh (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 18 May 2020 07:40:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1589802036;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=bJWwPW8A8+N4uPYaJZufeC9yWCsyOvJWCTe0L3NgQPw=;
        b=iFtKIruXoeVfVk5laRCu+yTnWpXVJzecfp3FgIzp5lPSnDGilSErdhNz/u70iDmxAWofqr
        vp/+Bugh+pzb3GvpIUF7eSCYs6AKIk57Th6C/uG+bRM/zTIqS1NdaAZKjyXchgL9fDCNOU
        2YqXXnni1G7nUUiMQsQnL1POhBTw0qI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-RXr-00q0NXSgX43tGsIFMg-1; Mon, 18 May 2020 07:40:34 -0400
X-MC-Unique: RXr-00q0NXSgX43tGsIFMg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D5CE18FE86A;
        Mon, 18 May 2020 11:40:33 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.193.102])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id AC15279587;
        Mon, 18 May 2020 11:40:30 +0000 (UTC)
Date:   Mon, 18 May 2020 13:40:27 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] util-linux: Some minor fixes in some manuals
Message-ID: <20200518114027.cn4kqdb66kukfq4s@ws.net.home>
References: <20200514235129.GA8403@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200514235129.GA8403@rhi.hi.is>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, May 14, 2020 at 11:51:29PM +0000, Bjarni Ingi Gislason wrote:
>  misc-utils/kill.1   | 2 +-
>  misc-utils/lsblk.8  | 2 +-
>  sys-utils/mount.8   | 1 -
>  sys-utils/unshare.1 | 8 ++++----
>  term-utils/agetty.8 | 2 +-
>  text-utils/more.1   | 4 ++--
>  6 files changed, 9 insertions(+), 10 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

