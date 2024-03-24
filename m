Return-Path: <util-linux+bounces-132-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EADB887EB3
	for <lists+util-linux@lfdr.de>; Sun, 24 Mar 2024 20:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F80C1F21101
	for <lists+util-linux@lfdr.de>; Sun, 24 Mar 2024 19:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED4EED2F0;
	Sun, 24 Mar 2024 19:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=t8w.de header.i=@t8w.de header.b="dhFbiI22"
X-Original-To: util-linux@vger.kernel.org
Received: from d2.t8w.de (d2.t8w.de [78.47.122.230])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DA2DDAB
	for <util-linux@vger.kernel.org>; Sun, 24 Mar 2024 19:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.47.122.230
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711308106; cv=none; b=B0X/e20dxG/PYfIkRhdEXUq5i88VYbUmoIdUD3cuOk0Ie+9cHdYB1YXHap7PzuIdGxl9ycNm7ck0xRZ7e1yv6uuHG0rt51+tECOQyrNhe4Ou5Te8oHaFFb/9q5/sTd/NqOvIsUX5ELEs/egD8WQgFQWbdHL1/xoGAe0Wf3NIe1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711308106; c=relaxed/simple;
	bh=EIxl97CJV/uCNJ6dDWy/5o5LfUmeY5Tic4XcAH0GQCQ=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=GHYcBz2rRCG9a4Eszvu5VaN6IWX17udIvR/Mv3qbJJ9QWiF/jrUHVvxDIBw1R7MzUki928YNVDQs7UBYeS8yhbiNaLxKgY1Cm+f20v7nH83eTgzHOgj2Zgvc8aFAVAXjvYR38y5QaD/OKK7D9Ngoxwy2ZKaKd/nkXVSt5E510JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=t8w.de; spf=pass smtp.mailfrom=t8w.de; dkim=pass (2048-bit key) header.d=t8w.de header.i=@t8w.de header.b=dhFbiI22; arc=none smtp.client-ip=78.47.122.230
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=t8w.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=t8w.de
From: Tim Hallmann <tim@t8w.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=t8w.de; s=d2-2020;
	t=1711307695;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=c8AM+Mod9I/B2YiGtJmGa9KWukW01EUrZJhhn9kTOww=;
	b=dhFbiI22qpgQXbBMx1BGMoKmihMzvwt8cEbfbLJ46hI0K3RpMIA3kHkS+GFAl0OXHQs1jo
	T9lLiMGIgL2T4cue6wDlzGwY4MfGaytjJckCLvbm0XrEaTXpuHyDb/el8rZgBUkf9ENBu5
	FGRJWdQrouZeD/cbvyUhgEPSo0e33wjX3Q6eAwRTBbTKLZO2i4Olys7isYSSr7uvrALpe8
	+9ES5jnizxJY3a5U/72TMTEsFvO8C1yv7zS8fpV9EGd2Xhadn0/0JErjkkICgBh+c6ue3z
	BbLWqI3H/fqJlZlJyPKO1Ty0dPsUOYy842/LG8zoJOVI3fzoHPFdE+GpPhfVQA==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=tim@t8w.de smtp.mailfrom=tim@t8w.de
To: util-linux@vger.kernel.org
Subject: [PATCH] rev: Check for wchar conversion errors
Date: Sun, 24 Mar 2024 20:14:30 +0100
Message-ID: <20240324191430.319771-1-tim@t8w.de>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit c9cc84621ca98ef85499e83ca56f05f12055f193 introduced a regression
where only the actual EOF is handled, not other error conditions
returning WEOF. This leads to an infinite loop upon encountering
conversion errors. For example (using LC_CTYPE="en_US.UTF-8"):

$ printf '\x80' | rev

Signed-off-by: Tim Hallmann <tim@t8w.de>
---
 text-utils/rev.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/text-utils/rev.c b/text-utils/rev.c
index 81331719d..4b731890d 100644
--- a/text-utils/rev.c
+++ b/text-utils/rev.c
@@ -173,8 +173,6 @@ int main(int argc, char *argv[])
 		line = 0;
 		while (!feof(fp)) {
 			len = read_line(sep, buf, bufsiz, fp);
-			if (len == 0)
-				continue;
 
 			/* This is my hack from setpwnam.c -janl */
 			while (len == bufsiz && !feof(fp)) {
@@ -187,14 +185,18 @@ int main(int argc, char *argv[])
 				/* And fill the rest of the buffer */
 				len += read_line(sep, &buf[len], bufsiz/2, fp);
 			}
+			if (ferror(fp)) {
+				warn("%s: %ju", filename, line);
+				rval = EXIT_FAILURE;
+				break;
+			}
+			if (len == 0)
+				continue;
+
 			reverse_str(buf, buf[len - 1] == sep ? len - 1 : len);
 			write_line(buf, len, stdout);
 			line++;
 		}
-		if (ferror(fp)) {
-			warn("%s: %ju", filename, line);
-			rval = EXIT_FAILURE;
-		}
 		if (fp != stdin)
 			fclose(fp);
 	} while(*argv);
-- 
2.44.0


