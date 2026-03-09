Return-Path: <util-linux+bounces-1082-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJzPID+srmntHQIAu9opvQ
	(envelope-from <util-linux+bounces-1082-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 09 Mar 2026 12:17:19 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F0455237BCF
	for <lists+util-linux@lfdr.de>; Mon, 09 Mar 2026 12:17:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 13B183042D40
	for <lists+util-linux@lfdr.de>; Mon,  9 Mar 2026 11:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3884439B968;
	Mon,  9 Mar 2026 11:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b="wmHjfiCU"
X-Original-To: util-linux@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E0039B4A5
	for <util-linux@vger.kernel.org>; Mon,  9 Mar 2026 11:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054951; cv=none; b=CGRD+TENaW5RByP89jBHqNS94tX2M5FRH3QVhU8MY1Lzl6P7ZlwjlLKreAyHh1Aw5dL0R3Jc0o2G+7Gw6XztYXpzMQPMWHYbaCBIIR8Ce52tXHNrIldVu7wqPKDLKXSODo+GDQL3FTUNLr91wQwwopISo1OCuTC6tip5w2AjOJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054951; c=relaxed/simple;
	bh=n/tPttTdNILOfxlQU63S33kjjwm1hdtPhNAdxueHVbg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=E2PR1SR8Mk5G9wWS0AU1kkQrjd0pZZDnprWy2KaEyIxRP7KC+Dzra+wXmzR5+dO4GVvxdui7mICCrPefdJz88gG5IyZVE2klNwE8MDUybD6XhQhd1zAsXqawWJXHvAfz1DlvYmyoymDOmzH/KkwbAl3qMHm2mP4SjFC03oG99sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl; spf=pass smtp.mailfrom=telfort.nl; dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b=wmHjfiCU; arc=none smtp.client-ip=195.121.94.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=telfort.nl
X-KPN-MessageId: 51eb7408-1ba9-11f1-8a98-005056ab378f
Received: from smtp.kpnmail.nl (unknown [10.31.155.38])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 51eb7408-1ba9-11f1-8a98-005056ab378f;
	Mon, 09 Mar 2026 12:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telfort.nl; s=telfort01;
	h=mime-version:message-id:date:subject:to:from;
	bh=P+iYTgPDOYxiDFJbQgjMOOi113jmsxifE0pKf0cBV6M=;
	b=wmHjfiCUeb1S36Hwus4tS8uL4QhXRh0lEbm4CY5JqfQnosxc//HJiad7z+FbwXbxHDLg2xlf6L1iG
	 efGDlQ68cCFU1u44HM2OUXedUZwlpEupgCHmw2Htl7+Zus+52HcdWQEXgHpVUmzTNSZZIL4tXhvxif
	 91TLwv/HB2DoGHgI=
X-KPN-MID: 33|lsZWQXLwrpgW5ZaUFbZZOJR36EMx7ymzEVZifY0tB5bp7dpseucSz+Bu9MomZx4
 DaS9PhOtKw8VjNQcVdmFmVptgOGh8SSxtjvw19kKhXO8=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|hWq7rVVZYD8qLr/SHFurrZCsZMjfEdqb73c8ezFX9W0JpVt8kjMN76vG3DCvWxw
 0BU3D3I8RrQqwKw5SKHGygg==
Received: from localhost (77-163-176-192.fixed.kpn.net [77.163.176.192])
	by smtp.kpnmail.nl (Halon) with ESMTPSA
	id 51d10791-1ba9-11f1-a6cb-005056abf0db;
	Mon, 09 Mar 2026 12:15:46 +0100 (CET)
From: Benno Schulenberg <bensberg@telfort.nl>
To: util-linux@vger.kernel.org
Cc: Christian Goeschel Ndjomouo <cgoesc2@wgu.edu>
Subject: [PATCH] waitpid: consistently write the abbreviation "PID" in all-uppercase
Date: Mon,  9 Mar 2026 12:15:44 +0100
Message-ID: <20260309111544.4952-1-bensberg@telfort.nl>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F0455237BCF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[telfort.nl,reject];
	R_DKIM_ALLOW(-0.20)[telfort.nl:s=telfort01];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-1082-lists,util-linux=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[telfort.nl:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[util-linux];
	NEURAL_HAM(-0.00)[-0.996];
	FREEMAIL_FROM(0.00)[telfort.nl];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Also, use %d instead of %u, as all other comparable messages use %d.

CC: Christian Goeschel Ndjomouo <cgoesc2@wgu.edu>
Signed-off-by: Benno Schulenberg <bensberg@telfort.nl>
---
 misc-utils/waitpid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/misc-utils/waitpid.c b/misc-utils/waitpid.c
index 865b537e9..d77a41c5e 100644
--- a/misc-utils/waitpid.c
+++ b/misc-utils/waitpid.c
@@ -74,7 +74,7 @@ static inline int get_pidfd(const struct waitpid_control *ctl, struct process_in
 	if (pi->pidfd_ino) {
 		fd = ul_get_valid_pidfd(pi->pid, pi->pidfd_ino);
 		if (fd < 0 && ctl->verbose)
-			warnx(_("pidfd inode %"PRIu64" not found for pid %d"),
+			warnx(_("pidfd inode %"PRIu64" not found for PID %d"),
 					pi->pidfd_ino, pi->pid);
 	} else {
 		fd = pidfd_open(pi->pid, 0);
@@ -94,7 +94,7 @@ static void open_pidfds_or_err(const struct waitpid_control *ctl, struct process
 					warnx(_("PID %d has exited, skipping"), pi->pid);
 				continue;
 			}
-			err_nosys(EXIT_FAILURE, _("could not open pid %u"), pi->pid);
+			err_nosys(EXIT_FAILURE, _("could not open PID %d"), pi->pid);
 		}
 	}
 }
-- 
2.53.0


