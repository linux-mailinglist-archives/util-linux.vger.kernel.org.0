Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26A9525A91B
	for <lists+util-linux@lfdr.de>; Wed,  2 Sep 2020 12:08:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbgIBKIS (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 2 Sep 2020 06:08:18 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:56559 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726140AbgIBKIS (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 2 Sep 2020 06:08:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1599041297;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=PmDyVFeJYekA2wFQ/02EzviT1reVhO01vAYcMBXOLcE=;
        b=J/u6gpE7PLGc4SfdVLeqAKvKEZG+EZI5J87O2IhD0rwbFm9LsMWfdx28daLYwydBdBhEuE
        xOD+c8bymViQ0fLyMBoCYzKnaUmEpL+gwl7fKct2HYCKVEnQt8fMo6cdl8vIH9opXIe062
        K6jdYmNwv2R6EpPcqrwaf65wgb706VI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-336-kpKfKxW7N_6_4GjNnJtYuA-1; Wed, 02 Sep 2020 06:08:13 -0400
X-MC-Unique: kpKfKxW7N_6_4GjNnJtYuA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C485D1019626;
        Wed,  2 Sep 2020 10:08:11 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.193.69])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 113805D9CC;
        Wed,  2 Sep 2020 10:08:10 +0000 (UTC)
Date:   Wed, 2 Sep 2020 12:08:08 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Sami Kerola <kerolasa@iki.fi>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] libmount: do not use pointer as an integer value
Message-ID: <20200902100808.qmz3fs5pjbuynmou@ws.net.home>
References: <20200828195957.24195-1-kerolasa@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200828195957.24195-1-kerolasa@iki.fi>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri, Aug 28, 2020 at 08:59:57PM +0100, Sami Kerola wrote:
>  libmount/python/fs.c  | 2 +-
>  libmount/python/tab.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks.   

... the python binding needs a lot of our love,
unfortunately, I have no time for this stuff.

  Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

