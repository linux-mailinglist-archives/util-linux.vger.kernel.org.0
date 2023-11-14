Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03C417EACD5
	for <lists+util-linux@lfdr.de>; Tue, 14 Nov 2023 10:17:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232529AbjKNJRU (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Nov 2023 04:17:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232536AbjKNJRT (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 14 Nov 2023 04:17:19 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28BC6132
        for <util-linux@vger.kernel.org>; Tue, 14 Nov 2023 01:17:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699953435;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=66e2j8qWyVKUGewsHJ1ufvuAsuGtQjN8uG3gEW+6pro=;
        b=iGMnG6HVfVl0ZuudS2ZKkP74iRTh3rOTzZHkI4pVLtk87LEx7swjSFBzRk6+g7syVhdCAG
        Qny5PLrzNepxprMhPyb3qt4ZjjY2mm0a+2LimL0LgdP8Pq1jU5kmrAjCgrnXLe/czA5V0P
        pt5KllxTh/2+kfSQxur7V8yeQWWRFiI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-313-W8FHRL38MIaPePIUz4CG9A-1; Tue, 14 Nov 2023 04:17:13 -0500
X-MC-Unique: W8FHRL38MIaPePIUz4CG9A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44587811E7D;
        Tue, 14 Nov 2023 09:17:13 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.94])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C38D4143;
        Tue, 14 Nov 2023 09:17:12 +0000 (UTC)
Date:   Tue, 14 Nov 2023 10:17:10 +0100
From:   Karel Zak <kzak@redhat.com>
To:     Dyweni - Util-Linux <DDh8rwTFp32E@dyweni.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: Unexpected interaction between script and screen
Message-ID: <20231114091710.6kykaxqamd6tb34w@ws.net.home>
References: <b6a590f6024faea4c2b738a70774bc47@dyweni.com>
 <7a796ba6caa03ceca594dec9add67fe8@dyweni.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7a796ba6caa03ceca594dec9add67fe8@dyweni.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org


 Hi Dyweni,

 sorry for delay.

On Mon, Nov 06, 2023 at 06:01:55PM -0600, Dyweni - Util-Linux wrote:
> Is there any idea on resolving this issue?  What would be the best
> way to prevent a session running inside screen from being
> unexpectedly ended by script when the ssh connection to the server
> is lost?
> 
> I'd like to find the best approach before coding a solution.  The
> ideas I've had include:
> * simply skipping sending the EOF to the child
> * killing the child

It uses EOF to emulate on the internal terminal how pipes work for
example:           

    echo "ps" | script         

We must send to the shell "ps" string and EOF and then *wait* for the
shell to exit correctly. If we send SIGTERM without EOF and without
waiting for shell termination, we will probably lose some output from
the shell. It's because script(1) is faster than shell.

But I can imagine that in some cases is this way unnecessary and just
send a signal is good enough.  

So, add a new option to skip EOF and leave the main loop in
ul_pty_proxy_master() and sending SIGTERM to the child may be a good idea.

Send patch ;-)


BTW, it would be nice to have the log from:

    SCRIPT_DEBUG=all script 2> log    

to see your session in details.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

