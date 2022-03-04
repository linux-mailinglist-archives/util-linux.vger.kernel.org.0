Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BEDC4CD7E2
	for <lists+util-linux@lfdr.de>; Fri,  4 Mar 2022 16:33:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234561AbiCDPd4 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 4 Mar 2022 10:33:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240353AbiCDPdx (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 4 Mar 2022 10:33:53 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0BF0AA0BE9
        for <util-linux@vger.kernel.org>; Fri,  4 Mar 2022 07:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1646407982;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=iPllYbp+BzV1UH6pWfe2q+hKkQ82v3Y8ieI8IHwja/A=;
        b=gOjww4hm+azeMrZHnIdqadDcm3qXcOv44jXKPrVkzupI5z+wCnX1p0ySh/sx8RL6QvK6fh
        4KEvhl3vihXMrLGR1djUk0cAcB/+r81eii3x0+TCZNWrFM4Ca7QrM3XL4s52YjLZYLUqP8
        h++v7wF7Xzm2bE6RYy182JNhsEixoi4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-488-R_7vjVZSPpWcprrDTiT0Eg-1; Fri, 04 Mar 2022 10:32:58 -0500
X-MC-Unique: R_7vjVZSPpWcprrDTiT0Eg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5CED824FA6;
        Fri,  4 Mar 2022 15:32:57 +0000 (UTC)
Received: from ws.net.home (unknown [10.36.112.12])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id EC1337A53E;
        Fri,  4 Mar 2022 15:32:56 +0000 (UTC)
Date:   Fri, 4 Mar 2022 16:32:54 +0100
From:   Karel Zak <kzak@redhat.com>
To:     linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
        util-linux@vger.kernel.org
Subject: [ANNOUNCE] util-linux v2.38-rc2
Message-ID: <20220304153254.3bfkjhijdwqsrztx@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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


The util-linux release v2.38-rc2 is available at
 
  http://www.kernel.org/pub/linux/utils/util-linux/v2.38/
 
Feedback and bug reports, as always, are welcomed.
 
  Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

