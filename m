Return-Path: <util-linux+bounces-1117-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJb0FtyJymmA9wUAu9opvQ
	(envelope-from <util-linux+bounces-1117-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 30 Mar 2026 16:34:04 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE66435CEE6
	for <lists+util-linux@lfdr.de>; Mon, 30 Mar 2026 16:34:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4E212304AC39
	for <lists+util-linux@lfdr.de>; Mon, 30 Mar 2026 14:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFCE73DBD50;
	Mon, 30 Mar 2026 14:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b="gg+W6Tu0"
X-Original-To: util-linux@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C610D3D9057
	for <util-linux@vger.kernel.org>; Mon, 30 Mar 2026 14:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774880765; cv=none; b=eewugK4+kUGaucK/NBRs30YRD4opUxxTjSPRBXInJsA7XD9B/VrrvYUgqu3SAEVFg/cG0Jrr9giy1zcfpPkXWX9wbQRcggzkbn1gkhELICRUK+IjXaqsgtv1qjoeya24gf+YDtxwA04ylOV5SObi7sKWUpDuEAYB+xwqLNzDSD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774880765; c=relaxed/simple;
	bh=pfOEHbO08FdcSWuhbItEoXyBITlhj2W2vAEQgL58fC0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n9IvKGdOdSRAu5nBu0VkIrf9UefM8yLEuMbdNqOJpLTco3fw5VFowKYgnZaOdtFX1tF4yIVcoKf2JdyMx/JTjOtlOs5bJw9026vVDtTv75NLmZ8OMGlf/chvGmA8AR+UEhbQ4b5kzTDD6Z+T+D6Ks703/xLufD8ouGOFNFkAhw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl; spf=pass smtp.mailfrom=telfort.nl; dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b=gg+W6Tu0; arc=none smtp.client-ip=195.121.94.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=telfort.nl
X-KPN-MessageId: 5c40dfcc-2c44-11f1-8a9a-005056ab378f
Received: from smtp.kpnmail.nl (unknown [10.31.155.40])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 5c40dfcc-2c44-11f1-8a9a-005056ab378f;
	Mon, 30 Mar 2026 16:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telfort.nl; s=telfort01;
	h=mime-version:message-id:date:subject:to:from;
	bh=XkWkpa59POIzRimkWEQL8r9sNwGqjFq5Nblt6/D/C6U=;
	b=gg+W6Tu0aCRBazndp7t1eGL6ykUxRGv7Uyo7z1aE1r1zN+Rs7K+14OjZVquhUwclopNz6j0k7dziX
	 akNgKCtXTXCwkhY58n0kefENI4Mik2e88vXtK2x5pas4ZuzeraA+yq7sUEiocohwHBRmMPjlefTRXU
	 wcDVczlu+htnhcs4=
X-KPN-MID: 33|PWkkxVLvVf6WgtZr8XeywYjdlhv+zEGitUua+bxDCur37EJ0WQ1UBq4iqJgtaq9
 YwQPFpLYMdUjzWA26tXZnfw==
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|nkh17KMASNsWTlID66Of4U+H2jKvGv/HuceRNgk0eygftJPZIKcf5zKTp/c8oGO
 Cu0w7mhD9ABcl8OkyOOpMCw==
Received: from localhost (77-163-176-192.fixed.kpn.net [77.163.176.192])
	by smtp.kpnmail.nl (Halon) with ESMTPSA
	id 5c22c9f0-2c44-11f1-b8e8-005056ab7584;
	Mon, 30 Mar 2026 16:25:54 +0200 (CEST)
From: Benno Schulenberg <bensberg@telfort.nl>
To: util-linux@vger.kernel.org
Cc: Pedro Albuquerque <pmra@protonmail.com>
Subject: [PATCH] blkpr: fix a typo ("sp:ec" => "spec"), and drop an overemphatic comma
Date: Mon, 30 Mar 2026 16:25:51 +0200
Message-ID: <20260330142551.3706-1-bensberg@telfort.nl>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[telfort.nl,reject];
	R_DKIM_ALLOW(-0.20)[telfort.nl:s=telfort01];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1117-lists,util-linux=lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[protonmail.com];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[telfort.nl:dkim,telfort.nl:email,telfort.nl:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,protonmail.com:email]
X-Rspamd-Queue-Id: BE66435CEE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The typo was introduced in commit a2752fe270, three months ago.

(The comma is not in same sentence in the next string either.)

Reported-by: Pedro Albuquerque <pmra@protonmail.com>
Signed-off-by: Benno Schulenberg <bensberg@telfort.nl>
---
 sys-utils/blkpr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sys-utils/blkpr.c b/sys-utils/blkpr.c
index 5e5e107e3..f7e776713 100644
--- a/sys-utils/blkpr.c
+++ b/sys-utils/blkpr.c
@@ -63,7 +63,7 @@ static const struct type_string pr_type[] = {
 		PR_WRITE_EXCLUSIVE_ALL_REGS, "write-exclusive-all-regs", N_(
 "    Only initiators with a registered key can write to the device. Any\n"
 "    initiator can read from the device.  All initiators with a registered\n"
-"    key are considered reservation holders.  Please, reference the SPC sp:ec\n"
+"    key are considered reservation holders.  Please reference the SPC spec\n"
 "    on the meaning of a reservation holder if you want to use this type."
 		)
 	}, {
-- 
2.53.0


