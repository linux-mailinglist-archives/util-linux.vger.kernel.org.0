Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5899474EB3C
	for <lists+util-linux@lfdr.de>; Tue, 11 Jul 2023 11:56:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbjGKJ4i (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 11 Jul 2023 05:56:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230021AbjGKJ4h (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 11 Jul 2023 05:56:37 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F5FDDD
        for <util-linux@vger.kernel.org>; Tue, 11 Jul 2023 02:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689069346;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=z8giuXJKkUvUG0g7WFG4M8iCqSp2mJLYESAb9jGtOQ4=;
        b=V4yEIsn7oKpJI+kPkOt87AtS29PJdp64zwBZCBUJcBPru5Zzzm1r61mGlpWjq1MrnSGseK
        wXsIkJ4SQ4VyhmQt+Bz8xwt3e1W02sNqBPUcRemigjP7uVb1T+4JVmN8ahsZKpDZGDU+H9
        cwj0mml6xDfrSTHNvSdKokifv+aPx7M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-315-L56tQWn4O02kmUBDHNLA0w-1; Tue, 11 Jul 2023 05:55:45 -0400
X-MC-Unique: L56tQWn4O02kmUBDHNLA0w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBB8B805AF6;
        Tue, 11 Jul 2023 09:55:44 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.224.70])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A4391121315;
        Tue, 11 Jul 2023 09:55:44 +0000 (UTC)
Date:   Tue, 11 Jul 2023 11:55:42 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Dragan Simic <dsimic@manjaro.org>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 3/3] lib/pager: Apply pager-specific fixes only when
 needed
Message-ID: <20230711095542.zi6d5tusxifch6vt@ws.net.home>
References: <20230704091430.3555428-1-dsimic@manjaro.org>
 <20230704091430.3555428-3-dsimic@manjaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230704091430.3555428-3-dsimic@manjaro.org>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jul 04, 2023 at 11:14:30AM +0200, Dragan Simic wrote:
>  lib/pager.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
 
 Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

