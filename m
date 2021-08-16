Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 075333EDBB9
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232320AbhHPQxH (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:53:07 -0400
Received: from luckmann.name ([213.239.213.133]:50635 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232390AbhHPQxG (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:53:06 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD6063.00000000611A97C6.0000164A; Mon, 16 Aug 2021 18:52:22 +0200
Date:   Mon, 16 Aug 2021 18:52:22 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page sfdisk.8
Message-ID: <20210816165222.GA5691@Debian-50-lenny-64-minimal>
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

Issue: Last sentence: The offset ... then → If the offset ... then

"The first non-assigned sector aligned according to device I/O limits. The "
"default start offset for the first partition is 1 MiB. The offset may be "
"followed by the multiplicative suffixes (KiB, MiB, GiB, TiB, PiB, EiB, ZiB "
"and YiB) then the number is interpreted as offset in bytes."
msgstr ""
"Der erste nicht zugewiesene Sektor, der entsprechend der E/A-Begrenzungen "
"ausgerichtet ist. Der Vorgabestartversatz für die erste Partition ist 1 MiB. "
