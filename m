Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2692A3EDB5A
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230495AbhHPQw1 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:52:27 -0400
Received: from luckmann.name ([213.239.213.133]:60273 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230397AbhHPQw1 (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:27 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD6034.00000000611A97A9.00000F3F; Mon, 16 Aug 2021 18:51:53 +0200
Date:   Mon, 16 Aug 2021 18:51:53 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page fdisk.8
Message-ID: <20210816165153.GA3887@Debian-50-lenny-64-minimal>
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

Issue 1: udevd → B<systemd-udevd>(8)
Issue 2: B<"yes"> → B<yes>

"Use exclusive BSD lock for device or file it operates. The optional argument "
"I<mode> can be B<yes>, B<no> (or 1 and 0) or B<nonblock>. If the I<mode> "
"argument is omitted, it defaults to B<\"yes\">. This option overwrites "
"environment variable B<$LOCK_BLOCK_DEVICE>. The default is not to use any "
"lock at all, but it\\(cqs recommended to avoid collisions with udevd or "
"other tools."
