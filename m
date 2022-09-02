Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 800D15AA96C
	for <lists+util-linux@lfdr.de>; Fri,  2 Sep 2022 10:07:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235621AbiIBIHM (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 2 Sep 2022 04:07:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233931AbiIBIHL (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 2 Sep 2022 04:07:11 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FFCA7284F
        for <util-linux@vger.kernel.org>; Fri,  2 Sep 2022 01:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662106029;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=9YFcvKx9L9eu/ck5gjlGHdhPSUvof1TmxufTRpX7vBA=;
        b=iCT7LYDtgmD92buaq8kyxk9TIPIepJMhncuvv4Yzch9HWNxQT+eTiqeLltKbiJqeaxBF1O
        +tGaVkTuuNT18JwUocFr9gMlxRO5llHy92qhltwNdWTl/2fFmvqhwO9F/IFydHydU+ItDk
        o6vhOuaja6qLXKwPRB51nQGm0yzAXUQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-1-D5-6d4BtNuuhWkj1YUmHqw-1; Fri, 02 Sep 2022 04:07:06 -0400
X-MC-Unique: D5-6d4BtNuuhWkj1YUmHqw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10DA985A58A;
        Fri,  2 Sep 2022 08:07:06 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.192.179])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B3A54010FA0;
        Fri,  2 Sep 2022 08:07:05 +0000 (UTC)
Date:   Fri, 2 Sep 2022 10:07:03 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Jeremy Linton <jeremy.linton@arm.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] lscpu: Even more Arm part numbers
Message-ID: <20220902080703.y7psgcoyknenvi6s@ws.net.home>
References: <20220901215230.2543624-1-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220901215230.2543624-1-jeremy.linton@arm.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Sep 01, 2022 at 04:52:30PM -0500, Jeremy Linton wrote:
>  sys-utils/lscpu-arm.c | 3 +++
>  1 file changed, 3 insertions(+)

Thanks for the update! Applied.

  Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

