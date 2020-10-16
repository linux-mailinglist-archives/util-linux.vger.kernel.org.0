Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9242901BA
	for <lists+util-linux@lfdr.de>; Fri, 16 Oct 2020 11:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405957AbgJPJTC (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 16 Oct 2020 05:19:02 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:28928 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2405772AbgJPJTB (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Fri, 16 Oct 2020 05:19:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1602839941;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=famsv2CRVxiQS8HPhElbw6fk9272ex679jUB6useArE=;
        b=BwiIfG0mXG9wFxb8Y0ejdHtums+ga9V/R7NQvw7YtV5c11FN1sKq7e27SZWo4WYPgNxAm3
        PxI2qlu/HEeheOQcwmv4U5Wly7H6YerooIAlsJX1M1bGbS4zbGixfu8sKDa6wdiM++mOJf
        qBxhjQov9yzmsg85j6S4W1/zpw4lsc0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-519-bB8gY55yOH66LnsmitmwCw-1; Fri, 16 Oct 2020 05:18:57 -0400
X-MC-Unique: bB8gY55yOH66LnsmitmwCw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CBAAAF9A0;
        Fri, 16 Oct 2020 09:18:56 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.172])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id B159B76649;
        Fri, 16 Oct 2020 09:18:55 +0000 (UTC)
Date:   Fri, 16 Oct 2020 11:18:52 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Sami Kerola <kerolasa@iki.fi>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] col: fix --help short option in usage() output
Message-ID: <20201016091852.spd4x7wbclxgcbzt@ws.net.home>
References: <20201014202245.24452-1-kerolasa@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201014202245.24452-1-kerolasa@iki.fi>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Wed, Oct 14, 2020 at 09:22:45PM +0100, Sami Kerola wrote:
> The col(1) is using unusual -H as --help short option.  The -h is used for
> --tabs (horizontal tab?) in this implementation.

Good catch. Applied, thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

