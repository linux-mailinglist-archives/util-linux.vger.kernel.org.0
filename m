Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D9013EDB62
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230251AbhHPQwa (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:52:30 -0400
Received: from luckmann.name ([213.239.213.133]:60273 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230397AbhHPQw3 (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:29 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD6032.00000000611A97AC.00000FF8; Mon, 16 Aug 2021 18:51:56 +0200
Date:   Mon, 16 Aug 2021 18:51:56 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page hexdump.1
Message-ID: <20210816165156.GA4073@Debian-50-lenny-64-minimal>
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

Issue: superfluous citation around formatting

"I<Canonical hex+ASCII display>. Display the input offset in hexadecimal, "
"followed by sixteen space-separated, two-column, hexadecimal bytes, followed "
"by the same sixteen bytes in B<%_p> format enclosed in \\(aqB<|>\\(aq "
"characters. Invoking the program as B<hd> implies this option."

"Output characters in the default character set. Non-printing characters are "
"displayed as a single \\(aqB<.>\\(aq."
