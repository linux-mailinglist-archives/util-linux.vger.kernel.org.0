Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D6141F93A4
	for <lists+util-linux@lfdr.de>; Mon, 15 Jun 2020 11:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728815AbgFOJh7 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 15 Jun 2020 05:37:59 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:59977 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1728773AbgFOJh6 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 15 Jun 2020 05:37:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1592213878;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=u+Tqt1kJYO2LJKsNDYYMWKd8OjMYHYZzH+oL4hSJkR8=;
        b=cNi89ThTfUi9ImpKcLS0T57jOd1HL5yNQ8CDajruKps/PuuQSLFbqQs+IgXrDyhJxBW+3Q
        /Rf5qRU0iUm9HDD9OMHP5HRkiwPjancKzshi+6URtsm8cp/OzZ9HqpyY2ZApiVbOFi0Ji4
        c+lZ8i8VLPhQYeOV2zp/L4n3TUXMKiU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-zVeFJZJGN42OMG4NVsLehA-1; Mon, 15 Jun 2020 05:37:41 -0400
X-MC-Unique: zVeFJZJGN42OMG4NVsLehA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E354B80B71F;
        Mon, 15 Jun 2020 09:37:36 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.133])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 31CFD2C2BB;
        Mon, 15 Jun 2020 09:37:36 +0000 (UTC)
Date:   Mon, 15 Jun 2020 11:37:33 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 1/3] Manual pages: runuser.1: Various wording and
 formatting fixes
Message-ID: <20200615093733.5hvpjpkrh7paoxd3@ws.net.home>
References: <20200612111933.3043314-1-mtk.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200612111933.3043314-1-mtk.manpages@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Jun 12, 2020 at 01:19:31PM +0200, Michael Kerrisk (man-pages) wrote:
>  login-utils/runuser.1 | 70 +++++++++++++++++++++----------------------
>  1 file changed, 35 insertions(+), 35 deletions(-)

All 3 patches applied. Thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

