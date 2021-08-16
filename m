Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 002043EDB73
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231368AbhHPQwj (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:52:39 -0400
Received: from luckmann.name ([213.239.213.133]:48775 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229737AbhHPQwi (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:38 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD602D.00000000611A97B2.00001183; Mon, 16 Aug 2021 18:52:02 +0200
Date:   Mon, 16 Aug 2021 18:52:02 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page login.1
Message-ID: <20210816165202.GA4468@Debian-50-lenny-64-minimal>
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

Issue: (missing) markup for command names

"A recursive login, as used to be possible in the good old days, no longer "
"works; for most purposes B<su>(1) is a satisfactory substitute. Indeed, for "
"security reasons, B<login> does a B<vhangup>(2) system call to remove any "
"possible listening processes on the tty. This is to avoid password sniffing. "
"If one uses the command B<login>, then the surrounding shell gets killed by "
"B<vhangup>(2) because it\\(cqs no longer the true owner of the tty. This can "
"be avoided by using B<exec login> in a top-level shell or xterm."
