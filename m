Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76AD91D777A
	for <lists+util-linux@lfdr.de>; Mon, 18 May 2020 13:41:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726758AbgERLlS (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 18 May 2020 07:41:18 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:43695 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727832AbgERLlS (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 18 May 2020 07:41:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1589802077;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=xYSGDhHHywu9As3qB0gODfCYl0xbOkAjsv/E3fTzkhk=;
        b=Wd5mNZ1BpJIS2cCoYDNT9tOPL0hDcq74GiQnrb+h05w8lZO/DBJsdx5R3uX6QrEx+ZDl1a
        76rrn54ln1YmUkUrCMJj1/lcrh8BuQtetwl6HI7q/pthvB5sjMGjUUnFlW45YtE+wX7B5W
        KpWx0wo7hNlgdHoyR09mWs8CGnhPse0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-97q1WWKhNsqBbVjLGEqWSg-1; Mon, 18 May 2020 07:41:15 -0400
X-MC-Unique: 97q1WWKhNsqBbVjLGEqWSg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1F08460;
        Mon, 18 May 2020 11:41:14 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.193.102])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D674A5C1B5;
        Mon, 18 May 2020 11:41:13 +0000 (UTC)
Date:   Mon, 18 May 2020 13:41:11 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     util-linux@vger.kernel.org, Sami Kerola <kerolasa@iki.fi>
Subject: Re: [PATCH] ipcs.1: ipcs no longer needs read permission on IPC
 resources
Message-ID: <20200518114111.kv2gibesmi55babf@ws.net.home>
References: <5700d4b6-c499-0881-263c-7df96df511ff@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5700d4b6-c499-0881-263c-7df96df511ff@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Sat, May 16, 2020 at 10:10:27AM +0200, Michael Kerrisk (man-pages) wrote:
>  sys-utils/ipcs.1 | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

