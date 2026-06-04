Return-Path: <util-linux+bounces-1177-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WaP6G0ROIWrDCwEAu9opvQ
	(envelope-from <util-linux+bounces-1177-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 04 Jun 2026 12:07:00 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EB863ED06
	for <lists+util-linux@lfdr.de>; Thu, 04 Jun 2026 12:06:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=telfort.nl header.s=telfort01 header.b=iSeLPMQ9;
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1177-lists+util-linux=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="util-linux+bounces-1177-lists+util-linux=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=telfort.nl;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D6B7E304E5B5
	for <lists+util-linux@lfdr.de>; Thu,  4 Jun 2026 09:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 137E43A7597;
	Thu,  4 Jun 2026 09:53:21 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D60380FEC
	for <util-linux@vger.kernel.org>; Thu,  4 Jun 2026 09:53:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780566800; cv=none; b=p9kYZfbwEDn5Hgtzdt1z8lmcZ+1zbR8aT9WnKOawAmuiwjX6nDgx+ipLPTO8nIVlzn7zVEE55dT8rFlxbsKhvO8sH639cWYMg1zU0blDhSTz1N5S1QJrApRjH6K5xkRTZOWGz0GGafuWzkiX4zSvd8izoYf6+KosCYPBc3ejHDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780566800; c=relaxed/simple;
	bh=VSK4lxWu759NdgLtfyQlRS9oCpZdInuwDDLGxUEvJEw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U/OyBfL3CdQsbiISwlzPbdOTEwYIqSqVT4pClQ0XyWiNbwo18bDCJZ0r/RJb5TiAIyy8fYHwzUD6jVZJgxjIgnCldl2EZN8CXrb6mktV/VzXwsxgaMP7pf4IPa+Jx7h1t7yYYN+ggGZsc8SOph1oYl7jEqWoOFGRygJlZ3YRSbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl; spf=pass smtp.mailfrom=telfort.nl; dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b=iSeLPMQ9; arc=none smtp.client-ip=195.121.94.167
X-KPN-MessageId: 32f13b48-5ffb-11f1-96a9-005056abbe64
Received: from smtp.kpnmail.nl (unknown [10.31.155.39])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 32f13b48-5ffb-11f1-96a9-005056abbe64;
	Thu, 04 Jun 2026 11:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telfort.nl; s=telfort01;
	h=mime-version:message-id:date:subject:to:from;
	bh=OCrsOLCNjL+TmfjEESZk7b8cHZS0n5K9Q04Z6EoEWPY=;
	b=iSeLPMQ9YeRqjozkGMCbGcfNgKLibfBr+KTfzfN8wLbihQqIHmU9y2xwUtkO5PvVj/PdlKV8NdqYJ
	 CExMvnYTaM8JRXoFK5MzlGQ1itQXVl4M1Oljst/8nZ0gmcVwvgrzFaw9ngZHzSbmzafNWp4e/QeU06
	 Yr8x/v9or1FLTzuc=
X-KPN-MID: 33|bpv8jMHdJqN9I/YVlqUBtLpPu3oDPAGWJdQUdUWnTiARASsiivEDhYiH0u0Pfyr
 eISwBe/LqZjDCvrTokLdEnOp+dF72QN6e0LNVYELkloo=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|JcF7iq8BDo+5trk7DdPmU/VxQrJIVWFGlEjcDJs/4jjhQ25hzLdCF88h1KAJU6W
 PfssL5X0/GE7USxu2jTH7Dw==
Received: from localhost (77-163-176-192.fixed.kpn.net [77.163.176.192])
	by smtp.kpnmail.nl (Halon) with ESMTPSA
	id 32f8bc05-5ffb-11f1-8011-005056ab7447;
	Thu, 04 Jun 2026 11:53:12 +0200 (CEST)
From: Benno Schulenberg <bensberg@telfort.nl>
To: util-linux@vger.kernel.org
Cc: Christian Goeschel Ndjomouo <cgoesc2@wgu.edu>
Subject: [PATCH 2/3] lsmem: (usage) make an option description fit within 80 columns again
Date: Thu,  4 Jun 2026 11:52:51 +0200
Message-ID: <20260604095252.162210-2-bensberg@telfort.nl>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260604095252.162210-1-bensberg@telfort.nl>
References: <20260604095252.162210-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[telfort.nl,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[telfort.nl:s=telfort01];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1177-lists,util-linux=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:util-linux@vger.kernel.org,m:cgoesc2@wgu.edu,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[telfort.nl];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[telfort.nl:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	DBL_BLOCKED_OPENRESOLVER(0.00)[telfort.nl:mid,telfort.nl:dkim,telfort.nl:from_mime,telfort.nl:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,wgu.edu:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56EB863ED06

Needed after recent commit 951862cc4a widened all option descriptions
by five columns.

CC: Christian Goeschel Ndjomouo <cgoesc2@wgu.edu>
Signed-off-by: Benno Schulenberg <bensberg@telfort.nl>
---
 sys-utils/lsmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sys-utils/lsmem.c b/sys-utils/lsmem.c
index c3c39e8cb..773570b5a 100644
--- a/sys-utils/lsmem.c
+++ b/sys-utils/lsmem.c
@@ -669,7 +669,7 @@ static void __attribute__((__noreturn__)) usage(void)
 	fputs(USAGE_OPTIONS, out);
 	fputs(_(" -a, --all                 list each individual memory block\n"), out);
 	fputs(_("     --annotate[=<when>]   annotate columns with a tooltip (always|never|auto)\n"), out);
-	fputs(_(" -b, --bytes               print SIZE in bytes rather than in human readable format\n"), out);
+	fputs(_(" -b, --bytes               print SIZE in bytes, not in human readable format\n"), out);
 	fputs(_(" -J, --json                use JSON output format\n"), out);
 	fputs(_(" -n, --noheadings          don't print headings\n"), out);
 	fputs(_(" -o, --output <list>       output columns\n"), out);
-- 
2.54.0


