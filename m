Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 789DC82FAF
	for <lists+util-linux@lfdr.de>; Tue,  6 Aug 2019 12:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732586AbfHFK0D (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 6 Aug 2019 06:26:03 -0400
Received: from mx1.redhat.com ([209.132.183.28]:46536 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732418AbfHFK0D (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 6 Aug 2019 06:26:03 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id E2980C0092D1;
        Tue,  6 Aug 2019 10:26:02 +0000 (UTC)
Received: from ws.net.home (ovpn-204-180.brq.redhat.com [10.40.204.180])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id ABB3E5C1B5;
        Tue,  6 Aug 2019 10:26:01 +0000 (UTC)
Date:   Tue, 6 Aug 2019 12:25:58 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Petr Pisar <petr.pisar@atlas.cz>
Cc:     util-linux@vger.kernel.org, Pavel Polacek <pavel.polacek@ujep.cz>
Subject: Re: libfdisk refers to kpartx(8) intead of partx(8)
Message-ID: <20190806102558.w4wwk5wxjutxhtqn@ws.net.home>
References: <20190730180006.GA10461@album.bayer.uni.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190730180006.GA10461@album.bayer.uni.cx>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 06 Aug 2019 10:26:03 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jul 30, 2019 at 08:00:06PM +0200, Petr Pisar wrote:
> Hello,
> 
> a Czech tranlatation user noticed that util-linux contains this message:
> 
> #: libfdisk/src/context.c:775
> msgid ""
> "The kernel still uses the old table. The new table will be used at the next "
> "reboot or after you run partprobe(8) or kpartx(8)."
> 
> that would rather refer to partx(8) instead of kapartx(8).

Fixed. Thanks for your report.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
