Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6841BD9A7
	for <lists+util-linux@lfdr.de>; Wed, 29 Apr 2020 12:33:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726355AbgD2Kdt (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 29 Apr 2020 06:33:49 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:59513 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726345AbgD2Kdt (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 29 Apr 2020 06:33:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1588156428;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=lij7wREsAWKTSRlVvAm3PgWCOrzpzB2Ze/Kszd4rCmU=;
        b=XeFHXH2ESmYMo+j6n8htBe3zMwHvmseJqSpl6q76GG7xLc/GrcgJoX89Y01KVwYBwR3K6q
        dQx+RPmmFDlGhI/poK+4lZlc6Ogrmqsui8kn+zrNVNYkjF0yjHK+ZPUpxsSZLUYokPD6O0
        FWICg8gMilDJLDCid7wtflO0EVmphy4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-55-MTcWLpCqNOq9BaKQHCf41g-1; Wed, 29 Apr 2020 06:33:45 -0400
X-MC-Unique: MTcWLpCqNOq9BaKQHCf41g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E0B8C100CCC3;
        Wed, 29 Apr 2020 10:33:43 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.51])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 222C1579A6;
        Wed, 29 Apr 2020 10:33:42 +0000 (UTC)
Date:   Wed, 29 Apr 2020 12:33:40 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Wolfram Sang <wsa@the-dreams.de>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] bash-completion: umount explicitly needs gawk
Message-ID: <20200429103340.tmyeffpzbieno7qo@ws.net.home>
References: <20200428071315.2945-1-wsa@the-dreams.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200428071315.2945-1-wsa@the-dreams.de>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Apr 28, 2020 at 09:13:15AM +0200, Wolfram Sang wrote:
> gensub() is a gawk extension, so use it explicitly. Otherwise users will
> get an error if their 'awk' defaults to something else.

Applied, thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

