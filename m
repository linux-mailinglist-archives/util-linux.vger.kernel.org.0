Return-Path: <util-linux+bounces-1176-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HHvUJ5NLIWrlCgEAu9opvQ
	(envelope-from <util-linux+bounces-1176-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 04 Jun 2026 11:55:31 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC0C63EB7A
	for <lists+util-linux@lfdr.de>; Thu, 04 Jun 2026 11:55:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=telfort.nl header.s=telfort01 header.b=txrZFLml;
	spf=pass (mail.lfdr.de: domain of "util-linux+bounces-1176-lists+util-linux=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="util-linux+bounces-1176-lists+util-linux=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=telfort.nl;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CE5E63080D6C
	for <lists+util-linux@lfdr.de>; Thu,  4 Jun 2026 09:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B3D326D4A;
	Thu,  4 Jun 2026 09:53:19 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAD7380FEC
	for <util-linux@vger.kernel.org>; Thu,  4 Jun 2026 09:53:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780566799; cv=none; b=qlAODv6qz5CFsC0+lYl4kMqjHlSFcoomTpvuLNOw2o0hWxWr3omnV/VKSbDqyJc2+r1V2jUQq55Ka1YCYYysukS/wFz+jAoO0087SGu+1l9j7ekvMBhH0PMnsXhn9ZxOHLUjOR/VC8ECVoOWF1r4w5KeB4axeiQS9Dgxu5ETqAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780566799; c=relaxed/simple;
	bh=38lvjwTcKFbxPY5EZSU0ePC0QTrQU4DfMNmyO69RL94=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=O4qWTZuvz5+glLDnkfK/5CI0ZhrETxLKGeTFCdSMvHwgB1axtas3OVpzQQfsswj+fLdPCSRqzlN91XsBZashAVu3gYfrMz6FNWW6vj8TC5ky2CvX7F/OpRuawZ6sKUH+mJcRbbl4XaF0BmvRYsH6toupvmdJUuzVoHRDNAMRGWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl; spf=pass smtp.mailfrom=telfort.nl; dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b=txrZFLml; arc=none smtp.client-ip=195.121.94.167
X-KPN-MessageId: 2fa7cc73-5ffb-11f1-96a9-005056abbe64
Received: from smtp.kpnmail.nl (unknown [10.31.155.37])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 2fa7cc73-5ffb-11f1-96a9-005056abbe64;
	Thu, 04 Jun 2026 11:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telfort.nl; s=telfort01;
	h=mime-version:message-id:date:subject:to:from;
	bh=MSw2ot8ckFwl7gnlfC4v4p0w5HFhR98nG6nhkwV4M/c=;
	b=txrZFLml5/XWNrGx7NG4hQGH75l+AuaZP+jA4+PtPQ7G8qPmXXZvijfwudekY0ms4vHdzMBoFwsSH
	 5QEKgQ/2xmc8gXdDiZqEn5EL7+E0l48eIntB9SEIQGwdG6/e0b8Evee4FTsmUYpW+MeT9t6sJZYFcB
	 54plDz4SYwM5hA4M=
X-KPN-MID: 33|pQg9p4dgEGVbq3B/Jsv318SHLyjnpIdAf41Q65VFNKPFzLsaHYcYnaEaZphpEny
 t50BheTiqYJ8XFSY0DsXBSA==
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|ehj36Q9t/yW2M1MycEhX0TkVDRp0ktxR5/wTQvg5V7tYkHZOPBvDEhax9WpKecH
 79VgBrFk9BkiLD0kxnAkePg==
Received: from localhost (77-163-176-192.fixed.kpn.net [77.163.176.192])
	by smtp.kpnmail.nl (Halon) with ESMTPSA
	id 2fa39d88-5ffb-11f1-bdb3-005056ab1411;
	Thu, 04 Jun 2026 11:53:06 +0200 (CEST)
From: Benno Schulenberg <bensberg@telfort.nl>
To: util-linux@vger.kernel.org
Subject: [PATCH 1/3] lsmem: (usage) list possible values for <when> like for the other <when>
Date: Thu,  4 Jun 2026 11:52:50 +0200
Message-ID: <20260604095252.162210-1-bensberg@telfort.nl>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[telfort.nl,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[telfort.nl:s=telfort01];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1176-lists,util-linux=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:util-linux@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	FREEMAIL_FROM(0.00)[telfort.nl];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[telfort.nl:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,telfort.nl:mid,telfort.nl:dkim,telfort.nl:from_mime,telfort.nl:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BC0C63EB7A

That is: use vertical bars between the values instead of commas and "or".

(Noticed because of the missing space before "always".)

Signed-off-by: Benno Schulenberg <bensberg@telfort.nl>
---
 sys-utils/lsmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sys-utils/lsmem.c b/sys-utils/lsmem.c
index d8196215c..c3c39e8cb 100644
--- a/sys-utils/lsmem.c
+++ b/sys-utils/lsmem.c
@@ -678,7 +678,7 @@ static void __attribute__((__noreturn__)) usage(void)
 	fputs(_(" -r, --raw                 use raw output format\n"), out);
 	fputs(_(" -S, --split <list>        split ranges by specified columns\n"), out);
 	fputs(_(" -s, --sysroot <dir>       use the specified directory as system root\n"), out);
-	fputs(_("     --summary[=<when>]    print summary information (never,always or only)\n"), out);
+	fputs(_("     --summary[=<when>]    print summary information (always|never|only)\n"), out);
 
 	fputs(USAGE_SEPARATOR, out);
 	fprintf(out, USAGE_HELP_OPTIONS(27));
-- 
2.54.0


