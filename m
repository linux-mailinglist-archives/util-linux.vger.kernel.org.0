Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC8613B4041
	for <lists+util-linux@lfdr.de>; Fri, 25 Jun 2021 11:23:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230379AbhFYJZa (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 25 Jun 2021 05:25:30 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:30174 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230217AbhFYJZa (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Fri, 25 Jun 2021 05:25:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1624612989;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=JHJqQ3wkcOEKqD38EvcxZUecnS16Gd+M5jwluNJK2Fo=;
        b=bB02ejdYVEV1VbPlEsIxE044x1F2KfY+CvWH5+FbEeAGQiRVYcQupHJMSC14W2D2eNffuz
        ysaBtR1FBBJze1rekWaywo3fIpuf5pu9Y7I0sncRB4/rDAoslTamBMG90rTl+5W7Isbok4
        Id/MP0ueGOrvFnlm5PNPew3QoOuFRTE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-525-_PxHAcxtOxirgvo2AwJDNg-1; Fri, 25 Jun 2021 05:23:08 -0400
X-MC-Unique: _PxHAcxtOxirgvo2AwJDNg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B00818D6A2C;
        Fri, 25 Jun 2021 09:23:06 +0000 (UTC)
Received: from ws.net.home (ovpn-112-214.ams2.redhat.com [10.36.112.214])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 44A3818A77;
        Fri, 25 Jun 2021 09:23:04 +0000 (UTC)
Date:   Fri, 25 Jun 2021 11:23:01 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Huang Shijie <shijie@os.amperecomputing.com>
Cc:     util-linux@vger.kernel.org, patches@amperecomputing.com,
        zwang@amperecomputing.com, mas@amperecomputing.com,
        ilkka@os.amperecomputing.com, jeremy.linton@arm.com,
        jbastian@redhat.com, m.mizuma@jp.fujitsu.com,
        patrick.zhang@amperecomputing.com
Subject: Re: [RFC PATCH] lscpu: get more infomation when using
 "/sys/firmware/dmi/entries/4-0/raw"
Message-ID: <20210625092301.6zlyufiwjkta7rf7@ws.net.home>
References: <20210621110900.41043-1-shijie@os.amperecomputing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210621110900.41043-1-shijie@os.amperecomputing.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Mon, Jun 21, 2021 at 11:09:00AM +0000, Huang Shijie wrote:
> This patch gets more infomation for "BIOS Model name"
> from the file "/sys/firmware/dmi/entries/4-0/raw"
> 
> Before this patch, we can get the output from Centos 7.9:
>   ----------------------------------------------------
>   BIOS Vendor ID:                  Ampere(TM)
>   Model name：                     Neoverse-N1
>     BIOS Model name:               Ampere(TM) Altra(TM) Processor
>   ----------------------------------------------------
> 
>  After this patch, in Centos 7.9, we get:
>   ----------------------------------------------------
>   BIOS Vendor ID:                  Ampere(TM)
>   Model name：                     Neoverse-N1
>     BIOS Model name:               Ampere(TM) Altra(TM) Processor Q00-00 CPU @ 2.8GHz
>   ----------------------------------------------------
> 
> Signed-off-by: Huang Shijie <shijie@os.amperecomputing.com>
> ---
>  sys-utils/lscpu-arm.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/sys-utils/lscpu-arm.c b/sys-utils/lscpu-arm.c

> index 885aadc36..1af689649 100644
> --- a/sys-utils/lscpu-arm.c
> +++ b/sys-utils/lscpu-arm.c
> @@ -317,6 +317,8 @@ static int arm_rXpY_decode(struct lscpu_cputype *ct)
>  
>  #define PROC_MFR_OFFSET		0x07
>  #define PROC_VERSION_OFFSET	0x10
> +#define PROC_CURRENT_SPEED	0x16
> +#define PROC_PART_NUM		0x22
>  
>  /*
>   * Use firmware to get human readable names
> @@ -324,7 +326,8 @@ static int arm_rXpY_decode(struct lscpu_cputype *ct)
>  static int arm_smbios_decode(struct lscpu_cputype *ct)

I've lost in your patches :-) 

Your previous patch "[PATCH] lscpu: remove the old code" removes all
arm_smbios_decode() as it's unnecessary. This next patch tries to
extend arm_smbios_decode().

Anyway, I think it's good idea to "normalize" the model name to "%s %s CPU @ %d.%dGHz"
for all ARMs. It seems the same is suggesting:
https://github.com/karelzak/util-linux/pull/1364

 Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

