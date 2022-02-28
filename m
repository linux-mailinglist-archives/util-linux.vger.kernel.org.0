Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B30AA4C6700
	for <lists+util-linux@lfdr.de>; Mon, 28 Feb 2022 11:16:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbiB1KRZ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 28 Feb 2022 05:17:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234005AbiB1KRZ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 28 Feb 2022 05:17:25 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2CC8D41314
        for <util-linux@vger.kernel.org>; Mon, 28 Feb 2022 02:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1646043406;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=cR/JqMDzFyroahRcZeJea+RxRiBOviUlJoy03ud6Wc8=;
        b=AtHhiU2nlM9DBGp82s4B77+T7Nk1fLDFlRBDdK84sAshUGCD48UBMtT2ZacrNibLS1VjOi
        q+1PdqoYx8c0jQEIcl+04zPQ+smXt4ckjSvyNRDIwPT3X5mVwPDA6pkSWGAJxtkkXcnB6m
        6n7S/HO+PiO9CCSJmUufSZeu65HBxO0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-478-FY1fT8-dO-usOIphTHVKYw-1; Mon, 28 Feb 2022 05:16:42 -0500
X-MC-Unique: FY1fT8-dO-usOIphTHVKYw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7EE91091DA1;
        Mon, 28 Feb 2022 10:16:41 +0000 (UTC)
Received: from ws.net.home (unknown [10.36.112.8])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id A4B662B3B5;
        Mon, 28 Feb 2022 10:16:40 +0000 (UTC)
Date:   Mon, 28 Feb 2022 11:16:37 +0100
From:   Karel Zak <kzak@redhat.com>
To:     Christoph Hellwig <hch@lst.de>
Cc:     util-linux@vger.kernel.org, linux-block@vger.kernel.org,
        Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH] losetup: don't skip adding a new device if it already
 has a device node
Message-ID: <20220228101637.5upfmvn4wbesny5f@ws.net.home>
References: <20220225180903.1341819-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220225180903.1341819-1-hch@lst.de>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Feb 25, 2022 at 07:09:03PM +0100, Christoph Hellwig wrote:
>  sys-utils/losetup.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

 Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

