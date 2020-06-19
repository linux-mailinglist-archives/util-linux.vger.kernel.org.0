Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6296D20034C
	for <lists+util-linux@lfdr.de>; Fri, 19 Jun 2020 10:10:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730849AbgFSIJw (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 19 Jun 2020 04:09:52 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:39084 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1731014AbgFSIJZ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 19 Jun 2020 04:09:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1592554164;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=8fJPOjjQ7u6epwlEbGw2V91zOQPQ5wE7KmszjFD8IQk=;
        b=KPrqTWZlmDSZKYDGQ18jzc9FSbTMgqRf5yAX0Ta+gTBxXK71miqiWmUjS4W+4c/s25cIHA
        nedqNZooQd+VejL+dZzKwk3re8Fv5K65PZR3f9UVSI3lvYwWVpJQGc/oOYjaSsK+iOWV14
        lD1kbeJ1j+8KhMBLTwqh6aS/1eYHF0o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-ZKtFIxAtMcqYb-oeWFD5Rw-1; Fri, 19 Jun 2020 04:09:22 -0400
X-MC-Unique: ZKtFIxAtMcqYb-oeWFD5Rw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BEBEB107ACF4
        for <util-linux@vger.kernel.org>; Fri, 19 Jun 2020 08:09:21 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.133])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 09DFB709D7;
        Fri, 19 Jun 2020 08:09:20 +0000 (UTC)
Date:   Fri, 19 Jun 2020 10:09:18 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Lukas Czerner <lczerner@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH v2] blkdiscard: Refuse to proceed if signatures are found
Message-ID: <20200619080918.v524hmhdhaxogc62@ws.net.home>
References: <20200618105034.13498-1-lczerner@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200618105034.13498-1-lczerner@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jun 18, 2020 at 12:50:34PM +0200, Lukas Czerner wrote:
> v2: Rename function to probe_device, use switch and free probe if no
>     signature was found
> 
>  sys-utils/Makemodule.am |  2 +-
>  sys-utils/blkdiscard.c  | 59 ++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 59 insertions(+), 2 deletions(-)

Applied, thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

