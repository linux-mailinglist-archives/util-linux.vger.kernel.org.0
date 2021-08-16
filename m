Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 302F83EDBAD
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232440AbhHPQxL (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:53:11 -0400
Received: from luckmann.name ([213.239.213.133]:53499 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232308AbhHPQxK (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:53:10 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD6070.00000000611A97CA.0000174A; Mon, 16 Aug 2021 18:52:26 +0200
Date:   Mon, 16 Aug 2021 18:52:26 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page unshare.1
Message-ID: <20210816165226.GA5947@Debian-50-lenny-64-minimal>
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

Issue: B<sleep> → B<sleep>(1)

"The B<pidof>(1) command prints no output, because the B<sleep> processes "
"have been killed. More precisely, when the B<sleep> process that has PID 1 "
"in the namespace (i.e., the namespace\\(cqs init process) was killed, this "
"caused all other processes in the namespace to be killed. By contrast, a "
"similar series of commands where the B<--kill-child> option is not used "
"shows that when B<unshare> terminates, the processes in the PID namespace "
"are not killed:"
