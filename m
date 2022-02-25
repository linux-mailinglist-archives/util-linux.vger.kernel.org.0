Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AE244C5064
	for <lists+util-linux@lfdr.de>; Fri, 25 Feb 2022 22:13:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235656AbiBYVNc (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 25 Feb 2022 16:13:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234504AbiBYVNc (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 25 Feb 2022 16:13:32 -0500
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B604154732;
        Fri, 25 Feb 2022 13:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=Z7wdJC+0kx3l3p5CC3OcwuCNDMS9JX4YUo0ttYZ2ZwM=; b=ygSlH9a1M/ftI6oY6my+MlD6eC
        EEV0B1vnHT25QM5WDR+hJ0S7ubm+ux4FI9SzqVWUVUaSQVdUTeTRiIuAFKd8TL1JUnYGgN1vlijpw
        xIm00yGWOeN2BiA8lNJEF36tz8t3MFtfYhqDTJviUfTO62k/QzdHFEcPgnszHhTb5IHUCTwLWRz6Q
        o0N8qtN+IBPbblm1H8jj9aSu92jwkTPjjJTSJuZaJXsuqrVld3e+6+zhlBhFY98m0JIqx4Ni5CsBB
        WKxctf6LS6EblB1BbeN/8WNm+el64EN6OQGCsX47ptE89Ppf1rxd+Db5kLduntNmWUyucNPcbOWMy
        lLUZHNag==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
        id 1nNhtY-006zda-Pp; Fri, 25 Feb 2022 21:12:56 +0000
Date:   Fri, 25 Feb 2022 13:12:56 -0800
From:   Luis Chamberlain <mcgrof@kernel.org>
To:     Christoph Hellwig <hch@lst.de>
Cc:     util-linux@vger.kernel.org, linux-block@vger.kernel.org
Subject: Re: [PATCH] losetup: don't skip adding a new device if it already
 has a device node
Message-ID: <YhlGWEJ8w2iXmie7@bombadil.infradead.org>
References: <20220225180903.1341819-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220225180903.1341819-1-hch@lst.de>
Sender: Luis Chamberlain <mcgrof@infradead.org>
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Feb 25, 2022 at 07:09:03PM +0100, Christoph Hellwig wrote:
> Linux plans to deprecate the auto-creation of block devices based on
> access to the devic node starting from kernel 5.18.  Without that feature
> losetup will fail to create the loop device if a device node already
> exists, but the loop device to back it in the kernel does not exist yet.
> This is a scenario that should not happen in modern udev based
> distributions, but apparently there still are various scripts around that
> manually call the superflous mknod.
> 
> Change losetup to unconditionally call loopcxt_add_device when a specific
> device node is specified on the command line.  If the loop device
> already exists the LOOP_CTL_ADD ioctl will fail, but given that losetup
> ignores the return value from loopcxt_add_device that failure has no
> further effect.

I think it would help to explain what the issue is, with a simple
example on the commit log.

By default loading the loop module we'll create only 8 loopback
devices. Prior to the new CONFIG_BLOCK_LEGACY_AUTOLOAD which intends
to deprecate the whole oldschool probe functionality which used try
to load the respective block driver (loop in this case) when the
driver is not present but the nodes are created manually, the following
piece of code would work:

losetup -D
modprobe -r loop
modprobe loop

rm -f foo.img
truncate -s 10M foo.img

# Note: /dev/loop8 by default won't exist as we default to 7
# loop devices
rm -f /dev/loop8
mknod /dev/loop8 b 7 8
losetup /dev/loop8 foo.img

When deprecating this probe --> module load logic, if the
mknod is run we'd currently fail at the last step. With this
fix the last step will still work. However please note that
CONFIG_BLOCK_LEGACY_AUTOLOAD goes away the above will require
manually loading the loop module. Scripts which fail to load
the loop module prior to mknod will fail by definition of the
deprecation effort.

> Reported-by: Luis Chamberlain <mcgrof@kernel.org>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

With that said:

Tested-by: Luis Chamberlain <mcgrof@kernel.org>

  Luis

> ---
>  sys-utils/losetup.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sys-utils/losetup.c b/sys-utils/losetup.c
> index c400cbf12..09c028b6b 100644
> --- a/sys-utils/losetup.c
> +++ b/sys-utils/losetup.c
> @@ -522,7 +522,7 @@ static int create_loop(struct loopdev_cxt *lc,
>  		}
>  	}
>  
> -	if (hasdev && !is_loopdev(loopcxt_get_device(lc)))
> +	if (hasdev)
>  		loopcxt_add_device(lc);
>  
>  	/* losetup --noverlap /dev/loopN file.img */
> -- 
> 2.30.2
> 
