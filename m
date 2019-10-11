Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2B1A5D3A92
	for <lists+util-linux@lfdr.de>; Fri, 11 Oct 2019 10:11:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727125AbfJKILE (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 11 Oct 2019 04:11:04 -0400
Received: from mx1.redhat.com ([209.132.183.28]:43472 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726461AbfJKILE (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Fri, 11 Oct 2019 04:11:04 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id DA5233084032;
        Fri, 11 Oct 2019 08:11:03 +0000 (UTC)
Received: from 10.255.255.10 (unknown [10.40.205.32])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DCBE1001B2B;
        Fri, 11 Oct 2019 08:11:02 +0000 (UTC)
Date:   Fri, 11 Oct 2019 10:11:00 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Stanislav Brabec <sbrabec@suse.cz>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] nologin: Prevent error from su -c
Message-ID: <20191011081100.m2nae256nvxoo3sw@10.255.255.10>
References: <f3a10c86-77a3-06ff-bde0-7822c37292e4@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f3a10c86-77a3-06ff-bde0-7822c37292e4@suse.cz>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Fri, 11 Oct 2019 08:11:03 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Oct 10, 2019 at 01:08:25AM +0200, Stanislav Brabec wrote:
>  login-utils/nologin.8 | 11 +++++++++--
>  login-utils/nologin.c |  9 +++++++--
>  2 files changed, 16 insertions(+), 4 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
