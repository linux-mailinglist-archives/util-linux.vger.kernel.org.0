Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1AF019F323
	for <lists+util-linux@lfdr.de>; Mon,  6 Apr 2020 12:00:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726885AbgDFKAY (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 6 Apr 2020 06:00:24 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:23729 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726883AbgDFKAY (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 6 Apr 2020 06:00:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1586167223;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=9q1cA/lEV8ondfww669ITocmYidX6Xvk7ghfm0MrPXg=;
        b=M6DL4GFqdmhJV+wljCDAEb+S+kTLyGU3Gi+9gxChQ89PS+2QpKKhQ/aAyRwK4fjmyWNYa/
        g1FMhsTVub5DYl6kkhiuCKIPkjwBCs0/OhEcIbV6rjDtKbUKDJZGrxElwCrFTTFGg0PySC
        N73+UU4d2p4dRcqtHlMg2E4mvjJ56sU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-UZjywgWpM1WuJDCJT8NGpA-1; Mon, 06 Apr 2020 06:00:19 -0400
X-MC-Unique: UZjywgWpM1WuJDCJT8NGpA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04C611005509;
        Mon,  6 Apr 2020 10:00:18 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.51])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 349C59D36E;
        Mon,  6 Apr 2020 10:00:16 +0000 (UTC)
Date:   Mon, 6 Apr 2020 12:00:14 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Jann Horn <jannh@google.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] docs: renice(1): Add chrt(1) to SEE ALSO
Message-ID: <20200406100014.mlcmv3xkuscc2tgj@ws.net.home>
References: <20200405055514.227225-1-jannh@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200405055514.227225-1-jannh@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Sun, Apr 05, 2020 at 07:55:14AM +0200, Jann Horn wrote:
>  sys-utils/renice.1 | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

