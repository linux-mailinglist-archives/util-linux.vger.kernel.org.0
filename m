Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6C662F815D
	for <lists+util-linux@lfdr.de>; Fri, 15 Jan 2021 17:58:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727792AbhAOQ6V (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 15 Jan 2021 11:58:21 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:58223 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726355AbhAOQ6U (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Fri, 15 Jan 2021 11:58:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1610729814;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=NBtWAT78iLq8gxnY9KiBK53dL4VLxQ9PgpNWfOCXwH0=;
        b=Ck78PDMS6bdcAOdCg3F00vyUCPTN9HWbE0E8sgfWVq7LqV3rGQB2NDueHa2Vr4vs0WduA6
        uSnQfOGXiwlK8BZXud10I0ypklfAq52GBaOK3GXrgmRxf7cSEXCOIhwimGWYq8lUmSmfWm
        0Rrv3MwZug0UoKF3/ONYLHLY345xo3o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-Rw9qvu37M8SVa2RhiUQn_w-1; Fri, 15 Jan 2021 11:56:52 -0500
X-MC-Unique: Rw9qvu37M8SVa2RhiUQn_w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D9D8107ACF7
        for <util-linux@vger.kernel.org>; Fri, 15 Jan 2021 16:56:51 +0000 (UTC)
Received: from ws.net.home (ovpn-117-0.ams2.redhat.com [10.36.117.0])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id DCE90620DE;
        Fri, 15 Jan 2021 16:56:50 +0000 (UTC)
Date:   Fri, 15 Jan 2021 17:56:48 +0100
From:   Karel Zak <kzak@redhat.com>
To:     Roberto Bergantinos Corpas <rbergant@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] findmnt: add option to list all fs-independent flags
Message-ID: <20210115165648.fgtvlcw7bwv34bj5@ws.net.home>
References: <20210112105853.9387-1-rbergant@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210112105853.9387-1-rbergant@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jan 12, 2021 at 11:58:53AM +0100, Roberto Bergantinos Corpas wrote:
>  libmount/docs/libmount-sections.txt |  1 +
>  libmount/src/fs.c                   | 31 +++++++++++++++++++++++++++++
>  libmount/src/libmount.h.in          |  1 +
>  libmount/src/libmount.sym           |  1 +
>  misc-utils/findmnt.8                |  5 +++++
>  misc-utils/findmnt.c                | 12 +++++++++--
>  misc-utils/findmnt.h                |  1 +
>  7 files changed, 50 insertions(+), 2 deletions(-)

Applied, thanks. 

I have added more information to the man page and fixed some details
in code.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

