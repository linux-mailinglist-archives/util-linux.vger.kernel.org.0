Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 143345032C
	for <lists+util-linux@lfdr.de>; Mon, 24 Jun 2019 09:24:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726343AbfFXHYK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 24 Jun 2019 03:24:10 -0400
Received: from mx1.redhat.com ([209.132.183.28]:50418 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727868AbfFXHYG (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Mon, 24 Jun 2019 03:24:06 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 3FDBB30842D1;
        Mon, 24 Jun 2019 07:24:06 +0000 (UTC)
Received: from ws.net.home (unknown [10.40.205.188])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 82A2760925;
        Mon, 24 Jun 2019 07:24:04 +0000 (UTC)
Date:   Mon, 24 Jun 2019 09:24:01 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Stanislav Brabec <sbrabec@suse.cz>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 2/2] Fix translations for losetup typo fix
Message-ID: <20190624072401.hwytxra6jpo5uozy@ws.net.home>
References: <8984d835-fd6b-108b-c52e-23a496e2f184@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8984d835-fd6b-108b-c52e-23a496e2f184@suse.cz>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Mon, 24 Jun 2019 07:24:06 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Thu, Jun 20, 2019 at 11:42:40PM +0200, Stanislav Brabec wrote:
>  po/cs.po    | 2 +-
>  po/da.po    | 2 +-
>  po/de.po    | 4 ++--
>  po/es.po    | 2 +-
>  po/fr.po    | 2 +-
>  po/hr.po    | 4 ++--
>  po/pl.po    | 2 +-
>  po/pt_BR.po | 4 ++--
>  po/sv.po    | 2 +-
>  po/uk.po    | 4 ++--
>  10 files changed, 14 insertions(+), 14 deletions(-)

Applied, thanks.


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
