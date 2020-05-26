Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91FA51BB746
	for <lists+util-linux@lfdr.de>; Tue, 28 Apr 2020 09:13:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726259AbgD1HNX (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 28 Apr 2020 03:13:23 -0400
Received: from sauhun.de ([88.99.104.3]:39550 "EHLO pokefinder.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725867AbgD1HNX (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Tue, 28 Apr 2020 03:13:23 -0400
Received: from localhost (p5486CA03.dip0.t-ipconnect.de [84.134.202.3])
        by pokefinder.org (Postfix) with ESMTPSA id 126B42C0710;
        Tue, 28 Apr 2020 09:13:22 +0200 (CEST)
From:   Wolfram Sang <wsa@the-dreams.de>
To:     util-linux@vger.kernel.org
Cc:     Wolfram Sang <wsa@the-dreams.de>
Subject: [PATCH] bash-completion: umount explicitly needs gawk
Date:   Tue, 28 Apr 2020 09:13:15 +0200
Message-Id: <20200428071315.2945-1-wsa@the-dreams.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

gensub() is a gawk extension, so use it explicitly. Otherwise users will
get an error if their 'awk' defaults to something else.

Fixes: 3ebfc8d37 ("bash-completion: umount support relative path and ~ as home shorthands")
Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
---
 bash-completion/umount | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bash-completion/umount b/bash-completion/umount
index 7fc2bd376..0949688f9 100644
--- a/bash-completion/umount
+++ b/bash-completion/umount
@@ -51,7 +51,7 @@ _umount_module()
 
 	local oldifs=$IFS
 	IFS=$'\n'
-	COMPREPLY=( $( compgen -W "$(findmnt -lno TARGET | awk \
+	COMPREPLY=( $( compgen -W "$(findmnt -lno TARGET | gawk \
 		'{
 			if ($0 ~ ENVIRON["HOME"]) {
 				homeless = $0
-- 
2.26.2

