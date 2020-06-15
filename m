Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31AD71F93A8
	for <lists+util-linux@lfdr.de>; Mon, 15 Jun 2020 11:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728861AbgFOJjF (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 15 Jun 2020 05:39:05 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:50981 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728773AbgFOJjF (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 15 Jun 2020 05:39:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1592213944;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=2uGn1Et1StHeFLVoPspl4PBaeU2aNNkqMOw0PmwLyxQ=;
        b=F5VXxqBVBJNXfDpJ/aSpwjWe9BfJ6xtlJpO+nNM2tsPONt4AQZxJ/WjUJC8dLW2Xhs1Y7E
        1QedN6p8MXai8mlaWJw6qF51d7LmCVzpqHCNhJ/hJSt5umgOu2D5OkTaDC5urpiSy5Kjf2
        Km4gj8GDqAKXQ78p7uPHpsS5+PxDsTk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-23-FkXb0iirMRGjtY_F8iBWYw-1; Mon, 15 Jun 2020 05:39:02 -0400
X-MC-Unique: FkXb0iirMRGjtY_F8iBWYw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7081EA0C0F;
        Mon, 15 Jun 2020 09:39:01 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.133])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id AD10F8F352;
        Mon, 15 Jun 2020 09:39:00 +0000 (UTC)
Date:   Mon, 15 Jun 2020 11:38:58 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Sami Kerola <kerolasa@iki.fi>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 1/1] bash-completion: release preparations
Message-ID: <20200615093858.32jioy4dlfdchwns@ws.net.home>
References: <20200612192954.2965-1-kerolasa@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200612192954.2965-1-kerolasa@iki.fi>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Jun 12, 2020 at 08:29:54PM +0100, Sami Kerola wrote:
>  bash-completion/blkdiscard | 1 +
>  bash-completion/blkzone    | 2 +-
>  bash-completion/cfdisk     | 1 +
>  bash-completion/fdisk      | 3 +++
>  bash-completion/lsirq      | 1 +
>  bash-completion/mkswap     | 2 +-
>  bash-completion/nsenter    | 1 +
>  bash-completion/sfdisk     | 3 +++
>  bash-completion/wipefs     | 1 +
>  9 files changed, 13 insertions(+), 2 deletions(-)

Applied, thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

