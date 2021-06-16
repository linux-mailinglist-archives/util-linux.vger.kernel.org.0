Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A86C63A95E2
	for <lists+util-linux@lfdr.de>; Wed, 16 Jun 2021 11:18:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231672AbhFPJUk (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 16 Jun 2021 05:20:40 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:29267 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231336AbhFPJUj (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Wed, 16 Jun 2021 05:20:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1623835050;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=WUfnsfOBhK3JpXs3uks9AEEJPHUi4pK5lq+zF5XJBvc=;
        b=DKuKXRaCHmnTMxbJv9YIizDa8To1J2TWTW4Z7ZacNL571Wh4uMZSYPB3kjYg1xKw3H7pDO
        nHdGMCy5+3VCktiLvuJHSC/g9iQtNnTnWZdsgA5lKAS/ozLnsAFGoFF5dyGMfpy87Cf8+I
        pju/rz9DfNseB2WWe1UMJJ+grpiDf30=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-A6ftNPP_NNWZm6Xg4pTHZg-1; Wed, 16 Jun 2021 05:17:29 -0400
X-MC-Unique: A6ftNPP_NNWZm6Xg4pTHZg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 207D0802690;
        Wed, 16 Jun 2021 09:17:28 +0000 (UTC)
Received: from ws.net.home (ovpn-113-152.ams2.redhat.com [10.36.113.152])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 45D7A5D9F2;
        Wed, 16 Jun 2021 09:17:26 +0000 (UTC)
Date:   Wed, 16 Jun 2021 11:17:23 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Huang Shijie <shijie@os.amperecomputing.com>
Cc:     util-linux@vger.kernel.org, patches@amperecomputing.com,
        zwang@amperecomputing.com, mas@amperecomputing.com,
        ilkka@os.amperecomputing.com, jeremy.linton@arm.com,
        jbastian@redhat.com, m.mizuma@jp.fujitsu.com
Subject: Re: [PATCH 1/2] lscpu: get the processor information by DMI
Message-ID: <20210616091723.ow5qwzydjt6n5fou@ws.net.home>
References: <20210615100639.51546-1-shijie@os.amperecomputing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210615100639.51546-1-shijie@os.amperecomputing.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jun 15, 2021 at 10:06:38AM +0000, Huang Shijie wrote:
>  sys-utils/lscpu-arm.c |  2 ++
>  sys-utils/lscpu-dmi.c | 39 +++++++++++++++++++++++++++++++++++++++
>  sys-utils/lscpu.h     |  7 +++++++
>  3 files changed, 48 insertions(+)

Applied (both patches), thanks.

  Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

