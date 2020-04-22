Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AB141B3F89
	for <lists+util-linux@lfdr.de>; Wed, 22 Apr 2020 12:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729916AbgDVKil (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 22 Apr 2020 06:38:41 -0400
Received: from us-smtp-2.mimecast.com ([207.211.31.81]:34438 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729680AbgDVKiO (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Wed, 22 Apr 2020 06:38:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1587551891;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Gha4HwEWXpK7lYc6Rt9Xdi0RJ/kgGDDQEBk7RThwmvo=;
        b=J0qSTuxDmzwJKTA8XUyoHhLlWHEvduZwe9tgTfy4OY3FfHItPEhaJHWS7I0XD3isSDdUmJ
        vsM3BFwECqSDU5niWBaL+6nIgq/g0682gbwCdCWQz+M2pkDEf217js75m0qKBi1k0lPtr1
        vwYXpMPzYCduHknM4DzyF1WEDvTVkS4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-24HU-V90Nkaa9tfsML8AMg-1; Wed, 22 Apr 2020 06:38:07 -0400
X-MC-Unique: 24HU-V90Nkaa9tfsML8AMg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1DA068017F5;
        Wed, 22 Apr 2020 10:38:06 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.51])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D1155DA66;
        Wed, 22 Apr 2020 10:38:04 +0000 (UTC)
Date:   Wed, 22 Apr 2020 12:38:02 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Tycho Andersen <tycho@tycho.ws>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] libmount: do not unnecessarily chmod utab.lock
Message-ID: <20200422103802.edit3pqqh5wi52lk@ws.net.home>
References: <20200109235241.31865-1-tycho@tycho.ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200109235241.31865-1-tycho@tycho.ws>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jan 09, 2020 at 04:52:41PM -0700, Tycho Andersen wrote:
>  libmount/src/lock.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)

Applied, thanks. Sorry, for the delay.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

