Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8009D3C72E
	for <lists+util-linux@lfdr.de>; Tue, 11 Jun 2019 11:24:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727727AbfFKJYN (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 11 Jun 2019 05:24:13 -0400
Received: from mx1.redhat.com ([209.132.183.28]:41760 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727642AbfFKJYN (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 11 Jun 2019 05:24:13 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 82D92307D84D;
        Tue, 11 Jun 2019 09:24:13 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.205.47])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C13005D704;
        Tue, 11 Jun 2019 09:24:12 +0000 (UTC)
Date:   Tue, 11 Jun 2019 11:24:10 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Stanislav Brabec <sbrabec@suse.cz>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 1/3] fstrim: Fix fstrim_all() comment
Message-ID: <20190611092410.vl5ekwjwcvcpnlra@ws.net.home>
References: <787f49bd-0f57-5616-ca10-2173c3801809@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <787f49bd-0f57-5616-ca10-2173c3801809@suse.cz>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Tue, 11 Jun 2019 09:24:13 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Mon, Jun 10, 2019 at 09:59:21PM +0200, Stanislav Brabec wrote:
>  sys-utils/fstrim.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

All three patches applied. I did some small additional change to the
code and to the man page.

Thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
