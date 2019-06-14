Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4A74456B6
	for <lists+util-linux@lfdr.de>; Fri, 14 Jun 2019 09:48:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725825AbfFNHsd (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 14 Jun 2019 03:48:33 -0400
Received: from mx1.redhat.com ([209.132.183.28]:34460 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725812AbfFNHsc (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Fri, 14 Jun 2019 03:48:32 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id D0D1F308624B;
        Fri, 14 Jun 2019 07:48:32 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.205.47])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C5761001E60;
        Fri, 14 Jun 2019 07:48:31 +0000 (UTC)
Date:   Fri, 14 Jun 2019 09:48:28 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Jakowski, Andrzej" <andrzej.jakowski@intel.com>
Cc:     "util-linux@vger.kernel.org" <util-linux@vger.kernel.org>
Subject: Re: [RFC] utility for SED management
Message-ID: <20190614074828.iqgomebc6gilprkn@ws.net.home>
References: <548EA37F71F6AC4BB746F459732504FF7F1810E3@FMSMSX119.amr.corp.intel.com>
 <20190612134005.cb7m2qhgf2aolrf6@ws.net.home>
 <548EA37F71F6AC4BB746F459732504FF7F184907@FMSMSX119.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <548EA37F71F6AC4BB746F459732504FF7F184907@FMSMSX119.amr.corp.intel.com>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Fri, 14 Jun 2019 07:48:32 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jun 13, 2019 at 01:51:12PM +0000, Jakowski, Andrzej wrote:
> On Wed, Jun 12, 2019 at 01:40:08PM +0000, Karel Zak wrote:
> > From my point of view (and maybe I'm wrong ;-)) it seems complex enough to keep it as an independent stand-alone project ("sed-utils").
> > Not sure if it makes sense to push it to generic util-linux package.
> 
> It sounds to me that your major concern for inclusion sedcli into util-linux is
> its complexity. What would be the best method to understand if sedcli fits into
> util-linux?

Do you have the current code/repo with sedcli accessible anywhere? It
would be nice to see it.

    Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
