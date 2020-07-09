Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42AA521AB7C
	for <lists+util-linux@lfdr.de>; Fri, 10 Jul 2020 01:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726228AbgGIXXV (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 9 Jul 2020 19:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726222AbgGIXXV (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 9 Jul 2020 19:23:21 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD75C08C5CE
        for <util-linux@vger.kernel.org>; Thu,  9 Jul 2020 16:23:20 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 069NNFHQ028670
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <util-linux@vger.kernel.org>; Thu, 9 Jul 2020 23:23:16 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 069NNFHQ028670
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 069NNFvk028462
        for <util-linux@vger.kernel.org>; Thu, 9 Jul 2020 23:23:15 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 069NNFCT028461
        for util-linux@vger.kernel.org; Thu, 9 Jul 2020 23:23:15 GMT
Date:   Thu, 9 Jul 2020 23:23:15 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     util-linux@vger.kernel.org
Subject: docs: mount.8: What does "with in libmount" mean
Message-ID: <20200709232315.GA28427@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

  Line 2556 in "sys-util/mount.8":

filesystem is mounted.  Requires libcryptsetup with in libmount
(optionally via dlopen).
                                               *******

-- 
Bjarni I. Gislason
