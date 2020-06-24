Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E7EA2073FF
	for <lists+util-linux@lfdr.de>; Wed, 24 Jun 2020 15:09:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390923AbgFXNJ5 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 24 Jun 2020 09:09:57 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:47437 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1728843AbgFXNJ5 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 24 Jun 2020 09:09:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1593004196;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=FXDPUf1TVZAEjUGtDgufOj4V4LMgvAjTpc1+JzGKTSA=;
        b=UYowdQZFDfbnA8/YAUq6T6l11ZDME8TQZsoR3Uwr7nsccI0qGYSMUm4G306VQic+jPiz5e
        5sP1vo3HOZltVKapJaaOrsbHmptFLzYquYRFsPP9pz0L6cbLzMoiDm5WG1AMMecl8VpNfg
        sSbD5/SWZP0dRuqbhNCOLGI5fJ55nr8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-419-pSnzxlEtOsOeAc-A6pF3gg-1; Wed, 24 Jun 2020 09:09:52 -0400
X-MC-Unique: pSnzxlEtOsOeAc-A6pF3gg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53F9ABFC1;
        Wed, 24 Jun 2020 13:09:51 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.194.133])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 38EE260C80;
        Wed, 24 Jun 2020 13:09:50 +0000 (UTC)
Date:   Wed, 24 Jun 2020 15:09:47 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Alexey Gladkov <gladkov.alexey@gmail.com>
Cc:     util-linux@vger.kernel.org, "Dmitry V. Levin" <ldv@altlinux.org>,
        Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>
Subject: Re: [PATCH 0/2] setarch: add arm and aarch64 architectures to
 transition
Message-ID: <20200624130947.bgirgurlvvceb57q@ws.net.home>
References: <20200623145620.2669920-1-gladkov.alexey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200623145620.2669920-1-gladkov.alexey@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Jun 23, 2020 at 04:56:18PM +0200, Alexey Gladkov wrote:
> Alexey Gladkov (2):
>   setarch: make verify_arch_domain extendable
>   setarch: add arm and aarch64 architectures to transition rules

Applied, thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

