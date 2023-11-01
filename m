Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74B717DE0A5
	for <lists+util-linux@lfdr.de>; Wed,  1 Nov 2023 13:05:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235501AbjKAMFn (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 1 Nov 2023 08:05:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235460AbjKAMFn (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 1 Nov 2023 08:05:43 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4153103
        for <util-linux@vger.kernel.org>; Wed,  1 Nov 2023 05:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1698840293;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=3bvyM5WPyl+zWTzqbWy+FxvZS7Cv5PeKFIUNLt5AmlQ=;
        b=U1iBl+jOp58HP5hQbZciSZLky9hZtCYbElK1Wfrl6Y1ao/tTTPvXqacPAvv9cX5I1gtk04
        FwwszcsC2ShUKtFWHS97uqcsNyyEjkkLTIeheNq18S70I18fN+vRifYEifhN5lNAkoxU3O
        3ngs10//iaWmpXyafGkECq7Z6Py/oCw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-397-RXiDQNZCO7-vX_R32Q4-AQ-1; Wed, 01 Nov 2023 08:04:47 -0400
X-MC-Unique: RXiDQNZCO7-vX_R32Q4-AQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C1290101A52D;
        Wed,  1 Nov 2023 12:04:46 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.226.1])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3091F1C060BA;
        Wed,  1 Nov 2023 12:04:46 +0000 (UTC)
Date:   Wed, 1 Nov 2023 13:04:44 +0100
From:   Karel Zak <kzak@redhat.com>
To:     Chris Hofstaedtler <zeha@debian.org>
Cc:     util-linux@vger.kernel.org, Emanuele Rocca <ema@debian.org>
Subject: Re: [PATCH] setterm: avoid restoring flags from uninitialized memory
Message-ID: <20231101120444.i4pp3apginkssyhd@ws.net.home>
References: <20231031135226.10243-1-zeha@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231031135226.10243-1-zeha@debian.org>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Oct 31, 2023 at 02:52:26PM +0100, Chris Hofstaedtler wrote:
>  term-utils/setterm.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

