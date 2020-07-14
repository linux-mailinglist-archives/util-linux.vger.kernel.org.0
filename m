Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 705B321EBBC
	for <lists+util-linux@lfdr.de>; Tue, 14 Jul 2020 10:48:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725905AbgGNIsv (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 14 Jul 2020 04:48:51 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:20332 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725816AbgGNIsv (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 14 Jul 2020 04:48:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1594716530;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=sd0mL6MeP1Tba3oNd/VVGbLESMXsWlBVBHgXPmo6jY8=;
        b=Cl26ytneytwdkk7ito0/ueOcDdYehnOFymKeyYH8vjjWtU8Ss0CCh/kZgURkRVMs572+St
        n0Nq420AzVpiOpKgszsEKEfFJSXDDKixjtFOT94VJ1AR+vZcrUO81CSPx7Ek4clYteLziK
        uzG4LTvjF1q/zY51syH8MNcBT7TiiDA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-378-sB3mS-Y5N-qG-Zccg7Vfmw-1; Tue, 14 Jul 2020 04:48:48 -0400
X-MC-Unique: sB3mS-Y5N-qG-Zccg7Vfmw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D43628027EE;
        Tue, 14 Jul 2020 08:48:47 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.98])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C8A970115;
        Tue, 14 Jul 2020 08:48:46 +0000 (UTC)
Date:   Tue, 14 Jul 2020 10:48:44 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] docs: remove trailing space in strings
Message-ID: <20200714084844.7mf54gtr42qzowhf@ws.net.home>
References: <20200709232427.GA28505@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200709232427.GA28505@rhi.hi.is>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jul 09, 2020 at 11:24:27PM +0000, Bjarni Ingi Gislason wrote:
>  misc-utils/uuidd.8.in | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

