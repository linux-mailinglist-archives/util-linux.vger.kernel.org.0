Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3086502541
	for <lists+util-linux@lfdr.de>; Fri, 15 Apr 2022 08:02:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230370AbiDOGEY (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 15 Apr 2022 02:04:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230295AbiDOGEX (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 15 Apr 2022 02:04:23 -0400
Received: from nksmu.kylinos.cn (mailgw.kylinos.cn [123.150.8.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9E75A8891
        for <util-linux@vger.kernel.org>; Thu, 14 Apr 2022 23:01:56 -0700 (PDT)
X-UUID: e6f9133244d14e7084ce34f50560d812-20220415
X-UUID: e6f9133244d14e7084ce34f50560d812-20220415
Received: from cs2c.com.cn [(172.17.111.24)] by nksmu.kylinos.cn
        (envelope-from <lienze@kylinos.cn>)
        (Generic MTA)
        with ESMTP id 232373488; Fri, 15 Apr 2022 14:00:40 +0800
X-ns-mid: postfix-62590A50-9252324949
Received: from ubuntu (unknown [172.30.60.63])
        by cs2c.com.cn (NSMail) with ESMTPA id DC8653848675;
        Fri, 15 Apr 2022 06:01:52 +0000 (UTC)
Date:   Fri, 15 Apr 2022 14:01:52 +0800
From:   Enze Li <lienze@kylinos.cn>
To:     zhenwei pi <pizhenwei@bytedance.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] build-sys: add blkpr to gitignore
Message-ID: <20220415140152.4fe3d03c@ubuntu>
In-Reply-To: <6f22345a-8351-ae01-7df2-c2d31ccd5956@bytedance.com>
References: <20220415033125.3409425-1-lienze@kylinos.cn>
        <6f22345a-8351-ae01-7df2-c2d31ccd5956@bytedance.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS,
        SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE,T_SPF_PERMERROR,UNPARSEABLE_RELAY
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, 15 Apr 2022 11:31:31 +0800
zhenwei pi <pizhenwei@bytedance.com> wrote:

> On 4/15/22 11:31, Enze Li wrote:
> > Since this commit 627428a95692 ("blkpr: add block persistent
> > reservations command"), we introduced blkpr, but the compiled
> > generated binary file is not added to the gitignore, so let's do it.
> > 
> > Signed-off-by: Enze Li <lienze@kylinos.cn>
> > ---
> >   .gitignore | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/.gitignore b/.gitignore
> > index 3274563ec..0effa8945 100644
> > --- a/.gitignore
> > +++ b/.gitignore
> > @@ -73,6 +73,7 @@ GSYMS
> >   /addpart
> >   /agetty
> >   /blkdiscard
> > +/blkpr
> >   /blkzone
> >   /blkid
> >   /blockdev  

Hi zhenwei,

Thanks for your review.

> 
> Could you please reorder blkXX together to make them all in order?
> 

Indeed, if this is necessary.  I've sent v2 to util-liux@list.

Thanks,
Enze
