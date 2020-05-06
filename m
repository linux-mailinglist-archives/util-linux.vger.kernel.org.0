Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACF661C6E87
	for <lists+util-linux@lfdr.de>; Wed,  6 May 2020 12:38:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728768AbgEFKiB (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 6 May 2020 06:38:01 -0400
Received: from sauhun.de ([88.99.104.3]:44572 "EHLO pokefinder.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728338AbgEFKiB (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Wed, 6 May 2020 06:38:01 -0400
Received: from localhost (p54B3333E.dip0.t-ipconnect.de [84.179.51.62])
        by pokefinder.org (Postfix) with ESMTPSA id E6BD52C0885;
        Wed,  6 May 2020 12:37:59 +0200 (CEST)
From:   Wolfram Sang <wsa@kernel.org>
To:     util-linux@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>
Subject: [PATCH] fdisk: specify in '--help' that we can have multiple devices with '-l'
Date:   Wed,  6 May 2020 12:37:50 +0200
Message-Id: <20200506103750.2587-1-wsa@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Matches it with the man-page.

Adresses: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=756187
Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 disk-utils/fdisk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/disk-utils/fdisk.c b/disk-utils/fdisk.c
index 457509cd3..8a9b8cf2a 100644
--- a/disk-utils/fdisk.c
+++ b/disk-utils/fdisk.c
@@ -849,8 +849,8 @@ static void __attribute__((__noreturn__)) usage(void)
 	fputs(USAGE_HEADER, out);
 
 	fprintf(out,
-	      _(" %1$s [options] <disk>      change partition table\n"
-	        " %1$s [options] -l [<disk>] list partition table(s)\n"),
+	      _(" %1$s [options] <disk>         change partition table\n"
+	        " %1$s [options] -l [<disk>...] list partition table(s)\n"),
 	       program_invocation_short_name);
 
 	fputs(USAGE_SEPARATOR, out);
-- 
2.26.2

