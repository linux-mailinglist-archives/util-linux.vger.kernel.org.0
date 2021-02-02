Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F23AE30C64F
	for <lists+util-linux@lfdr.de>; Tue,  2 Feb 2021 17:46:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236440AbhBBQoD (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 2 Feb 2021 11:44:03 -0500
Received: from foss.arm.com ([217.140.110.172]:52932 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236541AbhBBQaq (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 2 Feb 2021 11:30:46 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A7E7ED1;
        Tue,  2 Feb 2021 08:29:58 -0800 (PST)
Received: from e107158-lin (unknown [10.1.194.78])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E82D3F73B;
        Tue,  2 Feb 2021 08:29:57 -0800 (PST)
Date:   Tue, 2 Feb 2021 16:29:55 +0000
From:   Qais Yousef <qais.yousef@arm.com>
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH v2 2/5] Add uclampset schedutil
Message-ID: <20210202162955.b7axp22qxdzwysj3@e107158-lin>
References: <20210130205039.581764-1-qais.yousef@arm.com>
 <20210130205039.581764-3-qais.yousef@arm.com>
 <20210201161252.3suz2dbihpdxyg5x@ws.net.home>
 <20210201173202.jrsd6mbhbm2hhebm@e107158-lin>
 <20210202080131.lyvsda3rtp7btc3q@ws.net.home>
 <20210202110225.bhddyfcu43v34y7e@e107158-lin>
 <20210202154018.hncghl7jas3o4pyb@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210202154018.hncghl7jas3o4pyb@ws.net.home>
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On 02/02/21 16:40, Karel Zak wrote:
> On Tue, Feb 02, 2021 at 11:02:25AM +0000, Qais Yousef wrote:
> > Thanks a lot Karel. Pushed a new uclampset-v3 branch so that you can easily
> > review the diff against v2 before merging.
> 
> Merged. I did some minor changes to --help and ./configure by other
> commits.

Great, thanks!

Cheers

--
Qais Yousef
