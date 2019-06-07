Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BDB9F384DD
	for <lists+util-linux@lfdr.de>; Fri,  7 Jun 2019 09:20:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726533AbfFGHUM (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 7 Jun 2019 03:20:12 -0400
Received: from mx1.redhat.com ([209.132.183.28]:58318 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726116AbfFGHUM (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Fri, 7 Jun 2019 03:20:12 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id CBA3E811A9;
        Fri,  7 Jun 2019 07:20:11 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.205.47])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id B2C5F78425;
        Fri,  7 Jun 2019 07:20:06 +0000 (UTC)
Date:   Fri, 7 Jun 2019 09:20:03 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Theodore Ts'o <tytso@mit.edu>
Cc:     Harald Dunkel <harald.dunkel@aixigo.com>,
        util-linux@vger.kernel.org
Subject: Re: careful with that umount options, Eugene
Message-ID: <20190607072003.ykquv57n3bpf2yf2@ws.net.home>
References: <6c72d034-e172-9beb-e61b-bb74807ded0a@aixigo.com>
 <20190606125947.6rrdlkhioxx7adwl@ws.net.home>
 <20190606233147.GB23169@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190606233147.GB23169@mit.edu>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Fri, 07 Jun 2019 07:20:12 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jun 06, 2019 at 07:31:47PM -0400, Theodore Ts'o wrote:
> On Thu, Jun 06, 2019 at 02:59:47PM +0200, Karel Zak wrote:
> > On Tue, Jun 04, 2019 at 01:51:58PM +0200, Harald Dunkel wrote:
> > > Hi folks
> > > 
> > > by accident I pasted
> > > 
> > > 	umount ls -al /mnt/
> > > 
> > > into bash. My bad. AFAICT /proc was umounted immediately, the
> > > rest died slowly. Don't try this at home.
> > 
> > Fixed ... new version:
> > 
> >  # umount ls -al /mnt/
> >  umount: unexpected arguments
> >  Try 'umount --help' for more information.
> 
> Hmm...  Should we also prevent a lazy unmount of the root file system?

Not sure if we want to maintain extra rule/restriction in userspace.
Is there any reason why this feature is supported by kernel?

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
