Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F3BBA7354
	for <lists+util-linux@lfdr.de>; Tue,  3 Sep 2019 21:13:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726606AbfICTNt (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 3 Sep 2019 15:13:49 -0400
Received: from mx1.redhat.com ([209.132.183.28]:56340 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726005AbfICTNs (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 3 Sep 2019 15:13:48 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 7BE1330842A8;
        Tue,  3 Sep 2019 19:13:48 +0000 (UTC)
Received: from 10.255.255.10 (ovpn-204-73.brq.redhat.com [10.40.204.73])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id B52BE60C18;
        Tue,  3 Sep 2019 19:13:47 +0000 (UTC)
Date:   Tue, 3 Sep 2019 21:13:45 +0200
From:   Karel Zak <kzak@redhat.com>
To:     Hank Barta <hbarta@gmail.com>
Cc:     util-linux@vger.kernel.org
Subject: Re: no result for blkid for EFI partition
Message-ID: <20190903191345.b2r4ccgb7jrku26d@10.255.255.10>
References: <CABTDG88idFakiMbMYCKB+GmCy5=G_LiAFDK2tW28M8xMDh17BA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABTDG88idFakiMbMYCKB+GmCy5=G_LiAFDK2tW28M8xMDh17BA@mail.gmail.com>
User-Agent: NeoMutt/20180716-1584-710bcd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Tue, 03 Sep 2019 19:13:48 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Sep 03, 2019 at 10:47:08AM -0500, Hank Barta wrote:
> and formatted using
> mkdosfs -F 32 -s 1 -n EFI ${EFI_PART}
> 
> The result is
> root@debian:/# blkid /dev/sda2

Please, try 

   # LIBBLKID_DEBUG=all blkid -p /dev/sda2

and send the output. Thanks.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com
