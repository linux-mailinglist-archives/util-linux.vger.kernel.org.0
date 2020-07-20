Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1787225A2B
	for <lists+util-linux@lfdr.de>; Mon, 20 Jul 2020 10:36:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726254AbgGTIgb (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 20 Jul 2020 04:36:31 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:23772 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726015AbgGTIga (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 20 Jul 2020 04:36:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1595234190;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=sqM2WYwGUPMEZNaSBL2rr81eAh3ofhCYCQccpJQ+T94=;
        b=ciTNRGx7NlP2SpV2JMeG/KGPQDiyL35aRH1upRT+jUsMKWB9RcD5LY55R4k44AExKpqoKB
        FoOWMZIej7L8MWjoCC6OveBREYJc6j0Tm9y2pZCpiVhw9Ov4YAfdsjMtAaF7meTNPXi9i3
        rgsk/mykUo5aPQ+Zfzn8FNWaFwnPR2k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-428--XicwbIIOvKJgz6I6d0hnQ-1; Mon, 20 Jul 2020 04:36:26 -0400
X-MC-Unique: -XicwbIIOvKJgz6I6d0hnQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58EC110059B6;
        Mon, 20 Jul 2020 08:36:25 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.160])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 96EF110001B3;
        Mon, 20 Jul 2020 08:36:24 +0000 (UTC)
Date:   Mon, 20 Jul 2020 10:36:21 +0200
From:   Karel Zak <kzak@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 1/3] Manual pages: script.1: Miscellaneous wording,
 grammar, and formatting fixes
Message-ID: <20200720083621.cllrtds2c573ob5w@ws.net.home>
References: <20200715081546.112933-1-mtk.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200715081546.112933-1-mtk.manpages@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Wed, Jul 15, 2020 at 10:15:44AM +0200, Michael Kerrisk (man-pages) wrote:
>  term-utils/script.1 | 51 ++++++++++++++++++++++++++-------------------
>  1 file changed, 30 insertions(+), 21 deletions(-)

All three patches applied. Thanks!

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

