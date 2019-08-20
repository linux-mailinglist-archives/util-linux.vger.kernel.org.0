Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 15A3195F35
	for <lists+util-linux@lfdr.de>; Tue, 20 Aug 2019 14:52:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729203AbfHTMwi (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 20 Aug 2019 08:52:38 -0400
Received: from mx1.redhat.com ([209.132.183.28]:48284 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729137AbfHTMwi (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 20 Aug 2019 08:52:38 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id F30676CFCD;
        Tue, 20 Aug 2019 12:52:37 +0000 (UTC)
Received: from 10.255.255.10 (ovpn-204-40.brq.redhat.com [10.40.204.40])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E8461B5C2;
        Tue, 20 Aug 2019 12:52:37 +0000 (UTC)
Date:   Tue, 20 Aug 2019 14:52:34 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Patrick Steinhardt <ps@pks.im>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] libmount: fix comment referring to passno field
Message-ID: <20190820125234.bl5wllu54hnlgprt@10.255.255.10>
References: <4e258644af41a4170100c49895d1d6efd4374d7a.1565866178.git.ps@pks.im>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4e258644af41a4170100c49895d1d6efd4374d7a.1565866178.git.ps@pks.im>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 20 Aug 2019 12:52:38 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Aug 15, 2019 at 12:50:05PM +0200, Patrick Steinhardt wrote:
>  libmount/src/tab_parse.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
