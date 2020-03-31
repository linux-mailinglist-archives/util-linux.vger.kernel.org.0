Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9811F199773
	for <lists+util-linux@lfdr.de>; Tue, 31 Mar 2020 15:30:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730745AbgCaNa5 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 31 Mar 2020 09:30:57 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:41485 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1730216AbgCaNa5 (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 31 Mar 2020 09:30:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1585661456;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=/ZiBC4lb2UkIJ8kAWK7HrqySlDck8Nhf2ziG7LSPn1U=;
        b=Nkb3D9ANpiLSVXwT9iD7DTz3l1X9FEI45/DzIHarCtqPvCnytWjUpZMM7xPpiZOaECvVek
        uSeRFuPkKEo/NYhq04wG/hzU0ybd2LoYJaDXySutnGLTG5or+kmGC12FosHYhYIdT5+z5f
        94eQgnn2wD7XM7FiLw5SteTVIXwRt80=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-_pLlRiCJNwCAnsYdNgw50A-1; Tue, 31 Mar 2020 09:30:54 -0400
X-MC-Unique: _pLlRiCJNwCAnsYdNgw50A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E175D149C8;
        Tue, 31 Mar 2020 13:30:52 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.51])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 219691001B28;
        Tue, 31 Mar 2020 13:30:51 +0000 (UTC)
Date:   Tue, 31 Mar 2020 15:30:49 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Aurelien LAJOIE <orel@melix.net>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH v2] libuuid: improve uuid_unparse() performance
Message-ID: <20200331133049.5sfx5mouifgjlhpj@ws.net.home>
References: <20200326143827.25879-1-orel@melix.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200326143827.25879-1-orel@melix.net>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Mar 26, 2020 at 03:38:27PM +0100, Aurelien LAJOIE wrote:
>  libuuid/src/unparse.c | 45 ++++++++++++++++++++-----------------------
>  1 file changed, 21 insertions(+), 24 deletions(-)

Applied, thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

