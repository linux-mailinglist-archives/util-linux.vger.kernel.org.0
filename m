Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8606FD28FF
	for <lists+util-linux@lfdr.de>; Thu, 10 Oct 2019 14:09:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733027AbfJJMJk (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 10 Oct 2019 08:09:40 -0400
Received: from mx1.redhat.com ([209.132.183.28]:51418 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728030AbfJJMJk (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Thu, 10 Oct 2019 08:09:40 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 930BF3B58C
        for <util-linux@vger.kernel.org>; Thu, 10 Oct 2019 12:09:40 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.43.2.40])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 193785D6A5
        for <util-linux@vger.kernel.org>; Thu, 10 Oct 2019 12:09:39 +0000 (UTC)
From:   Alexey Gladkov <gladkov.alexey@gmail.com>
To:     util-linux@vger.kernel.org
Subject: [PATCH v1 0/4] Add modules.builtin.modinfo support
Date:   Thu, 10 Oct 2019 14:09:24 +0200
Message-Id: <20191010120928.3817287-1-gladkov.alexey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 10 Oct 2019 12:09:40 +0000 (UTC)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

The kernel since version v5.2-rc1 exports information about built-in
modules in the modules.builtin.modinfo. Now, kmod can show complete information
about the built-in modules as well as about external modules. Also kmod can
understand aliases of built-in modules.

Before:

$ modinfo block-major-9-1
modinfo: ERROR: Module block-major-9-1 not found.

After:

$ modinfo block-major-9-1
name:           md_mod
filename:       (builtin)
alias:          block-major-9-*
alias:          md
description:    MD RAID framework
license:        GPL
parm:           start_dirty_degraded:int
parm:           create_on_open:bool

Alexey Gladkov (4):
  libkmod: Add parser for modules.builtin.modinfo
  libkmod: Add function to get list of built-in modules
  Lookup aliases in the modules.builtin.modinfo
  modinfo: Show information about built-in modules

 Makefile.am                |   1 +
 libkmod/libkmod-builtin.c  | 231 +++++++++++++++++++++++++++++++++++++
 libkmod/libkmod-internal.h |  10 ++
 libkmod/libkmod-module.c   |  76 ++++++++++--
 libkmod/libkmod.c          |  25 ++++
 libkmod/libkmod.h          |   1 +
 tools/depmod.c             |  63 ++++++++++
 tools/modinfo.c            |  39 ++++---
 8 files changed, 419 insertions(+), 27 deletions(-)
 create mode 100644 libkmod/libkmod-builtin.c

-- 
2.21.0

