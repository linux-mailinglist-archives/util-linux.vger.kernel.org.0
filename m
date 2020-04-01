Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5B32C19A926
	for <lists+util-linux@lfdr.de>; Wed,  1 Apr 2020 12:06:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727386AbgDAKGS (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 1 Apr 2020 06:06:18 -0400
Received: from us-smtp-2.mimecast.com ([205.139.110.61]:30815 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726445AbgDAKGS (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 1 Apr 2020 06:06:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1585735577;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=DBhkViIk8PhvccrW+/qS1nkKMlcdH/F0VDsrUQUgZWM=;
        b=Y+F5CaSDrEhJh7EB5PBAC1cV2dHoTr/XaeL94LAEBbvzImR+vf/EiuzZM4Juxi5/WoraEo
        OmzySI86crGTmVSDqnvYeXIlhn6S+hPhmL6inzoY0wNuLOq0V/Fn9FHAJe7w8wdVitupil
        Ql+hkLRWX7ogxC1fzkfVFD5ESk0vDvA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-74-77x4C72oOGejSjpeBEYfqQ-1; Wed, 01 Apr 2020 06:06:15 -0400
X-MC-Unique: 77x4C72oOGejSjpeBEYfqQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C71EB805749;
        Wed,  1 Apr 2020 10:05:59 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.51])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C860DDA10D;
        Wed,  1 Apr 2020 10:05:58 +0000 (UTC)
Date:   Wed, 1 Apr 2020 12:05:56 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Peter Cordes <peter@cordes.ca>
Cc:     Aurelien LAJOIE <orel@melix.net>, util-linux@vger.kernel.org
Subject: Re: [PATCH v2] libuuid: improve uuid_unparse() performance
Message-ID: <20200401100556.ccc2p5mmtn7zqmxw@ws.net.home>
References: <20200326143827.25879-1-orel@melix.net>
 <20200401083103.ipberscb6yzvpu4r@ws.net.home>
 <CA+bjHUSbRp7G=4C-_m9WR+OCLFZAyN0p85UH4R5m13w5YXWYgg@mail.gmail.com>
 <20200401100005.tuamlrlrujfzr7yd@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200401100005.tuamlrlrujfzr7yd@ws.net.home>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Wed, Apr 01, 2020 at 12:00:09PM +0200, Karel Zak wrote:
> On Wed, Apr 01, 2020 at 06:34:06AM -0300, Peter Cordes wrote:
> > Or can we put the wrapper function in a .h so it can inline away?
> > That would bake the choice into applications that use libuuid, so you
> > couldn't change it just by rebuilding libuuid.  That's perhaps not
> > desirable; if applications wanted to have that choice baked in they
> > could have called the explicit upper or lower versions.
>  
>  Frankly, what we're trying to fix by the alias? It sounds like
>  premature optimization. The current solution works, maybe foo(bar())
>  is also optimized by compiler. I have doubts that use inline function 
>  in header or so makes a real sense.

BTW, would be better to make uuid_fmt() as inline function as we use
it in uuid_unparse_lower(), uuid_unparse_upper() and uuid_unparse()?

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

