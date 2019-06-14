Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 83BA9459E5
	for <lists+util-linux@lfdr.de>; Fri, 14 Jun 2019 12:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727272AbfFNKEu (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 14 Jun 2019 06:04:50 -0400
Received: from mx1.redhat.com ([209.132.183.28]:36306 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726370AbfFNKEu (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Fri, 14 Jun 2019 06:04:50 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 7C77881F19;
        Fri, 14 Jun 2019 10:04:50 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.205.47])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C02E75B68A;
        Fri, 14 Jun 2019 10:04:49 +0000 (UTC)
Date:   Fri, 14 Jun 2019 12:04:46 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Andrzej Jakowski <andrzej.jakowski@intel.com>
Cc:     "util-linux@vger.kernel.org" <util-linux@vger.kernel.org>
Subject: Re: [RFC] utility for SED management
Message-ID: <20190614100446.2fw2b6ve7ixbsodu@ws.net.home>
References: <548EA37F71F6AC4BB746F459732504FF7F1810E3@FMSMSX119.amr.corp.intel.com>
 <20190612134005.cb7m2qhgf2aolrf6@ws.net.home>
 <548EA37F71F6AC4BB746F459732504FF7F184907@FMSMSX119.amr.corp.intel.com>
 <20190614074828.iqgomebc6gilprkn@ws.net.home>
 <608c1dad-09a0-8bb9-bc55-d01e136bc0b5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <608c1dad-09a0-8bb9-bc55-d01e136bc0b5@intel.com>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Fri, 14 Jun 2019 10:04:50 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Jun 14, 2019 at 11:01:15AM +0200, Andrzej Jakowski wrote:
> On 6/14/19 9:48 AM, Karel Zak wrote:
> > Do you have the current code/repo with sedcli accessible anywhere? It
> > would be nice to see it.
> > 
> >      Karel
> 
> Code is still work-in-progress on non-public repo. I will let you know once
> available.

BTW, I found https://github.com/Drive-Trust-Alliance/sedutil, this is
probably obsolete, right? (Oh, ... C++ ;-).

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
