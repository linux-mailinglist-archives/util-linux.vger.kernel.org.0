Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 739E7268900
	for <lists+util-linux@lfdr.de>; Mon, 14 Sep 2020 12:10:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726355AbgINKKj (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 14 Sep 2020 06:10:39 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:26065 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726239AbgINKKj (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 14 Sep 2020 06:10:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1600078238;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=1GM++T9TBIiWKTbdG4Begvh0Jly5Tnhtk7EgbT2T1sY=;
        b=MGudWZH+ypxX+hk1peeLgCrRL2fni1oFvntvpcs/0itGUlFkN7TB0jWmPNh+l5aRySxa2q
        oO7YCSBuaG2MpFnFXUk0WgEcNd+xG4netegCglrTWmRk09EKjxuI+Yn2CqIIJLnhquZHFM
        SQbO/l0aUS71P+wq1MmtIlRUo1tASC4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-h4DFmlvrMHqdH6M713rxJA-1; Mon, 14 Sep 2020 06:10:36 -0400
X-MC-Unique: h4DFmlvrMHqdH6M713rxJA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2EA2873110;
        Mon, 14 Sep 2020 10:10:35 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.193.69])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 147815DA7E;
        Mon, 14 Sep 2020 10:10:34 +0000 (UTC)
Date:   Mon, 14 Sep 2020 12:10:32 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Masayoshi Mizuma <msys.mizuma@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 0/4] lscpu: Fix socket information on aarch64 machine
Message-ID: <20200914101032.y3dn2oksf4jnbmvz@ws.net.home>
References: <20200911135328.1465-1-msys.mizuma@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200911135328.1465-1-msys.mizuma@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Sep 11, 2020 at 09:53:24AM -0400, Masayoshi Mizuma wrote:
> lscpu may show the wrong number of physical sockets on aarch64 machine
> as 'Socket(s)'.

I'm working on new lscpu (to make it more extendible and ready for
systems with different CPUs types on the same board). I'll apply
your changes later. Thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

