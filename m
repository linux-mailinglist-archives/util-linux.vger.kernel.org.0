Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90E0627C298
	for <lists+util-linux@lfdr.de>; Tue, 29 Sep 2020 12:45:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725306AbgI2Kp6 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 29 Sep 2020 06:45:58 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:52455 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725283AbgI2Kp6 (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 29 Sep 2020 06:45:58 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601376357;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=8r2PTuSXsI7JhqX7tupWe7xhiynbc22JeQAuBhTydzo=;
        b=RIoWkezRfIZylZhThvZ0FSYb/dTYo8kSE1kUWw6x4cVouCmGGoU2n3Chkm2fuMMNuVGTVQ
        K2pm+9MtOAlGmBzTnSlKqFy9UA5MkdlpybYQ3ZxKnmXPWmLWyu77RtZXT4I4AjkuJi+uLC
        4nyaHWWy2Xxyq2TWW+KJlKebEbuu28A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-qQy8IIAjO4qKqO9Kr5RISg-1; Tue, 29 Sep 2020 06:45:54 -0400
X-MC-Unique: qQy8IIAjO4qKqO9Kr5RISg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55557801AB8;
        Tue, 29 Sep 2020 10:45:53 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.172])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 971AE10013D7;
        Tue, 29 Sep 2020 10:45:52 +0000 (UTC)
Date:   Tue, 29 Sep 2020 12:45:50 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Lennard Hofmann <lennard.hofmann@web.de>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH v2 1/2] column: Optionally keep empty lines in cols/rows
 mode
Message-ID: <20200929104550.t62edvfzu4e4sr4a@ws.net.home>
References: <20200921161621.19562-1-lennard.hofmann@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200921161621.19562-1-lennard.hofmann@web.de>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Mon, Sep 21, 2020 at 06:16:20PM +0200, Lennard Hofmann wrote:
>  text-utils/column.c | 32 ++++++++++++++++++++++----------
>  1 file changed, 22 insertions(+), 10 deletions(-)

 Applied (both patches), thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

