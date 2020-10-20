Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0CC828D10B
	for <lists+util-linux@lfdr.de>; Tue, 13 Oct 2020 17:15:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388325AbgJMPPr (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 13 Oct 2020 11:15:47 -0400
Received: from mx2.suse.de ([195.135.220.15]:55540 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387958AbgJMPPr (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 13 Oct 2020 11:15:47 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 1673CADE1;
        Tue, 13 Oct 2020 15:15:46 +0000 (UTC)
Subject: Re: [PATCH] bash-completion: Fix su
To:     Karel Zak <kzak@redhat.com>
Cc:     Util-Linux <util-linux@vger.kernel.org>,
        jun wang <junguo.wang@suse.com>
References: <423799ab-a6d8-987c-711e-cdda6ee72c3e@suse.cz>
 <20201008075351.ucusodaf3dqh5k4v@ws.net.home>
From:   Stanislav Brabec <sbrabec@suse.cz>
Organization: SUSE Linux, s. r. o.
Message-ID: <8440a218-e1ac-22fc-7a4d-4de5f606d24d@suse.cz>
Date:   Tue, 13 Oct 2020 17:15:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201008075351.ucusodaf3dqh5k4v@ws.net.home>
Content-Type: text/plain; charset=iso-8859-2
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Karel Zak wrote:
> On Thu, Oct 08, 2020 at 08:50:39AM +0200, Stanislav Brabec wrote:
>> Fix su -s <tab> that reports invalid chsh -l.
>  
> "cat /etc/shells" and "chsh -l" get the same output on my system, why
> "chsh -l" is invalid? 
> 
> chsh -l uses getusershell() glibc function.
> 
>     Karel
> 
Oops. SUSE uses chsh from shadow package, which is not fully compatible with util-linux one.

So the patch is unappropriate for the upstream util-linux.

-- 
Best Regards / S pozdravem,

Stanislav Brabec
software developer
---------------------------------------------------------------------
SUSE LINUX, s. r. o.                         e-mail: sbrabec@suse.com
K�i��kova 148/34 (Corso IIa)                    tel: +420 284 084 060
186 00 Praha 8-Karl�n                          fax:  +420 284 084 001
Czech Republic                                    http://www.suse.cz/
PGP: 830B 40D5 9E05 35D8 5E27 6FA3 717C 209F A04F CD76
