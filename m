Return-Path: <util-linux+bounces-1168-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJ/8OMeyGmoH7ggAu9opvQ
	(envelope-from <util-linux+bounces-1168-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Sat, 30 May 2026 11:49:59 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EACCF60BF7D
	for <lists+util-linux@lfdr.de>; Sat, 30 May 2026 11:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ED93C301B007
	for <lists+util-linux@lfdr.de>; Sat, 30 May 2026 09:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AFFF3955D0;
	Sat, 30 May 2026 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="L11OBsgv"
X-Original-To: util-linux@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC84E37F8C2
	for <util-linux@vger.kernel.org>; Sat, 30 May 2026 09:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780134594; cv=none; b=R8Kg5sAyGVpx4UCdyzvlkAJg7xj4VaE4LCJiIoI6SsgsSvwTJXYXYjvlfKStyNOh10sLgdM6Af6k9H8+rARkmrK9QdexI1iCikQX71lDV4n1B9ENgH+9XwrgyZXx6LtD3jXi8Qf0Q2yhXoxfuAklk4FaZmOMEh3XT00kBkke/BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780134594; c=relaxed/simple;
	bh=sYuVg5H8qMbuKaiZKfoMgvpbOwjWdic+ywKLiMcxcvE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=u3YdcHn7ZmBjyl5ebMXj8eOclBjqiMXdtUPQZfEYCXMhdqa7J1wCJnwaR302RrkCo6yRmHb3FAI2uQ34qYKxjpt64AsyUBliPZhCDIwyVWhWjC2Up9wt+E9vnvA+PPeXuxSORfTRSUHFoWKx5PeHsfOYK6gl5N2VEvgjdFwgI5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=L11OBsgv; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 28848C6246B;
	Sat, 30 May 2026 09:49:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 028536073B;
	Sat, 30 May 2026 09:49:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B081310888054;
	Sat, 30 May 2026 11:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780134582; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=XfDC+Gu+rbghAhtTaHjj4569TxJ3M0wucS16Ah6F1Qg=;
	b=L11OBsgvRs5LfY8cp83PQooc1Tx9SEXGawnwSQFZ1l02tgrAcbI36cYx3dUq14VQof88+A
	9Hb8VVHjE5Jh7+KRR7hmjRm+tSUwcBl7S88noJVhldCkIcGEPM+JhZbg1TmwICoGmrChgS
	507y51FSCSzK1wakQYvdQhAhbDLAcKe1NpmCwHKK/Vf2txT6f29zgvN5LNS2S8WebQSz/a
	hkCghx5TH8TBMyCV+2PAZm/GbQuf5b0urPWTdzBafknF4uKdyd/yJr3B3FpxdgICSCJBHc
	wPuymQpDfiTYrpjqJjcwx0ke5eR81xsUgyFWyBmiDQQGqTqes8fxbK0YmgGNqA==
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: util-linux@vger.kernel.org
Cc: Shubham Chakraborty <chakrabortyshubham66@gmail.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH] include/mountutils.h: fix LSMT_ROOT definition
Date: Sat, 30 May 2026 11:49:32 +0200
Message-ID: <20260530094932.2351791-1-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,bootlin.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1168-lists,util-linux=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.petazzoni@bootlin.com,util-linux@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[util-linux];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bootlin.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: EACCF60BF7D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Shubham Chakraborty <chakrabortyshubham66@gmail.com>

Commit
ded434a63f3eee7fd7805b18d6c9bb912016c3c8 ("include/mount-api-utils:
add statmount and listmount") introduce a fallback definition for the
LSMT_ROOT defined, but a small typo makes this fallback definition
ineffective:

 #ifdef LSMT_ROOT
 # define LSMT_ROOT ...
 #endif

Should obviously have been:

 #ifndef LSMT_ROOT
 # define LSMT_ROOT ...
 #endif

Signed-off-by: Shubham Chakraborty <chakrabortyshubham66@gmail.com>
[Thomas: improve commit message]
Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 include/mountutils.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mountutils.h b/include/mountutils.h
index 9eba451d4..057a29d90 100644
--- a/include/mountutils.h
+++ b/include/mountutils.h
@@ -371,7 +371,7 @@ struct ul_statmount {
 /*
  * Special @mnt_id values that can be passed to listmount
  */
-#ifdef LSMT_ROOT
+#ifndef LSMT_ROOT
 # define LSMT_ROOT              0xffffffffffffffff    /* root mount */
 #endif
 
-- 
2.54.0


