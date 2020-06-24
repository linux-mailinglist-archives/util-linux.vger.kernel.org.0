Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7ECB2074D4
	for <lists+util-linux@lfdr.de>; Wed, 24 Jun 2020 15:46:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390774AbgFXNps (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 24 Jun 2020 09:45:48 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:33862 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2391076AbgFXNps (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 24 Jun 2020 09:45:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1593006347;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=BbhTcN/fwbkJFEYN3OLXiI3yFz2suQiy0gvhw5bWPGg=;
        b=OKC4Q/CNvbQptQTN+JWuFMlxtWPoeyME+YHouKWeT+ObdYNH+3GkHAgW5h3tNKNjg6m1Gw
        QTxEwYqkjwCA6yTYSU/N2Kj4uuWli8AIadb3gTMFRmwfj6NSq90bRKAURCTESxjCf2Gk9F
        q5/fn7xr2Lsc4dJf7AKVG/YzlxySHSk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-4J3qkT_NNPOxFmN5piLY9g-1; Wed, 24 Jun 2020 09:45:42 -0400
X-MC-Unique: 4J3qkT_NNPOxFmN5piLY9g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 24D6E800FEC;
        Wed, 24 Jun 2020 13:45:41 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.133])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FD801008034;
        Wed, 24 Jun 2020 13:45:40 +0000 (UTC)
Date:   Wed, 24 Jun 2020 15:45:37 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] sys-utils: mount.8: split a long line into two
Message-ID: <20200624134537.7ccfae2s5uhdrtgi@ws.net.home>
References: <20200621225827.GA3587@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200621225827.GA3587@rhi.hi.is>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Sun, Jun 21, 2020 at 10:58:27PM +0000, Bjarni Ingi Gislason wrote:
>  sys-utils/mount.8 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks.

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

