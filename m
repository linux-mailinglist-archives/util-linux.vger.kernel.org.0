Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03E2921EBAB
	for <lists+util-linux@lfdr.de>; Tue, 14 Jul 2020 10:45:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725955AbgGNIpC (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Jul 2020 04:45:02 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:56137 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725884AbgGNIpC (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 14 Jul 2020 04:45:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1594716301;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=rKNGkz/f3rbL2UxEPTPw9WKoa3E+Q5h83CV/dzXphBE=;
        b=OaTwI1PTfWsEfkSTSvOT+khw0hxVNeAX0IZyNSTpbQvVKl9I0uMfUmU7wckkWgB2xaeRFl
        UNl1AIMSe5QyQaQzWvAiXFwx057RYD6mpI9YSIFjETQS4e06oianzIxEXgZQDuaj2zkM7x
        7FO5jd8jnDEoJ0L068acW7UhudJvnHM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-gDZWIQImM6CESfPmzV9eXA-1; Tue, 14 Jul 2020 04:44:56 -0400
X-MC-Unique: gDZWIQImM6CESfPmzV9eXA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D938618C63C1;
        Tue, 14 Jul 2020 08:44:54 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.98])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D16E5FC2C;
        Tue, 14 Jul 2020 08:44:53 +0000 (UTC)
Date:   Tue, 14 Jul 2020 10:44:51 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Cc:     util-linux@vger.kernel.org
Subject: Re: docs: mount.8: What does "with in libmount" mean
Message-ID: <20200714084451.awbr3isz4rjlqxgj@ws.net.home>
References: <20200709232315.GA28427@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200709232315.GA28427@rhi.hi.is>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jul 09, 2020 at 11:23:15PM +0000, Bjarni Ingi Gislason wrote:
>   Line 2556 in "sys-util/mount.8":
> 
> filesystem is mounted.  Requires libcryptsetup with in libmount
> (optionally via dlopen).
>                                                *******

Well, it means libmount linked with libcryptsetup ;-)

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

