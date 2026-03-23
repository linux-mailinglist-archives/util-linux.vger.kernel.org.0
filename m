Return-Path: <util-linux+bounces-1111-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EZFBBauwGkRKAQAu9opvQ
	(envelope-from <util-linux+bounces-1111-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Mon, 23 Mar 2026 04:05:58 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 578A82EC0D8
	for <lists+util-linux@lfdr.de>; Mon, 23 Mar 2026 04:05:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EF02300EA9A
	for <lists+util-linux@lfdr.de>; Mon, 23 Mar 2026 03:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E2BA1B4F2C;
	Mon, 23 Mar 2026 03:05:05 +0000 (UTC)
X-Original-To: util-linux@vger.kernel.org
Received: from mail.wilcox-tech.com (mail.wilcox-tech.com [45.32.83.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7E03BB5A
	for <util-linux@vger.kernel.org>; Mon, 23 Mar 2026 03:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.32.83.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774235105; cv=none; b=hGc6eNgcUul8JsCNzy+g+buQIOVh0DY8WfJ01pKUF2is4vo4LEtRLqlON97qjykhMBorcPcIC8TATXPIFnawJB9ZLfbCwTjimxxB+D7i+Pm5eHq1/h2ixEqPQKe+4VL0t+7fK/z4MEbP3iSu9DHoB5aVM78Maeqyq+J9Qwrg7mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774235105; c=relaxed/simple;
	bh=J0m3mf6rgEQWaAbjn7RiTHFPhsVtmBOfmjzqjkCVABY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qel3p3zs9MC9PgogznRoP3MjdLE9kWWZExozT1jjzr8sJzPft71NJNmzEfKZ/Jwypn6Rw4X8mNuQXmn/rjXZ30ASuC+xpBpYnzqX8fb/Mmf09YLUD7Tm2JlFAvaZE0IsPoXwxKSX2mMjhNbOdOPtqBXTdCX00G2yiBzPOXtl1TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=Wilcox-Tech.com; spf=pass smtp.mailfrom=Wilcox-Tech.com; arc=none smtp.client-ip=45.32.83.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=Wilcox-Tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=Wilcox-Tech.com
Received: (qmail 11222 invoked from network); 23 Mar 2026 03:04:46 -0000
Received: from 201.sub-97-232-75.myvzw.com (HELO localhost.localdomain) (awilcox@wilcox-tech.com@97.232.75.201)
  by mail.wilcox-tech.com with ESMTPA; 23 Mar 2026 03:04:46 -0000
From: Anna Wilcox <AWilcox@Wilcox-Tech.com>
To: util-linux@vger.kernel.org
Cc: Anna Wilcox <AWilcox@Wilcox-Tech.com>,
	Sam James <sam@gentoo.org>
Subject: [PATCH] test_enosys: Handle musl libc error strings
Date: Sun, 22 Mar 2026 22:03:52 -0500
Message-ID: <20260323030358.59511-1-AWilcox@Wilcox-Tech.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.14 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[wilcox-tech.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1111-lists,util-linux=lfdr.de];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[AWilcox@Wilcox-Tech.com,util-linux@vger.kernel.org];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,wilcox-tech.com:email,Wilcox-Tech.com:mid]
X-Rspamd-Queue-Id: 578A82EC0D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

strerror(3) on musl gives different strings for some of the errnos we
test for, so the tests incorrectly fail on musl.  Change the strings
back into the glibc ones so they match the expected values properly.

Signed-off-by: Anna Wilcox <AWilcox@Wilcox-Tech.com>
Suggested-by: Sam James <sam@gentoo.org>
---
 tests/ts/enosys/enosys | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/tests/ts/enosys/enosys b/tests/ts/enosys/enosys
index 591b292a8..698283056 100755
--- a/tests/ts/enosys/enosys
+++ b/tests/ts/enosys/enosys
@@ -20,6 +20,12 @@ TS_DESC="enosys"
 . "$TS_TOPDIR"/functions.sh
 ts_init "$*"
 
+function ts_canonicalise_strerror {
+	sed -Ei -e 's/Out of memory/Cannot allocate memory/g' \
+		-e 's/Not a tty/Inappropriate ioctl for device/g' \
+		-e 's/No error information/Success/g' $1
+}
+
 ts_check_test_command "$TS_HELPER_ENOSYS"
 ts_check_enosys_syscalls fallocate fsopen execve
 
@@ -34,6 +40,8 @@ $FALLOCATE_TEST > /dev/null 2>> "$TS_OUTPUT"
 "$TS_CMD_ENOSYS" --syscall fallocate:12 $FALLOCATE_TEST > /dev/null 2>> "$TS_OUTPUT"
 "$TS_CMD_ENOSYS" --syscall fallocate:ENOMEM $FALLOCATE_TEST > /dev/null 2>> "$TS_OUTPUT"
 
+ts_canonicalise_strerror "$TS_OUTPUT"
+
 ts_finalize_subtest
 
 ts_init_subtest exec
@@ -43,6 +51,8 @@ FALLOCATE_TEST="$TS_HELPER_ENOSYS exec"
 $FALLOCATE_TEST > /dev/null 2>> "$TS_OUTPUT"
 "$TS_CMD_ENOSYS" --syscall execve $FALLOCATE_TEST > /dev/null 2>> "$TS_OUTPUT"
 
+ts_canonicalise_strerror "$TS_OUTPUT"
+
 ts_finalize_subtest
 
 ts_init_subtest ioctl
@@ -57,6 +67,8 @@ $FALLOCATE_TEST > /dev/null 2>> "$TS_OUTPUT"
 "$TS_CMD_ENOSYS" --ioctl FIOCLEX:12 $FALLOCATE_TEST > /dev/null 2>> "$TS_OUTPUT"
 "$TS_CMD_ENOSYS" --ioctl FIOCLEX:ENOMEM $FALLOCATE_TEST > /dev/null 2>> "$TS_OUTPUT"
 
+ts_canonicalise_strerror "$TS_OUTPUT"
+
 ts_finalize_subtest
 
 ts_finalize
-- 
2.52.0


