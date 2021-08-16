Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 368C53EDB79
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231577AbhHPQwk (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:52:40 -0400
Received: from luckmann.name ([213.239.213.133]:53499 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230442AbhHPQwk (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:40 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD6041.00000000611A97B4.0000120D; Mon, 16 Aug 2021 18:52:04 +0200
Date:   Mon, 16 Aug 2021 18:52:04 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page lslogins.1
Message-ID: <20210816165204.GA4606@Debian-50-lenny-64-minimal>
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

Issue 1: /etc/login.defs → I</etc/login.defs>
Issue 2: SYS_UID_MIN → B<SYS_UID_MIN>
Issue 3: SYS_UID_MAX → B<SYS_UID_MIN>

"Show system accounts. These are by default all accounts with a UID between "
"101 and 999 (inclusive), with the exception of either nobody or nfsnobody "
"(UID 65534). This hardcoded default may be overwritten by parameters "
"SYS_UID_MIN and SYS_UID_MAX in the file I</etc/login.defs>."
