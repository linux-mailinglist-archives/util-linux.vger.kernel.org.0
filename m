Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5FDB1C6E89
	for <lists+util-linux@lfdr.de>; Wed,  6 May 2020 12:38:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728940AbgEFKiK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 6 May 2020 06:38:10 -0400
Received: from sauhun.de ([88.99.104.3]:44586 "EHLO pokefinder.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728834AbgEFKiK (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Wed, 6 May 2020 06:38:10 -0400
Received: from localhost (p54B3333E.dip0.t-ipconnect.de [84.179.51.62])
        by pokefinder.org (Postfix) with ESMTPSA id EB1BD2C0885;
        Wed,  6 May 2020 12:38:08 +0200 (CEST)
From:   Wolfram Sang <wsa@kernel.org>
To:     util-linux@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>
Subject: [PATCH] fdisk: better wording for '-B' in the man page
Date:   Wed,  6 May 2020 12:38:04 +0200
Message-Id: <20200506103804.2638-1-wsa@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Addresses: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=814184 (second part)
Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 disk-utils/fdisk.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/disk-utils/fdisk.8 b/disk-utils/fdisk.8
index 0e0d96324..6a92ba5db 100644
--- a/disk-utils/fdisk.8
+++ b/disk-utils/fdisk.8
@@ -58,7 +58,7 @@ between logical and physical sector size.  This option changes both sector sizes
 .IB sectorsize .
 .TP
 \fB\-B\fR, \fB\-\-protect\-boot\fP
-Don't erase the begin of the first disk sector when create a new disk label.  This
+Don't erase the beginning of the first disk sector when creating a new disk label.  This
 feature is supported for GPT and MBR.
 .TP
 \fB\-c\fR, \fB\-\-compatibility\fR[=\fImode\fR]
-- 
2.26.2

