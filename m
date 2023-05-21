Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81EDA70AFC8
	for <lists+util-linux@lfdr.de>; Sun, 21 May 2023 21:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230074AbjEUTUd (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 21 May 2023 15:20:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjEUTUd (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 21 May 2023 15:20:33 -0400
Received: from fifth.space (fifth.space [45.32.148.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44DDCCF
        for <util-linux@vger.kernel.org>; Sun, 21 May 2023 12:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fifth.space; s=20190812;
        t=1684696824;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=CQWsspLd8xYeFjaeY/nAS08nDfhSKqc1nvG6QlX9a58=;
        b=wt9DygpWK5WPjozm3Xi8EmdGScSMLGTHCCFwsSIEc83ygXY8WRqlVCBM9rnN1bOwoOw32A
        Cz3LTRCxBNJiBT8KtgFW6ZIKgmPCQ/5ylH4MKak5yd9shdiPWOQypHy1THxiCy3JKzkAqI
        bKmgRPiaap8lCFR9vb8C9S49sIIQEgBPI333igwMGSL0iXW7l1tbbzVAeYe5stMyhRfMxz
        7NFoctLp9te5IPlVE/PUjCniA+fy0FViufpCIsqnSzYWyOmV0gUAB3HB1Ui3urZNa2dZnA
        L5cFbbRTIyeKiI/NMX1kqB6zxxIZAtnUiLxpPGsF3KFshZmf911C5/hmmOPlXA==
Received: by fifth.space (OpenSMTPD) with ESMTPSA id ba7bfacf (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
        for <util-linux@vger.kernel.org>;
        Sun, 21 May 2023 21:20:20 +0200 (CEST)
Date:   Sun, 21 May 2023 21:20:18 +0200
From:   Quentin Rameau <quinq@fifth.space>
To:     util-linux@vger.kernel.org
Subject: Re: mount: sshfs problem with "defaults" option after 2.39 upgrade
Message-ID: <20230521212018.17829eb5.quinq@fifth.space>
In-Reply-To: <9c4d0dc2-de5b-4e34-9489-01e00a71e2da@t-8ch.de>
References: <20230521181814.0b0f2d38.quinq@fifth.space>
        <b71959fa-899b-411e-9937-d29689999111@t-8ch.de>
        <20230521201534.62dadbc8.quinq@fifth.space>
        <9c4d0dc2-de5b-4e34-9489-01e00a71e2da@t-8ch.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

> > On a side-note, should that flag be applied to other generic parameters
> > too, like user(s) for example?  
> 
> I guess they are useful for the helpers.
> 
> If the helpers were able to handle it before it should be fine.
> (They were passed in 2.38)
> 
> One could even argue that "defaults" should have been fine to be passed,
> but now it's a regression so needs to be fixed.

One difference that I can see is that before, "user" was being passed
but now, "user=$user" is being passed (and that gives an error too)

With mount patched with the above patch, and "user" option in the fstab

$ mount /mnt/ssh/path
fusermount3: unknown option 'user=quinq

But maybe that should be a different thread, what do you think?
