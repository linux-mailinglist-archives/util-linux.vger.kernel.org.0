Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E68EB3EDB5E
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbhHPQw2 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:52:28 -0400
Received: from luckmann.name ([213.239.213.133]:60273 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230397AbhHPQw2 (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:28 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD602E.00000000611A97AA.00000F9B; Mon, 16 Aug 2021 18:51:54 +0200
Date:   Mon, 16 Aug 2021 18:51:54 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page fstrim.8
Message-ID: <20210816165154.GA3980@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Without further ado, the following was found:

Issue: (Missing) markup of fstrim

"Minimum contiguous free range to discard, in bytes. (This value is "
"internally rounded up to a multiple of the filesystem block size.) Free "
"ranges smaller than this will be ignored and fstrim will adjust the minimum "
"if it\\(cqs smaller than the device\\(cqs minimum, and report that "
"(fstrim_range.minlen) back to userspace. By increasing this value, the "
"fstrim operation will complete more quickly for filesystems with badly "
"fragmented freespace, although not all blocks will be discarded. The default "
"value is zero, discarding every free block."
