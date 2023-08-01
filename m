Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AAF776B5DA
	for <lists+util-linux@lfdr.de>; Tue,  1 Aug 2023 15:30:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232966AbjHANaO (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 1 Aug 2023 09:30:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233944AbjHANaN (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 1 Aug 2023 09:30:13 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EACE0173F
        for <util-linux@vger.kernel.org>; Tue,  1 Aug 2023 06:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1690896564;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=lTAZyOf4ueX/x4xj5RvOvCKuBt2knPzEfRahwaePUZc=;
        b=MzXcxtsJTYGNWRll/qKGO6EmIPYtGSUEiwlWl2YteSAQ+fjFMQzX3BGkBEZTzlPpq8SxLa
        qtwo0fA0MOFplb8XiIVzch2S0CgCaeIGVlq1eU9Kcy93WVhSXY+DqOwB4hMXmGe55MbcdQ
        7+63bV2vtIRhPCX/sr7ahUprkHtOOds=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-153-KJRkBxSKMsq9Q0IN6Ec-qA-1; Tue, 01 Aug 2023 09:29:20 -0400
X-MC-Unique: KJRkBxSKMsq9Q0IN6Ec-qA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63D4B185A7A3;
        Tue,  1 Aug 2023 13:29:19 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.194])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E18181121325;
        Tue,  1 Aug 2023 13:29:18 +0000 (UTC)
Date:   Tue, 1 Aug 2023 15:29:16 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Jeremy Linton <jeremy.linton@arm.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] lscpu: Even more Arm part numbers (early 2023)
Message-ID: <20230801132916.ucx6qljmbjs5kleq@ws.net.home>
References: <20230726205420.68911-1-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726205420.68911-1-jeremy.linton@arm.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Wed, Jul 26, 2023 at 03:54:20PM -0500, Jeremy Linton wrote:
>  sys-utils/lscpu-arm.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

