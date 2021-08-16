Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F9EB3EDBA1
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231932AbhHPQxD (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:53:03 -0400
Received: from luckmann.name ([213.239.213.133]:60273 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231959AbhHPQxB (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:53:01 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD6054.00000000611A97C1.0000151E; Mon, 16 Aug 2021 18:52:17 +0200
Date:   Mon, 16 Aug 2021 18:52:17 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page runuser.1
Message-ID: <20210816165217.GA5391@Debian-50-lenny-64-minimal>
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

Issue: formatting, copy → sync?

"Create a pseudo-terminal for the session. The independent terminal provides "
"better security as the user does not share a terminal with the original "
"session. This can be used to avoid TIOCSTI ioctl terminal injection and "
"other security attacks against terminal file descriptors. The entire session "
"can also be moved to the background (e.g., B<runuser --pty -u username \\(em "
"command &>). If the pseudo-terminal is enabled, then B<runuser> works as a "
"proxy between the sessions (copy stdin and stdout)."
