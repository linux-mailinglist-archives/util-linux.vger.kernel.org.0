Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 096B81997B6
	for <lists+util-linux@lfdr.de>; Tue, 31 Mar 2020 15:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730358AbgCaNmF (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 31 Mar 2020 09:42:05 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:51848 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1730216AbgCaNmF (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 31 Mar 2020 09:42:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1585662124;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=xP2zYe8iAGvFY3TAlySm9wlCyAEYgGv+mWwj6XOEHVY=;
        b=I2lkaEyKnbtFePwTv7wOVGCFtJyGsn8baBw7UQMTZ1+8joiOHRmBUy9RWSWzzohfqb45cb
        vajJWMJtvn59SwOBuVaEtzo1wfiXEvsuB2Qyx95aJJpPfsPhbVYa6uFayMr76a4smtQ2rF
        Rbw+1LUXd6VyjJ/ky1b1BUCDmjs17c4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-sltvGMh-O7yO9fv9_fqJPw-1; Tue, 31 Mar 2020 09:42:00 -0400
X-MC-Unique: sltvGMh-O7yO9fv9_fqJPw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 557BA107BA9B;
        Tue, 31 Mar 2020 13:41:59 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.51])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 36DDDCDBC1;
        Tue, 31 Mar 2020 13:41:57 +0000 (UTC)
Date:   Tue, 31 Mar 2020 15:41:54 +0200
From:   Karel Zak <kzak@redhat.com>
To:     J William Piggott <elseifthen@gmx.com>
Cc:     Aurelien LAJOIE <orel@melix.net>, util-linux@vger.kernel.org
Subject: Re: [PATCH 2/3] cal: Correctly center the year
Message-ID: <20200331134154.ok6zuym6w5p5sa2o@ws.net.home>
References: <20200328223341.11463-1-orel@melix.net>
 <20200328223341.11463-2-orel@melix.net>
 <nycvar.YAK.7.77.849.2003291015150.1315@zhn.tzk.pbz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YAK.7.77.849.2003291015150.1315@zhn.tzk.pbz>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Sun, Mar 29, 2020 at 10:39:51AM -0400, J William Piggott wrote:
> I still believe the year header is nonsense. IIRC, when I brought this
> up last time nobody replied with any justification for it.

Backward compatibility? I personally have no problem with the year
number in "cal -y" output. 

I don't think we can create output which will be esthetic enough 
for everyone, but we can introduce --noyear-header if it will make
cal(1) more useful for you.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

