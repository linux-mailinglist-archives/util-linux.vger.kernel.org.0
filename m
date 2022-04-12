Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95EF44FDE9C
	for <lists+util-linux@lfdr.de>; Tue, 12 Apr 2022 13:54:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242092AbiDLLvC (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 12 Apr 2022 07:51:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355488AbiDLLta (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 12 Apr 2022 07:49:30 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4D5E545ADB
        for <util-linux@vger.kernel.org>; Tue, 12 Apr 2022 03:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649759696;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=7W8PCZdMtR1kB58mmt9DuNU1ntYAzFFKDOHH9juFFBY=;
        b=cNNi4dOexTbfqvmJ3U+vzpLGB0yZpa2Z9PqULhRq2VmPwoBlGQPFYUWqp3tZkxSMQmccIo
        i0d3CVJiQUDidQU1Lv3vWag/2gBfGoYczSWlU278zqKJ+evoNTg+V8pfUtogAlT6eRNWzj
        NwNqj7wUlWPBpBe7l6exeGMiVSJT/4w=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-459-SE8g8z28O4WNByOr140LOQ-1; Tue, 12 Apr 2022 06:34:55 -0400
X-MC-Unique: SE8g8z28O4WNByOr140LOQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13F5638035AD;
        Tue, 12 Apr 2022 10:34:55 +0000 (UTC)
Received: from ws.net.home (unknown [10.36.112.12])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 50B30140EBD5;
        Tue, 12 Apr 2022 10:34:53 +0000 (UTC)
Date:   Tue, 12 Apr 2022 12:34:51 +0200
From:   Karel Zak <kzak@redhat.com>
To:     =?utf-8?B?QXVyw6lsaWVu?= Lajoie <orel@melix.net>
Cc:     Util-Linux <util-linux@vger.kernel.org>,
        Stanislav Brabec <sbrabec@suse.cz>,
        "Trapp, Michael" <michael.trapp@sap.com>
Subject: Re: libuuid related tasks for next v2.39
Message-ID: <20220412103451.pve2pe3ey3rcxfuq@ws.net.home>
References: <20220401092104.b2snvmahp56zturm@ws.net.home>
 <CAA0A08XAF2eWScVKQ1Jd0vUPfHzZw8PAtiS-jRbom0EvRQ+Zsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAA0A08XAF2eWScVKQ1Jd0vUPfHzZw8PAtiS-jRbom0EvRQ+Zsg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Apr 01, 2022 at 11:49:17AM +0200, Aurélien Lajoie wrote:
> What about nice helpers to get fast access to the different part of the
> uuid?

I'm not sure if I understand. What do you mean with the helpers?

> We need to keep an eye on performance, php uuid code was more perf than the
> previous version of our lib.

Yes, printf sucks. It's fixed now. Thanks to you :-)

> Perhaps add some test to catch big impact on serialization and
> deserialization

Good point, maybe it's something we can add to (suggested)
uuidinfo command.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

