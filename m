Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6418B27CA88
	for <lists+util-linux@lfdr.de>; Tue, 29 Sep 2020 14:22:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732270AbgI2MTq (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 29 Sep 2020 08:19:46 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:31059 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728914AbgI2Lfj (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 29 Sep 2020 07:35:39 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601379338;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=PKxlvZEOVA/cVucthIObuLi5pzP7b1EPF0dBWmu4esg=;
        b=Begffq6TUZaBg2O2JIC9pFTS9QYRGd4ktw4rxP91SUC8+KpHQT3PiIPuEnH7rz/iYbAPMs
        KaQ12PKSVTIGY2KdZewOu9ITYURSNhWLFsZgyU3/CDY5GL4I1qFwXUvJQmNwt2j4CV+xcv
        IMcDPXBdhqyq0RN/jlO55s7WpMnNsdM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-DujfCc5lN0GFllEs0-t0QQ-1; Tue, 29 Sep 2020 07:35:32 -0400
X-MC-Unique: DujfCc5lN0GFllEs0-t0QQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8120D1019624
        for <util-linux@vger.kernel.org>; Tue, 29 Sep 2020 11:35:31 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.172])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id B5126100238C;
        Tue, 29 Sep 2020 11:35:30 +0000 (UTC)
Date:   Tue, 29 Sep 2020 13:35:28 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Jeffrey Bastian <jbastian@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH] use SMBIOS tables on ARM for lscpu
Message-ID: <20200929113528.d46vxylxormyxel4@ws.net.home>
References: <20200924215617.c3oqc5tkuhjs5fyp@tarantula.users.ipa.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200924215617.c3oqc5tkuhjs5fyp@tarantula.users.ipa.redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Sep 24, 2020 at 04:56:17PM -0500, Jeffrey Bastian wrote:
>  sys-utils/lscpu-arm.c | 88 ++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 87 insertions(+), 1 deletion(-)

Applied, but I did some changes to the code to be more robust and to
avoid dmi_header duplication in lscpu-arm.c and lscpu-dmi.c.

https://github.com/karelzak/util-linux/commit/367c85c472869b75eaf770d4be0b360e30710b95

Please, test it with your environment. I have no any ARM right now.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

