Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6EA711F145
	for <lists+util-linux@lfdr.de>; Wed, 15 May 2019 13:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730379AbfEOLuK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 15 May 2019 07:50:10 -0400
Received: from mx1.redhat.com ([209.132.183.28]:59470 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726260AbfEOLuJ (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Wed, 15 May 2019 07:50:09 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 78C6A85365;
        Wed, 15 May 2019 11:50:09 +0000 (UTC)
Received: from ws.net.home (ovpn-204-64.brq.redhat.com [10.40.204.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id AACAB60BCF;
        Wed, 15 May 2019 11:50:08 +0000 (UTC)
Date:   Wed, 15 May 2019 13:50:06 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Austin English <austinenglish@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 1/6] lib/colors.c: fix "maybe be" duplication
Message-ID: <20190515115006.iwqdpo5672i7y2qm@ws.net.home>
References: <20190513185319.28853-1-austinenglish@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190513185319.28853-1-austinenglish@gmail.com>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Wed, 15 May 2019 11:50:09 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Mon, May 13, 2019 at 01:53:14PM -0500, Austin English wrote:
>  lib/colors.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

All 6 patches merged. Thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
