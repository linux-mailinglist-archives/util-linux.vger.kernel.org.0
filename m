Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B1E73EDBA5
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232341AbhHPQxK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:53:10 -0400
Received: from luckmann.name ([213.239.213.133]:53499 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232390AbhHPQxJ (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:53:09 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD6069.00000000611A97C9.000016EB; Mon, 16 Aug 2021 18:52:25 +0200
Date:   Mon, 16 Aug 2021 18:52:25 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page umount.8
Message-ID: <20210816165225.GA5852@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Without further ado, the following was found:

Issue: /proc/mounts → I</proc/mounts>

"Indicate that the actions should only be taken on filesystems of the "
"specified I<type>. More than one type may be specified in a comma-separated "
"list. The list of filesystem types can be prefixed with B<no> to indicate "
"that no action should be taken for all of the mentioned types. Note that "
"B<umount> reads information about mounted filesystems from kernel (I</proc/"
"mounts>) and filesystem names may be different than filesystem names used in "
"the I</etc/fstab> (e.g., \"nfs4\" vs. \"nfs\")."
