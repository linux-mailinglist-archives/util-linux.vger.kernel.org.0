Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A1C13EDB66
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231312AbhHPQwb (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:52:31 -0400
Received: from luckmann.name ([213.239.213.133]:60273 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229481AbhHPQwa (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:30 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD602D.00000000611A97AD.00001055; Mon, 16 Aug 2021 18:51:57 +0200
Date:   Mon, 16 Aug 2021 18:51:57 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page hexdump.1
Message-ID: <20210816165157.GA4166@Debian-50-lenny-64-minimal>
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

Issue: both citation and formatting of conversion characters

"Further output by such format strings is replaced by an equivalent number of "
"spaces. An equivalent number of spaces is defined as the number of spaces "
"output by an B<s> conversion character with the same field width and "
"precision as the original conversion character or conversion string but with "
"any \\(aqB<+>\\(aq, \\(aq \\(aq, \\(aqB<#>\\(aq conversion flag characters "
"removed, and referencing a NULL string."
