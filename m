Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F6E5374B2
	for <lists+util-linux@lfdr.de>; Thu,  6 Jun 2019 14:59:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726693AbfFFM7v (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 6 Jun 2019 08:59:51 -0400
Received: from mx1.redhat.com ([209.132.183.28]:45050 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726092AbfFFM7v (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Thu, 6 Jun 2019 08:59:51 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 52A94308620A;
        Thu,  6 Jun 2019 12:59:51 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.205.108])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 912FC17119;
        Thu,  6 Jun 2019 12:59:50 +0000 (UTC)
Date:   Thu, 6 Jun 2019 14:59:47 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Harald Dunkel <harald.dunkel@aixigo.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: careful with that umount options, Eugene
Message-ID: <20190606125947.6rrdlkhioxx7adwl@ws.net.home>
References: <6c72d034-e172-9beb-e61b-bb74807ded0a@aixigo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6c72d034-e172-9beb-e61b-bb74807ded0a@aixigo.com>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Thu, 06 Jun 2019 12:59:51 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jun 04, 2019 at 01:51:58PM +0200, Harald Dunkel wrote:
> Hi folks
> 
> by accident I pasted
> 
> 	umount ls -al /mnt/
> 
> into bash. My bad. AFAICT /proc was umounted immediately, the
> rest died slowly. Don't try this at home.

Fixed ... new version:

 # umount ls -al /mnt/
 umount: unexpected arguments
 Try 'umount --help' for more information.

Thanks for your report.

   Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
