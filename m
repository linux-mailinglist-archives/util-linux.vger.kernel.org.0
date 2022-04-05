Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B2944F22BA
	for <lists+util-linux@lfdr.de>; Tue,  5 Apr 2022 07:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229987AbiDEFvH (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 5 Apr 2022 01:51:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbiDEFui (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 5 Apr 2022 01:50:38 -0400
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06FBA129
        for <util-linux@vger.kernel.org>; Mon,  4 Apr 2022 22:48:39 -0700 (PDT)
Received: by verein.lst.de (Postfix, from userid 2407)
        id F0A6568AFE; Tue,  5 Apr 2022 07:48:36 +0200 (CEST)
Date:   Tue, 5 Apr 2022 07:48:36 +0200
From:   Christoph Hellwig <hch@lst.de>
To:     Hannes Reinecke <hare@suse.de>
Cc:     Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
        Keith Busch <kbusch@kernel.org>,
        linux-nvme@lists.infradead.org, util-linux@vger.kernel.org,
        Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
Subject: Re: [PATCH] nvme: add namespace paths links
Message-ID: <20220405054836.GA23647@lst.de>
References: <20220401092855.90652-1-hare@suse.de> <20220405054205.GA23466@lst.de> <289ee526-8f3f-9a2b-eef4-70816eb4f42e@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <289ee526-8f3f-9a2b-eef4-70816eb4f42e@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Apr 05, 2022 at 07:46:40AM +0200, Hannes Reinecke wrote:
> On 4/5/22 07:42, Christoph Hellwig wrote:
>> On Fri, Apr 01, 2022 at 11:28:55AM +0200, Hannes Reinecke wrote:
>>> It is really annoying to always have to loop through the entire
>>> /sys/block directory just to find the namespace path links for
>>> a single namespace in libnvme/nvme-cli.
>>> So provide links to the namespace paths for efficient lookup.
>>
>> I think having some form of links would be useful.  Quite a while ago
>> Thadeu looked into adding some form of relationship for lsblk and
>> friends.  Maybe it would be good to sync up and make sure whatever
>> links we are adding would be useful for all users?
>>
> Care to elaborate?
> Using the block device name is the most straightforward way here; we don't 
> have a good enumeration to leverage as the paths are essentially just a 
> linked list.
>
> We sure can have a subdirectory 'paths', and stick the links in there.
> If that helps with lsblk ...

I personally don't care.  But I've added Thadeu and the util-linux list
to get everyone on board.
