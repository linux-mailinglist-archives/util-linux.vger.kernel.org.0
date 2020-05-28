Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91EF41E6326
	for <lists+util-linux@lfdr.de>; Thu, 28 May 2020 16:02:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390569AbgE1OCT (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 28 May 2020 10:02:19 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:32432 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S2390540AbgE1OCS (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Thu, 28 May 2020 10:02:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1590674537;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=MFwQdeY+ezfXs/eNpVh0kOU60cBMvHVY8+GiTp8JhtM=;
        b=VK6F0VkfragML8tpITN8Cxqr5PMKEY7eRAsQv6VJtEUpL81xTgmR3vZ1Xi64auZd0p4V/M
        XzrMgbmoJqFXKS2/rdaT+sUBzUWd35XUXkrKfbkK5LxggpJCq1FTXo+m1030+jPoASPF8D
        X92KW/jz7JZNv/rkfUcz+ZPkP6OeWJY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-MqCoZHmXNWWaG0x5Q2eJ1w-1; Thu, 28 May 2020 10:02:01 -0400
X-MC-Unique: MqCoZHmXNWWaG0x5Q2eJ1w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B863461;
        Thu, 28 May 2020 14:01:59 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.133])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CA0D9CB9;
        Thu, 28 May 2020 14:01:58 +0000 (UTC)
Date:   Thu, 28 May 2020 16:01:55 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Chris Hofstaedtler <zeha@debian.org>
Cc:     util-linux@vger.kernel.org, Helge Deller <deller@gmx.de>
Subject: Re: [PATCH] setarch: fix stderr handling in uname26 tests
Message-ID: <20200528140155.2733jcqaukmpoiwo@ws.net.home>
References: <20200527232058.499568-1-zeha@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200527232058.499568-1-zeha@debian.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Wed, May 27, 2020 at 11:20:58PM +0000, Chris Hofstaedtler wrote:
>  tests/ts/misc/setarch | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

