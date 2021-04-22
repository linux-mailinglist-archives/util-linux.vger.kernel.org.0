Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4029936829A
	for <lists+util-linux@lfdr.de>; Thu, 22 Apr 2021 16:41:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236398AbhDVOmW (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 22 Apr 2021 10:42:22 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:47566 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236496AbhDVOmV (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Thu, 22 Apr 2021 10:42:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1619102506;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=kU7B7tF/1v2m32DXaucZ+XppsE2Vj52397TUHidgKSE=;
        b=iT8aM1LN6iw/8sWZlvaI/xzqvmMv0ltjEGaxxIdR9BEpRa8NitlD+Yq6sgXROIGGYXjpiw
        Mrtbe6OtnvP/oVStPnZ9bn+cQHT9JNLHUtqNRyzM6Ke6YJjL6wIR7aqIh6o1X7fDvpP/1Z
        UV3wwCZBOhniadB0mFXFLlsRBnX7mNU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-RqticIY9MgeW2e4rx0H_Dg-1; Thu, 22 Apr 2021 10:41:31 -0400
X-MC-Unique: RqticIY9MgeW2e4rx0H_Dg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2BED91966323;
        Thu, 22 Apr 2021 14:41:30 +0000 (UTC)
Received: from ws.net.home (ovpn-115-34.ams2.redhat.com [10.36.115.34])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id BF0F110023AE;
        Thu, 22 Apr 2021 14:41:28 +0000 (UTC)
Date:   Thu, 22 Apr 2021 16:41:25 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Naohiro Aota <naohiro.aota@wdc.com>
Cc:     util-linux@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
        Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: Re: [PATCH v2 0/3] implement zone-aware probing/wiping for zoned
 btrfs
Message-ID: <20210422144125.cqgji5i47osmcw7b@ws.net.home>
References: <20210414013339.2936229-1-naohiro.aota@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414013339.2936229-1-naohiro.aota@wdc.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Wed, Apr 14, 2021 at 10:33:36AM +0900, Naohiro Aota wrote:
>  configure.ac                     |   1 +
>  libblkid/src/blkidP.h            |   5 +
>  libblkid/src/probe.c             | 108 ++++++++++++++++--
>  libblkid/src/superblocks/btrfs.c | 185 ++++++++++++++++++++++++++++++-
>  4 files changed, 290 insertions(+), 9 deletions(-)

Note that I'll merge it to v2.38, it seems too late for v2.37 where we
have already -rc1 and I guess Naohiro will prepare v3 of the patchs too.

  Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

