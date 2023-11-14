Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D47DE7EAB68
	for <lists+util-linux@lfdr.de>; Tue, 14 Nov 2023 09:16:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbjKNIQo (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Nov 2023 03:16:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231382AbjKNIQn (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 14 Nov 2023 03:16:43 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D00831A8
        for <util-linux@vger.kernel.org>; Tue, 14 Nov 2023 00:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699949797;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=uyjIs0wkZ0Z2SyW/80DV3hd8xOFgGMq2iUJJH5aon4U=;
        b=FoGKBYOzfhDO6cC9bI+Kio0pefp0MaW3DpVfZ0zsd+jcLfyyoxFqnu+BW8LCydiJ2J1822
        P8L0o+kIginz7JPQhv4Tws3afEhRLNa5EHTPwiQaoxhWmTBI12Gikr6LbYcanbJS6mvlUX
        KZPDKHlilPzM/XoUps2pd7qIcAvuI28=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-FHjDHX_xMUqhaPQPiYOGRQ-1; Tue, 14 Nov 2023 03:16:33 -0500
X-MC-Unique: FHjDHX_xMUqhaPQPiYOGRQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 693A8185A780;
        Tue, 14 Nov 2023 08:16:33 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.94])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id CB875492BE0;
        Tue, 14 Nov 2023 08:16:32 +0000 (UTC)
Date:   Tue, 14 Nov 2023 09:16:30 +0100
From:   Karel Zak <kzak@redhat.com>
To:     John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
Cc:     Masatake YAMATO <yamato@redhat.com>, util-linux@vger.kernel.org
Subject: Re: [PATCH] tests: (lsfd::column-xmode) ignore "rwx" mappings
Message-ID: <20231114081630.3jb67afcv7muwg2x@ws.net.home>
References: <20231114022122.1292703-1-yamato@redhat.com>
 <172dc068e558d6c2e862f30197bb26af394b1b7b.camel@physik.fu-berlin.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172dc068e558d6c2e862f30197bb26af394b1b7b.camel@physik.fu-berlin.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Nov 14, 2023 at 08:24:12AM +0100, John Paul Adrian Glaubitz wrote:
> >  tests/ts/lsfd/column-xmode | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Tested-by: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
 

Applied. Thanks Adrian and Masatake.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

