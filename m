Return-Path: <util-linux+bounces-1075-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JtGMXhbrWlM1wEAu9opvQ
	(envelope-from <util-linux+bounces-1075-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Sun, 08 Mar 2026 12:20:24 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 222CA22F6B3
	for <lists+util-linux@lfdr.de>; Sun, 08 Mar 2026 12:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 727F3300FEF3
	for <lists+util-linux@lfdr.de>; Sun,  8 Mar 2026 11:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25E71B532F;
	Sun,  8 Mar 2026 11:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b="UAFXmxlR"
X-Original-To: util-linux@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F80950276
	for <util-linux@vger.kernel.org>; Sun,  8 Mar 2026 11:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772968821; cv=none; b=tZk4gQWyZManv1qTh6sSzbTQtuHZh5nVx90S7f0gS+SEae25FM2/JIulrlA2I6tbXMLgChDAhIHtXERP06AO4xiXyH4OeAJ3vhxkoklyGKRx91ukSJakwey41j9rY9j59M+Kv3gQAFnaHbREfmEjq54u76TP/7shSYFRy3o5DFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772968821; c=relaxed/simple;
	bh=3WBxf4SVsbbQ3SjssFM9jQlf5eEPOUEqWIAtEoxoLBY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=krd5/85PhWJi89QZAjmUMZNO6TilAR0Zf0XPTOCvKl8lzKDGWdBcsJJ+bEjpCe3QUVbTl0OUz40/OyGznraqqvNScstxe/tPvIzehJLhpI71CNTX1B0Qc2VkypwC5cKL4qGDAaFrLmEjgQmrfRiyOF+mPaHkiH5Bf8EFjufSv20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl; spf=pass smtp.mailfrom=telfort.nl; dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b=UAFXmxlR; arc=none smtp.client-ip=195.121.94.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=telfort.nl
X-KPN-MessageId: c5107e43-1ae0-11f1-8a98-005056ab378f
Received: from smtp.kpnmail.nl (unknown [10.31.155.38])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id c5107e43-1ae0-11f1-8a98-005056ab378f;
	Sun, 08 Mar 2026 12:20:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telfort.nl; s=telfort01;
	h=mime-version:message-id:date:subject:to:from;
	bh=xH5QRLPuQKigoyF2se95Nc62nHydVcj+s7s4DFI/jSE=;
	b=UAFXmxlRBwj32/9HKPqe0xRjgfBewNQXfPOvza4O7rCe++KP7YqOhM7TB0HYZUOq3Lqar8aZZBADL
	 G+sSAedx92js3GSg7aDZS+ktGdW92LyeEgQ6tp9xSocWl3MIHKRImMxZiDRlMkacowY+jxxn4XFPSA
	 PVsBiZHHPq+Ce6CA=
X-KPN-MID: 33|qSb9zHJAb0Lh/59BoTZUVlohkPRviWnYKzWfY2900UsweyseB5lMIwVW5UUNEpA
 pudARrLjKkxfQDz7IvADC/5n3IqZxI4TaGDh3xEvJozs=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|bFwVgHaDxNqwT0k41V8ScyRjOzBxCwG4RituQJvemrxeTwATe7syUVNc85nI1/h
 4fM6qORWBL48emkBkNAfdXw==
Received: from localhost (77-163-176-192.fixed.kpn.net [77.163.176.192])
	by smtp.kpnmail.nl (Halon) with ESMTPSA
	id c4fdeee3-1ae0-11f1-a6cb-005056abf0db;
	Sun, 08 Mar 2026 12:20:10 +0100 (CET)
From: Benno Schulenberg <bensberg@telfort.nl>
To: util-linux@vger.kernel.org
Cc: Xiao Liang <shaw.leon@gmail.com>
Subject: [PATCH 1/3] nsenter: (usage) correct the formatting of eight option arguments
Date: Sun,  8 Mar 2026 12:20:02 +0100
Message-ID: <20260308112004.9206-1-bensberg@telfort.nl>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 222CA22F6B3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[telfort.nl,reject];
	R_DKIM_ALLOW(-0.20)[telfort.nl:s=telfort01];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1075-lists,util-linux=lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[telfort.nl];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[telfort.nl:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[util-linux];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,telfort.nl:dkim,telfort.nl:email,telfort.nl:mid]
X-Rspamd-Action: no action

Angle brackets should wrap each placeholder separately: <file> and
<nsid>.  Angle brackets should not enclose metacharacters (|) nor
literal ones (= and :).

(The mistaken formatting was introduced by commit f2a5997869.)

CC: Xiao Liang <shaw.leon@gmail.com>
Signed-off-by: Benno Schulenberg <bensberg@telfort.nl>
---
 sys-utils/nsenter.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/sys-utils/nsenter.c b/sys-utils/nsenter.c
index f93e75af2..98da75511 100644
--- a/sys-utils/nsenter.c
+++ b/sys-utils/nsenter.c
@@ -97,16 +97,16 @@ static void __attribute__((__noreturn__)) usage(void)
 	fputs(USAGE_OPTIONS, out);
 	fputs(_(" -a, --all                    enter all namespaces\n"), out);
 	fputs(_(" -t, --target <PID>           target process to get namespaces from\n"), out);
-	fputs(_(" -m, --mount[=<file|:nsid>]   enter mount namespace\n"), out);
-	fputs(_(" -u, --uts[=<file|:nsid>]     enter UTS namespace (hostname etc)\n"), out);
-	fputs(_(" -i, --ipc[=<file|:nsid>]     enter System V IPC namespace\n"), out);
-	fputs(_(" -n, --net[=<file|:nsid>]     enter network namespace\n"), out);
+	fputs(_(" -m, --mount[=<file>|=:<nsid>]  enter mount namespace\n"), out);
+	fputs(_(" -u, --uts[=<file>|=:<nsid>]  enter UTS namespace (hostname etc)\n"), out);
+	fputs(_(" -i, --ipc[=<file>|=:<nsid>]  enter System V IPC namespace\n"), out);
+	fputs(_(" -n, --net[=<file>|=:<nsid>]  enter network namespace\n"), out);
 	fputs(_(" -N, --net-socket <fd>        enter socket's network namespace (use with --target)\n"), out);
-	fputs(_(" -p, --pid[=<file|:nsid>]     enter pid namespace\n"), out);
-	fputs(_(" -C, --cgroup[=<file|:nsid>]  enter cgroup namespace\n"), out);
-	fputs(_(" -U, --user[=<file|:nsid>]    enter user namespace\n"), out);
+	fputs(_(" -p, --pid[=<file>|=:<nsid>]  enter pid namespace\n"), out);
+	fputs(_(" -C, --cgroup[=<file>|=:<nsid>]  enter cgroup namespace\n"), out);
+	fputs(_(" -U, --user[=<file>|=:<nsid>] enter user namespace\n"), out);
 	fputs(_("     --user-parent            enter parent user namespace\n"), out);
-	fputs(_(" -T, --time[=<file|:nsid>]    enter time namespace\n"), out);
+	fputs(_(" -T, --time[=<file>|=:<nsid>] enter time namespace\n"), out);
 	fputs(_(" -S, --setuid[=<uid>]         set uid in entered namespace\n"), out);
 	fputs(_(" -G, --setgid[=<gid>]         set gid in entered namespace\n"), out);
 	fputs(_("     --preserve-credentials   do not touch uids or gids\n"), out);
-- 
2.53.0


