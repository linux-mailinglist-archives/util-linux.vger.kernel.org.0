Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CB6A21F099
	for <lists+util-linux@lfdr.de>; Tue, 14 Jul 2020 14:14:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728413AbgGNMO3 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Jul 2020 08:14:29 -0400
Received: from us-smtp-2.mimecast.com ([205.139.110.61]:35593 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728376AbgGNMO2 (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 14 Jul 2020 08:14:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1594728867;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=yadKsB4SSF7HSgxcaPWbTVqqau0J+BrR21l5zLUe5eU=;
        b=EFlbjGxhDEKBKo6rLOTKoqpNCYSWcyBvJzq4LvH6txKgTv5wpK3M1CKElUEoqpXBV1jxB0
        7JWtSKCohWBfQTmrCYMA2R+VE0fFk0NmniU9psCxq4IpWj9bNBisFF0d/3LdKC1Ghv2rFM
        sqYKEPF9Yt9rS3oerou2DKGc6xzFM3I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-510-hGhhxiXbMJK8r2B4PLJCXQ-1; Tue, 14 Jul 2020 08:14:24 -0400
X-MC-Unique: hGhhxiXbMJK8r2B4PLJCXQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9620080BCA8;
        Tue, 14 Jul 2020 12:14:23 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.98])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D53F479CE3;
        Tue, 14 Jul 2020 12:14:22 +0000 (UTC)
Date:   Tue, 14 Jul 2020 14:14:20 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 5/5] Manual pages: various: reword "allow(s) to"
Message-ID: <20200714121420.fvmuuasgkq5hrtcz@ws.net.home>
References: <20200714095741.45292-1-mtk.manpages@gmail.com>
 <20200714095741.45292-5-mtk.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200714095741.45292-5-mtk.manpages@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jul 14, 2020 at 11:57:41AM +0200, Michael Kerrisk (man-pages) wrote:
> The wording "allow(s) to" is not grammatical English. Reword various
> pages to use a more correct form such "can be use to" or "allows
> the [noun] of".
> 
> Aklong the way, fix a few nearby wording errors in some pages.

Some of the "allow to" has been already fixed by Bjarni Ingi Gislason
(well, his fix is "allows <verb>ing" -- not sure what is better ;-).

The rest has been merged without change.

  Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

