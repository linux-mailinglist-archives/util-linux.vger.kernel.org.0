Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1666121EBC7
	for <lists+util-linux@lfdr.de>; Tue, 14 Jul 2020 10:49:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726809AbgGNItw (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Jul 2020 04:49:52 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:45951 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725816AbgGNItw (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 14 Jul 2020 04:49:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1594716591;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=lB64rjWKx+VOarPkBmi5Hj8XjwH7/wDSVAyQLICPyzo=;
        b=emibzHQCV68jtJ+fHZpUR0GOXhDObVqeD1IbRktUU4GbNa3H+ezEJtYxycbUD28hc30nzr
        WXAIhGXtgW23oniLtGE1EsQuEQmJhAlH7sx4rla/JEQ2s4PbUda1CHgzQ5rrXaZYmz6EEM
        vQbzBDiatMNsptYTUS0XMnk4or4sZVA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-LZiEvR_1OVapgMaojsxMnQ-1; Tue, 14 Jul 2020 04:49:49 -0400
X-MC-Unique: LZiEvR_1OVapgMaojsxMnQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBCC68A51BE;
        Tue, 14 Jul 2020 08:49:39 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.98])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3695F19C4F;
        Tue, 14 Jul 2020 08:49:39 +0000 (UTC)
Date:   Tue, 14 Jul 2020 10:49:36 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] Subject: docs: remove unnecessary paragraph macros
Message-ID: <20200714084936.ubjy5bu25pkwjsfe@ws.net.home>
References: <20200710001243.GA30809@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200710001243.GA30809@rhi.hi.is>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Jul 10, 2020 at 12:12:44AM +0000, Bjarni Ingi Gislason wrote:
>  sys-utils/hwclock.8.in | 6 ------
>  1 file changed, 6 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

