Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26E84292595
	for <lists+util-linux@lfdr.de>; Mon, 19 Oct 2020 12:20:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726258AbgJSKUB (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 19 Oct 2020 06:20:01 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:58102 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726214AbgJSKUB (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 19 Oct 2020 06:20:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1603102800;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=zjjCbDj6FRc+s8bim76RHra7rfLsoOWJZHaCqMs2sao=;
        b=bitslr0bMXUz2B8zydHZWT2awUzhSbDrq/6ngx3HTQ9ILlTCBSaZDOVUB6ny8xBbLFJIjT
        qNKXKmvQ/txU57qsygUtTRoViGjNy5/Px5aXMOBasaqhC7JwGtZhoOQymR6zhbAt3MseEi
        D+lS4V5TBxGuPVWSI8awbBLB0I7vc0A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-67-1SPaXWPwOPC7-x6jw-_wzg-1; Mon, 19 Oct 2020 06:19:55 -0400
X-MC-Unique: 1SPaXWPwOPC7-x6jw-_wzg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 335F8879511;
        Mon, 19 Oct 2020 10:19:54 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.172])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 4297C5B4B1;
        Mon, 19 Oct 2020 10:19:52 +0000 (UTC)
Date:   Mon, 19 Oct 2020 12:19:50 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Dr. David Alan Gilbert" <dave@treblig.org>
Cc:     util-linux@vger.kernel.org,
        Takeshi Hamasaki <hmatrjp@users.sourceforge.jp>
Subject: Re: [PATCH] Fix 0x%u usage
Message-ID: <20201019101950.rhugjdknq4ptgefa@ws.net.home>
References: <20201017120534.90573-1-dave@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201017120534.90573-1-dave@treblig.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Sat, Oct 17, 2020 at 01:05:34PM +0100, Dr. David Alan Gilbert wrote:
>  libmount/src/optstr.c | 2 +-
>  po/ja.po              | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks.

Note that the ja.po change may be ineffective as we use PO files
from http://translationproject.org/domain/util-linux.html

(CC to Takeshi who is the last translator).

  Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

