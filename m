Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F3EE2E7DEB
	for <lists+util-linux@lfdr.de>; Thu, 31 Dec 2020 05:07:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726064AbgLaEHQ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 30 Dec 2020 23:07:16 -0500
Received: from mail.kernel.org ([198.145.29.99]:40112 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726037AbgLaEHQ (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Wed, 30 Dec 2020 23:07:16 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1CB75207C7
        for <util-linux@vger.kernel.org>; Thu, 31 Dec 2020 04:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609387596;
        bh=h/Ac8HBpZLvOh9NI/nKFpToGZY7aGjIWgrREZrY8Wfc=;
        h=From:To:Subject:Date:From;
        b=jGWr0GGauwGlqbpWdFPAYaNPVc+CUau6ve7jwceXWp8LlYkoPVGT1o8ZXOu5Qw1+H
         nUjCXtMbVeIXllsfI1NlbHnicmvSiOgq+kgn0BM1iWyWSdTF3Qdj1+g9jfhzLRN/vo
         PSOWKbw2rktx8v0hwEe+KkZ6rnskY0U+kfoS7TQWwBDx306FRFY+bCXgKnUME7QzP4
         9wbHE3JZ3G5heL/PCYFf3w/DHDd4YJItdwyct+XqMfBVJ3/pbJhmwqD6HIgIQKaMHf
         gCqZx7kxQDtZ7U37jB3siMJ121ZJWVM8QKXKNW9kaYH05z5hs3JTXefkr3EcfmQ7x4
         DybdgCdlVCrKg==
From:   Eric Biggers <ebiggers@kernel.org>
To:     util-linux@vger.kernel.org
Subject: [PATCH] sys-utils: mount.8: fix a typo
Date:   Wed, 30 Dec 2020 20:05:57 -0800
Message-Id: <20201231040557.324825-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

From: Eric Biggers <ebiggers@google.com>

It should be "inode", not "i-node".

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 sys-utils/mount.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sys-utils/mount.8 b/sys-utils/mount.8
index 282a9cbbe..e33689b15 100644
--- a/sys-utils/mount.8
+++ b/sys-utils/mount.8
@@ -1300,7 +1300,7 @@ or
 .IP -
 an undeleted inode is evicted from memory
 .IP -
-more than 24 hours have passed since the i-node was written to disk.
+more than 24 hours have passed since the inode was written to disk.
 .RE
 .sp
 .TP
-- 
2.29.2

