Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A43C23EDB90
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231861AbhHPQwy (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:52:54 -0400
Received: from luckmann.name ([213.239.213.133]:48775 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232249AbhHPQwy (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:54 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD6037.00000000611A97BC.000013F1; Mon, 16 Aug 2021 18:52:12 +0200
Date:   Mon, 16 Aug 2021 18:52:12 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page mount.8
Message-ID: <20210816165212.GA5090@Debian-50-lenny-64-minimal>
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

Issue: "mount -o remount,ro /dir" → B<mount -o remount,ro >I</dir>

"remounts all already mounted vfat filesystems in read-only mode. Each of the "
"filesystems is remounted by B<mount -o remount,ro /dir> semantic. This means "
"the B<mount> command reads I<fstab> or I<mtab> and merges these options with "
"the options from the command line."
