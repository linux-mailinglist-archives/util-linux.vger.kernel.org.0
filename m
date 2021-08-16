Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4765F3EDB6D
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbhHPQwg (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:52:36 -0400
Received: from luckmann.name ([213.239.213.133]:53499 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231447AbhHPQwd (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:33 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD602D.00000000611A97B0.000010F9; Mon, 16 Aug 2021 18:52:00 +0200
Date:   Mon, 16 Aug 2021 18:52:00 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page logger.1
Message-ID: <20210816165200.GA4329@Debian-50-lenny-64-minimal>
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

Issue: (missing) markup of command names

"Write a systemd journal entry. The entry is read from the given I<file>, "
"when specified, otherwise from standard input. Each line must begin with a "
"field that is accepted by journald; see B<systemd.journal-fields>(7) for "
"details. The use of a MESSAGE_ID field is generally a good idea, as it makes "
"finding entries easy. Examples:"
msgstr ""
"schreibt einen Systemd-Journaleintrag. Der Eintrag wird aus der angegebenen "
