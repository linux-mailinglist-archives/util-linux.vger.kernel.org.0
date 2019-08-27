Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7FCAA9E7FC
	for <lists+util-linux@lfdr.de>; Tue, 27 Aug 2019 14:32:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729401AbfH0McJ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 27 Aug 2019 08:32:09 -0400
Received: from mx1.redhat.com ([209.132.183.28]:48682 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726140AbfH0McJ (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 27 Aug 2019 08:32:09 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 0764F20ABB;
        Tue, 27 Aug 2019 12:32:09 +0000 (UTC)
Received: from 10.255.255.10 (ovpn-204-40.brq.redhat.com [10.40.204.40])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 40346600D1;
        Tue, 27 Aug 2019 12:32:08 +0000 (UTC)
Date:   Tue, 27 Aug 2019 14:32:05 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Patrick Steinhardt <ps@pks.im>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH v2 1/6] tests: remove reliance on buffer behaviour of
 stderr/stdout streams
Message-ID: <20190827123205.gd6lvqumrqwqnsup@10.255.255.10>
References: <cover.1566555078.git.ps@pks.im>
 <cover.1566566906.git.ps@pks.im>
 <d503b30d13c847040a8343f0e7299ae1bf7cb120.1566566906.git.ps@pks.im>
 <20190827111748.g4o375ya2shfrivs@10.255.255.10>
 <20190827114924.GA131601@ncase>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190827114924.GA131601@ncase>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 27 Aug 2019 12:32:09 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Aug 27, 2019 at 01:49:24PM +0200, Patrick Steinhardt wrote:
> > So, merged -- please, test it with musl libc. 
> 
> In fact there's one more test failure in fdisk/oddinput. Seems
> like patch 6/6 (fdisk: avoid hardcoding of errno string,
> 2019-08-23) wasn't applied yet?

Ah, sorry... Applied now. Thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
