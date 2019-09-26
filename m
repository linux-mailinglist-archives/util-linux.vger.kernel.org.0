Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 55716BF489
	for <lists+util-linux@lfdr.de>; Thu, 26 Sep 2019 15:58:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726476AbfIZN6D (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 26 Sep 2019 09:58:03 -0400
Received: from mx1.redhat.com ([209.132.183.28]:49220 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726094AbfIZN6D (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Thu, 26 Sep 2019 09:58:03 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id F0E8F3086208;
        Thu, 26 Sep 2019 13:58:02 +0000 (UTC)
Received: from 10.255.255.10 (unknown [10.40.205.32])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 356125C224;
        Thu, 26 Sep 2019 13:58:01 +0000 (UTC)
Date:   Thu, 26 Sep 2019 15:57:59 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Quentin Rameau <quinq@fifth.space>
Cc:     util-linux@vger.kernel.org
Subject: Re: [PATCH 0/2] Fix chsh when called as root
Message-ID: <20190926135759.g243df5agf7zdcd4@10.255.255.10>
References: <20190921185021.10568-1-quinq@fifth.space>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190921185021.10568-1-quinq@fifth.space>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Thu, 26 Sep 2019 13:58:03 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Sat, Sep 21, 2019 at 08:50:19PM +0200, Quentin Rameau wrote:
> Because chsh was using getpwuid/getpwnam, there was an issue with
> subsequent call to readline with tilde expansion which would also call
> the same function and overwrite the getpwuid/getpwnam internal storage
> struct passwd, replacing passed username results.

Applied, thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
