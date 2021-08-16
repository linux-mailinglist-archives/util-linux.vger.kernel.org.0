Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A216C3EDB97
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 18:52:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232181AbhHPQxA (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 12:53:00 -0400
Received: from luckmann.name ([213.239.213.133]:60273 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232043AbhHPQw4 (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 12:52:56 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD604D.00000000611A97BE.00001464; Mon, 16 Aug 2021 18:52:14 +0200
Date:   Mon, 16 Aug 2021 18:52:14 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     mario.blaettermann@gmail.com
Subject: Issue in man page mount.8
Message-ID: <20210816165214.GA5205@Debian-50-lenny-64-minimal>
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

Issue: before on the  → before the

"The device-mapper verity target provides read-only transparent integrity "
"checking of block devices using kernel crypto API. The B<mount> command can "
"open the dm-verity device and do the integrity verification before on the "
"device filesystem is mounted. Requires libcryptsetup with in libmount "
"(optionally via B<dlopen>(3)). If libcryptsetup supports extracting the root "
"hash of an already mounted device, existing devices will be automatically "
"reused in case of a match. Mount options for dm-verity:"
