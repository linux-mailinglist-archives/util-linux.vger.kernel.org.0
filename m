Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 52050381D4
	for <lists+util-linux@lfdr.de>; Fri,  7 Jun 2019 01:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726700AbfFFXcs (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 6 Jun 2019 19:32:48 -0400
Received: from outgoing-auth-1.mit.edu ([18.9.28.11]:44834 "EHLO
        outgoing.mit.edu" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726305AbfFFXcs (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 6 Jun 2019 19:32:48 -0400
Received: from callcc.thunk.org (61.0.32.70.hosted.by.gigenet.com [70.32.0.61] (may be forged))
        (authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
        by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x56NVmnn009042
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 6 Jun 2019 19:31:50 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
        id 9C3AB420481; Thu,  6 Jun 2019 19:31:47 -0400 (EDT)
Date:   Thu, 6 Jun 2019 19:31:47 -0400
From:   "Theodore Ts'o" <tytso@mit.edu>
To:     Karel Zak <kzak@redhat.com>
Cc:     Harald Dunkel <harald.dunkel@aixigo.com>,
        util-linux@vger.kernel.org
Subject: Re: careful with that umount options, Eugene
Message-ID: <20190606233147.GB23169@mit.edu>
References: <6c72d034-e172-9beb-e61b-bb74807ded0a@aixigo.com>
 <20190606125947.6rrdlkhioxx7adwl@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190606125947.6rrdlkhioxx7adwl@ws.net.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jun 06, 2019 at 02:59:47PM +0200, Karel Zak wrote:
> On Tue, Jun 04, 2019 at 01:51:58PM +0200, Harald Dunkel wrote:
> > Hi folks
> > 
> > by accident I pasted
> > 
> > 	umount ls -al /mnt/
> > 
> > into bash. My bad. AFAICT /proc was umounted immediately, the
> > rest died slowly. Don't try this at home.
> 
> Fixed ... new version:
> 
>  # umount ls -al /mnt/
>  umount: unexpected arguments
>  Try 'umount --help' for more information.

Hmm...  Should we also prevent a lazy unmount of the root file system?

	       	       	       	 - Ted
