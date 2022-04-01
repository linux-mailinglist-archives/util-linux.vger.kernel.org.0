Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 534C24EEA49
	for <lists+util-linux@lfdr.de>; Fri,  1 Apr 2022 11:21:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245680AbiDAJXH (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 1 Apr 2022 05:23:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242965AbiDAJXG (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 1 Apr 2022 05:23:06 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EEE9C20A966
        for <util-linux@vger.kernel.org>; Fri,  1 Apr 2022 02:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1648804875;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=Pn9gn0rhop3OovfYCm2Qdnc1RHVv9VHCGpwY+lgn2fw=;
        b=SgAgt2QTEWbxsvkz68u8GGoco8vn7mZkr93f5YD97plIAzZdy45+NPMO+qBZlRu5qaHcE+
        oQnshtoVzWlqQeqdxnGeqzPM3Ao+X/6l6jhh1JxU/j8NBRuCsHxgsBhIO6PjlZ+4eslVvi
        vGd19r/PhpZsnsVCjWmoHs2Kji5pyOM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-OWxNQLP6Ok27F2-zCZstxA-1; Fri, 01 Apr 2022 05:21:07 -0400
X-MC-Unique: OWxNQLP6Ok27F2-zCZstxA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E1A8D1C0B050;
        Fri,  1 Apr 2022 09:21:06 +0000 (UTC)
Received: from ws.net.home (unknown [10.36.112.12])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 49B61400F8FE;
        Fri,  1 Apr 2022 09:21:06 +0000 (UTC)
Date:   Fri, 1 Apr 2022 11:21:04 +0200
From:   Karel Zak <kzak@redhat.com>
To:     util-linux@vger.kernel.org
Cc:     Stanislav Brabec <sbrabec@suse.cz>,
        "Trapp, Michael" <michael.trapp@sap.com>
Subject: libuuid related tasks for next v2.39
Message-ID: <20220401092104.b2snvmahp56zturm@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org



 Hi,

 I'd like to invest time to libuuid and uuidd in the next v2.39.

 Stanislav had same ideas and a lot of research in libuuid code to
 make things more stable, and I'd like to improve testability of the
 all UUID stack we have in util-linux. 

 TODO:

  * uuid_generate_* functions refactoring to make things readable and
    to separate ways how UUIDs are generated

  * clean up uuidd to generate UUID only by the most robust UUIDs way 
    without any fallback (use uuid_generate_time_sync_by_file())

  * report all issues on uuidd stderr

  * optionally keep clockfile (/var/lib/libuuid/clock.txt) in uuidd hands
    to make sure the file is not shared with other users if the system
    is only-uuidd based; for example add --clock-file uuidd option to
    overwrite libuuid default.

  * invite our SAP friends to the upstream development to share ideas
    and requirement :-)

  * rewrite misc-utils/test_uuidd.c to something commonly usable
    (uuidinfo tool?) and use it in util-linux regression tests,
    features:

     - detect if uuidd is running
     - add statistics to the uuidd (number of generated UUIDs,
       clients, errors, ...)
     - add new UUIDD_OP_* to the uuidd to get additional information
       about the daemon (paths, statistics, etc.)
     - stress test (like the current test_uuidd.c)


  * anything else?


   Karel
  

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

