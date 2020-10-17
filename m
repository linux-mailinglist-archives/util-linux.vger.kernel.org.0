Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 273362911D8
	for <lists+util-linux@lfdr.de>; Sat, 17 Oct 2020 14:28:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437938AbgJQM2V (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 17 Oct 2020 08:28:21 -0400
Received: from mx.treblig.org ([46.43.15.161]:50798 "EHLO mx.treblig.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2437937AbgJQM2V (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Sat, 17 Oct 2020 08:28:21 -0400
X-Greylist: delayed 1362 seconds by postgrey-1.27 at vger.kernel.org; Sat, 17 Oct 2020 08:28:20 EDT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
        ; s=bytemarkmx; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
        Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=BtO62Mzk41D5cC0PX0hXQtX3K9ZtSS8AUkQbNYrizM8=; b=J2g3GDs7iTcpSUSpF4vSa2uFk/
        OHZ221A3HsIAIyEJGk+kW9yzNB6WmDq4Re21vwXDMK9trwcyMUHSEP8bMBSD4pWcz3fkYXYC3ZDd5
        wS1gj74aHYDlYAC7y0oUC986r3PxcshwGpeQWxSSW2m0BcIpn/eRK3El2RADMLkC55pNVoMXLHgn6
        4yjt0Qo9JTfF1zjrjQbsc0iRJkGVlOTzS5P5HgwjiWD2oWe42zgrIov+4VeNjlZq4bNmNcv5CX36E
        0eWN5Pc4Agf8hDotCBXFnFqxF/PQlp3V10pLwmMb2T/Vvd+dEsGGSRuT+qBk+UoZoUXu2uNiGdPlm
        W1GShIbA==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
        by mx.treblig.org with esmtp (Exim 4.92)
        (envelope-from <dave@treblig.org>)
        id 1kTkxt-0002qw-Fs; Sat, 17 Oct 2020 13:05:37 +0100
From:   "Dr. David Alan Gilbert" <dave@treblig.org>
To:     util-linux@vger.kernel.org
Cc:     "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH] Fix 0x%u usage
Date:   Sat, 17 Oct 2020 13:05:34 +0100
Message-Id: <20201017120534.90573-1-dave@treblig.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

There's a couple of places which use varients on "0x%u" in
format strings; that's almost always wrong - you either want
0x%x or just %u.
In libmount's case it's flags, so I'm assuming the intention
really is hex.
In the ja.po case it's %u in the original msgid.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
 libmount/src/optstr.c | 2 +-
 po/ja.po              | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/libmount/src/optstr.c b/libmount/src/optstr.c
index 9af594f52..68b7bc383 100644
--- a/libmount/src/optstr.c
+++ b/libmount/src/optstr.c
@@ -731,7 +731,7 @@ int mnt_optstr_apply_flags(char **optstr, unsigned long flags,
 	if (!optstr || !map)
 		return -EINVAL;
 
-	DBG(CXT, ul_debug("applying 0x%08lu flags to '%s'", flags, *optstr));
+	DBG(CXT, ul_debug("applying 0x%08lx flags to '%s'", flags, *optstr));
 
 	maps[0] = map;
 	next = *optstr;
diff --git a/po/ja.po b/po/ja.po
index ec2c550ec..4974c0bcc 100644
--- a/po/ja.po
+++ b/po/ja.po
@@ -6820,7 +6820,7 @@ msgstr "間違った vtoc.sanity 値 [0x%08x] の sun ディスクラベルを
 #: libfdisk/src/sun.c:163
 #, c-format
 msgid "Detected sun disklabel with wrong vtoc.nparts [%u]."
-msgstr "間違った vtoc.nparts 値 [0x%u] の sun ディスクラベルを検出しました。"
+msgstr "間違った vtoc.nparts 値 [%u] の sun ディスクラベルを検出しました。"
 
 #: libfdisk/src/sun.c:168
 msgid "Warning: Wrong values need to be fixed up and will be corrected by w(rite)"
-- 
2.28.0

