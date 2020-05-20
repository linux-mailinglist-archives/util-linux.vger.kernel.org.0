Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 028BF1DB0D0
	for <lists+util-linux@lfdr.de>; Wed, 20 May 2020 12:59:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726435AbgETK7w (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 20 May 2020 06:59:52 -0400
Received: from us-smtp-2.mimecast.com ([207.211.31.81]:36069 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726403AbgETK7v (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Wed, 20 May 2020 06:59:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1589972390;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=l7Uc60rIj72ltYFFVnCsB3qj751GXiOFKUIrBB+RDMM=;
        b=PrGFx0sPuuiPIt3b8VpGTIbfOv/pBtnugM4Ra87J0gOT/HtWezLzAvljBHqfE52cenGYyf
        p01uJuKmUgREti8nuwbbBJFkOj3VgFIOTkIlAlbQUY4pFKvL76ncxOugNcGWXuWLn7LtGq
        ugFb2NoWKXVhEoYAL726H/rPMBl7GS4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-phIifatFNxuDCCv4Og5NnA-1; Wed, 20 May 2020 06:59:46 -0400
X-MC-Unique: phIifatFNxuDCCv4Og5NnA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07A17800053;
        Wed, 20 May 2020 10:59:46 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.193.102])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 42ACD70873;
        Wed, 20 May 2020 10:59:45 +0000 (UTC)
Date:   Wed, 20 May 2020 12:59:42 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 1/7] Manual pages: Standardize on AUTHORS as section title
Message-ID: <20200520105942.b4f7kf7e32jva7nu@ws.net.home>
References: <4bfbe76e-4bde-289c-2a8f-b29e1d3aaae1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4bfbe76e-4bde-289c-2a8f-b29e1d3aaae1@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, May 19, 2020 at 02:51:28PM +0200, Michael Kerrisk (man-pages) wrote:
>  47 files changed, 47 insertions(+), 47 deletions(-)

All 7 patches applied. Thanks!

Please, use the same prefix for all patches subject line -- for example
"Manual pages:" is nice. We use the prefix to generate release notes.
Thanks ;-)

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

