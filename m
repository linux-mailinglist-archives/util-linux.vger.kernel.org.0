Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A2A321F181
	for <lists+util-linux@lfdr.de>; Tue, 14 Jul 2020 14:39:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727772AbgGNMjB (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Jul 2020 08:39:01 -0400
Received: from us-smtp-2.mimecast.com ([207.211.31.81]:25313 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726041AbgGNMjA (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 14 Jul 2020 08:39:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1594730340;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=TYQ2emSW/QokOTpxag8sE+MvKEiNFNBkE1EQxtdQOLA=;
        b=UKUdCDxJA1SKuUWUFlx9z/VV4WnBBQCyvPzbYDmpUoE7zNuXEcV+iWdFZlPhg7sAVVPP7Z
        1xkmU1zXK6RdVJVT26tQR0toEz3ng8fBTrHo6ft0fU1Sl8Jr7JL3jdcLYmeXeLPPigs2aE
        7NSI7rQu//bpEM0aZxhZAtLMV4OzA2k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-GhKrJHNTMWWDdydryanIqQ-1; Tue, 14 Jul 2020 08:38:58 -0400
X-MC-Unique: GhKrJHNTMWWDdydryanIqQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EC01106B251;
        Tue, 14 Jul 2020 12:38:57 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.98])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BFE110013C1;
        Tue, 14 Jul 2020 12:38:56 +0000 (UTC)
Date:   Tue, 14 Jul 2020 14:38:53 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] Manual pages: runuser.1, su.1: miscellaneous wording and
 formatting fixes
Message-ID: <20200714123853.7q5rlyak2e6qhj43@ws.net.home>
References: <20200714122000.51849-1-mtk.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200714122000.51849-1-mtk.manpages@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jul 14, 2020 at 02:20:00PM +0200, Michael Kerrisk (man-pages) wrote:
>  login-utils/runuser.1 | 56 +++++++++++++++++---------
>  login-utils/su.1      | 93 ++++++++++++++++++++++++++++---------------
>  2 files changed, 99 insertions(+), 50 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

