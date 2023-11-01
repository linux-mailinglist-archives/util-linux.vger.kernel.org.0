Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D54B37DDEE1
	for <lists+util-linux@lfdr.de>; Wed,  1 Nov 2023 11:06:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230200AbjKAKGL (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 1 Nov 2023 06:06:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230523AbjKAKGL (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 1 Nov 2023 06:06:11 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4446B109
        for <util-linux@vger.kernel.org>; Wed,  1 Nov 2023 03:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1698833116;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=i9btAgnJACW8iWPVB0Trjf6OGdWWztB3rJIaEhwcT9U=;
        b=IJbcn+SWItV7oqVIhVCnmVnxyAqRc67fRAAiCpgVA7AohcPVYIGuGZTOPXv6OwGHD2HV8h
        6zhM0Gd1izkuFabaf3ZCFW7Wsbcic5gAXpwdoyGteRXZrHAyg6A/9FuLeBXQT7+Oi69nS2
        e5VzpfWo3tcL4sqcSknkysEAfrIY76Q=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-611-92CitUPfNbiXZqR4QiXpdg-1; Wed,
 01 Nov 2023 06:05:12 -0400
X-MC-Unique: 92CitUPfNbiXZqR4QiXpdg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 826653C025A1;
        Wed,  1 Nov 2023 10:05:12 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.226.1])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id A9F5140C6EBF;
        Wed,  1 Nov 2023 10:05:11 +0000 (UTC)
Date:   Wed, 1 Nov 2023 11:05:09 +0100
From:   Karel Zak <kzak@redhat.com>
To:     Dragan Simic <dsimic@manjaro.org>
Cc:     Junxiao Bi <junxiao.bi@oracle.com>, util-linux@vger.kernel.org,
        thomas@t-8ch.de
Subject: Re: [PATCH V2] loopdev: report lost loop device file error
Message-ID: <20231101100509.fzfgtydua26euhyy@ws.net.home>
References: <20231025203603.48584-1-junxiao.bi@oracle.com>
 <c90766480ad9ac312a99359599e1029a@manjaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c90766480ad9ac312a99359599e1029a@manjaro.org>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

On Tue, Oct 31, 2023 at 06:34:03PM +0100, Dragan Simic wrote:
> On 2023-10-25 22:36, Junxiao Bi wrote:
> > If a /dev/loopX is lost because someone might have removed it by
> > mistake,
> > future losetup operations on that loop device will fail.
> > For examples, following cmds will fail when loop device file is lost.
> > - "losetup -d $loop_device"
> > - "losetup -f $file" or "mount $file $dev"
> > 
> > Since /sysfs still have the loop device intact, detect that and report
> > detailed log message to guide user to recover the lost loop device file.
> > 
> >     # ./losetup -a
> >     /dev/loop0: [64512]:19133870 (/tmp/test.img)
> >     # rm -rf /dev/loop0
> >     # ./losetup -d /dev/loop0
> >     /dev/loop0 is lost, run "mknod /dev/loop0 b 7 0" to recover it.
> >     lt-losetup: /dev/loop0: detach failed: No such file or directory
> 
> Maybe, but just maybe, we shouldn't provide instructions how to fix the
> issue, but just print the major/minor numbers and let the user figure out
> what's going on and how to fix the issue.

The error message is just detail from my point of view :) Junxiao
forgot to highlight that losetup (--all/--list) do not report at all 
the loop devices without /dev node. That's bug, because such devices
are still used by kernel and should not be hidden for system admins.

I'm just playing with it and I'll push Junxiao's patch with some
modifications.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

