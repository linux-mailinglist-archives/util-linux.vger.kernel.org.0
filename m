Return-Path: <util-linux+bounces-910-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1A0BE449E
	for <lists+util-linux@lfdr.de>; Thu, 16 Oct 2025 17:40:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EE05054622B
	for <lists+util-linux@lfdr.de>; Thu, 16 Oct 2025 15:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D832234DCD2;
	Thu, 16 Oct 2025 15:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="GwF31H05"
X-Original-To: util-linux@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DBE34DCCF
	for <util-linux@vger.kernel.org>; Thu, 16 Oct 2025 15:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760629127; cv=none; b=nU/scgsQ6XojV033kR2LN/sqpac/uSMfHr167a+YcF9QyTc0ynwliVUbEiVzU/rgbgclK8gr4DaaN04CD7rEb+eHbmY8K3xWIRJfzAQZ4ZNqZVTBeDHCwTiQgur5IK/jljerwEPt1p3fbR8Dv75TPnV4m0KOgs2Jws8eMd5k0LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760629127; c=relaxed/simple;
	bh=4TGNetlN6M3+uD48vUvtGJrboWmjzB3UxzaODcb1C10=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f+TY41WXrlYe/eMOxBruupoPt0AyRlOhAs7RtC4MchU4vx7vBM03JI2WEhS/4dwBn3DPv11gi+ZL5/AVHO6PGkNvuM5rAxiNEQveldDO5H23uujUhjfEC8SSSIJ4mlwGRNoDgejyggmiaZeLP7QEHbiZEOKy9wN34er3FFdHkqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=GwF31H05; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GCT8qM001281;
	Thu, 16 Oct 2025 15:38:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=RjFfaQwvZWeG46B7U
	8t/YND3abesI+4zOzNVx9AHxJA=; b=GwF31H05PwC4bj5RLrAHXxG0eeGlax3GI
	aagc1CQU0G/Wru+eghE8Ro3yFk72pdreZsgkBHiZOwMouJqR1eD7IjfvK10L1bfR
	/x9BbvwK6LKWiQEVhd71oLVbEDv+O88Lix9vRCD0pZUlbCUeG9T+sfGPUmaQ96Ft
	h6rKXU9lh/bXONsX7vuWSIvQdKiarZj3ze0mKLEdSXHhD6BlPB3q6Jechtvo7w6j
	lhqgkbn27HQaKZzqgbxrKQC+p9D2cQr2DwGqH2UMBFohWNx0kTroOsB2G3iErZpA
	nvZu6JrPAbpScl34a12Kqn63JlZn1aPoaCD0MivnGiYF1gz0hqLgQ==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 49rfp86h97-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Oct 2025 15:38:43 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 59GDY5Xk016967;
	Thu, 16 Oct 2025 15:38:42 GMT
Received: from smtprelay01.fra02v.mail.ibm.com ([9.218.2.227])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 49r32k6egf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Oct 2025 15:38:41 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com [10.20.54.103])
	by smtprelay01.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 59GFccAT61276562
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Oct 2025 15:38:38 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E0D9E200DE;
	Thu, 16 Oct 2025 15:38:37 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C163C200DC;
	Thu, 16 Oct 2025 15:38:37 +0000 (GMT)
Received: from tuxmaker.lnxne.boe (unknown [9.152.85.9])
	by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 16 Oct 2025 15:38:37 +0000 (GMT)
From: Sumanth Korikkar <sumanthk@linux.ibm.com>
To: Karel Zak <kzak@redhat.com>, util-linux@vger.kernel.org
Cc: Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
        Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
        Alexander Gordeev <agordeev@linux.ibm.com>,
        Sumanth Korikkar <sumanthk@linux.ibm.com>
Subject: [PATCH v2 5/6] lsmem: add doc for dynamic (de)configuration and memmap-on-memory support
Date: Thu, 16 Oct 2025 17:38:05 +0200
Message-ID: <20251016153808.3565873-6-sumanthk@linux.ibm.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251016153808.3565873-1-sumanthk@linux.ibm.com>
References: <20251016153808.3565873-1-sumanthk@linux.ibm.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: YCuk_vpxmUMyhGSyPhzrR88BR0NSxXiV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEyMDA4NCBTYWx0ZWRfX1jpaNKtgsnYh
 D6T090uFuUbg3/mYct1mJZpavWOJbY61/V8Whrybmz3kt7pnYDIDcqAUhYDGnA6aSjMtqnkQmFd
 OApNzv3+0/1xLEvFyhDq8E03stNlSAf+dAXw0lSa16DJDJkhkdfTNbpHqJ5qGr41MUnOZ8uNlOf
 lkwQda12BM9vb3+bVV8Byqh0P3DPQ/HXmvTnu+kAC0pS8NvJGyhmPlFWXCGhN7FJvDsGrRdik4Y
 syxmQ8PCyqohuEoXTvZiKAkqNJs/ZPeXz0Ruoib2FKIw72YFHH5riwmN3Z0vlceB7RPlBUPlr/3
 nOXavCxTxhQMF2fpRQylPnt7todIyMX9cnU/IF5pRfQEekYS3ZdRvor+WcEYbI9HvYpB9PMwmEE
 ExaFohS8CjQu/KiKRFAxuX7AV6lNDw==
X-Proofpoint-GUID: YCuk_vpxmUMyhGSyPhzrR88BR0NSxXiV
X-Authority-Analysis: v=2.4 cv=af5sXBot c=1 sm=1 tr=0 ts=68f11183 cx=c_pps
 a=3Bg1Hr4SwmMryq2xdFQyZA==:117 a=3Bg1Hr4SwmMryq2xdFQyZA==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VnNF1IyMAAAA:8
 a=Q-18vJqwCyPAAwtqNjQA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510120084

lsmem --output-all now displays two new columns:

CONFIGURED : yes/no indicating if a memory block has been explicitly
configured.

MEMMAP-ON-MEMORY : yes/no indicating whether the block uses
memmap-on-memory.

lsmem -o RANGE,SIZE,STATE,BLOCK,CONFIGURED,MEMMAP-ON-MEMORY
RANGE                   SIZE   STATE   BLOCK CONFIGURED MEMMAP-ON-MEMORY
0x00000000-0x7fffffff   2G     online  0-15  yes        no
0x80000000-0xffffffff   2G     offline 16-31 no         yes

Memory block size:                128M
Total online memory:                2G
Total offline memory:               2G
Memmap on memory parameter:        yes

Add documentation for new fields.

Reviewed-by: Maria Eisenhaendler <maria1@de.ibm.com>
Signed-off-by: Sumanth Korikkar <sumanthk@linux.ibm.com>
---
 sys-utils/lsmem.1.adoc | 44 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 3 deletions(-)

diff --git a/sys-utils/lsmem.1.adoc b/sys-utils/lsmem.1.adoc
index 9c9397631..e7226725a 100644
--- a/sys-utils/lsmem.1.adoc
+++ b/sys-utils/lsmem.1.adoc
@@ -24,7 +24,45 @@ The *lsmem* command lists a new memory range always when the current memory bloc
 
 Note that some output columns may provide inaccurate information if a split policy forces *lsmem* to ignore differences in some attributes. For example if you merge removable and non-removable memory blocks to the one range than all the range will be marked as non-removable on *lsmem* output.
 
-Not all columns are supported on all systems. If an unsupported column is specified, *lsmem* prints the column but does not provide any data for it.
+The supported columns are RANGE, SIZE, STATE, REMOVABLE, BLOCK, NODE, ZONES, CONFIGURED, MEMMAP-ON-MEMORY.
+RANGE
+The start and end physical address of the memory range.
+
+SIZE
+The size of the memory range, representing the total amount of memory in that range.
+
+STATE
+The current online status of the memory range. Common states include online, offline or transitional states.
+
+BLOCK
+The specific memory block number.
+
+NODE
+The NUMA (Non-Uniform Memory Access) node to which the memory block belongs.
+
+ZONES
+The memory zones to which the blocks belongs, such as DMA, Normal, Movable.
+
+CONFIGURED
+The configuration state of a memory block. Refer to *chmem* for details on configuring or deconfiguring memory blocks.
+
+MEMMAP-ON-MEMORY
+The memmap-on-memory state of the memory block at configuration time. This setting indicates where memory hotplug stores its internal metadata (the struct pages array or memmap). If MEMMAP-ON-MEMORY is set to 1, the metadata is allocated directly from the newly added hotplugged memory, enabling hot-add operations even when the system is under high memory pressure. If set to 0, the memmap metadata is allocated from existing system memory.
+
+Possible BLOCK, CONFIGURED, STATE, MEMMAP-ON-MEMORY states::
+
+[cols="10,10,10,15,60", options="header"]
+|===
+| BLOCK | STATE   | CONFIGURED | MEMMAP-ON-MEMORY | Description
+
+| 0     | online  | yes        | yes/no           | The memory is configured with memmap-on-memory set to (1 or 0) and memory is currently online.
+
+| 1     | offline | yes        | yes/no           | The memory is configured, but memory is offline.
+
+| 2     | offline | no         | yes/no           | The memory is offline and deconfigured.
+|===
+
+Not all columns are supported on all systems. If an unsupported column is specified, *lsmem* prints the column but does not provide any data for it. Additionally, *lsmem* may skip columns like CONFIGURED or MEMMAP-ON-MEMORY if these states are not relevant to the system's architecture.
 
 Use the *--help* option to see the columns description.
 
@@ -45,7 +83,7 @@ Use JSON output format.
 Do not print a header line.
 
 *-o*, *--output* _list_::
-Specify which output columns to print. Use *--help* to get a list of all supported columns. The default list of columns may be extended if _list_ is specified in the format **+**__list__ (e.g., *lsmem -o +NODE*).
+Specify which output columns to print. Use *--help* to obtain a list of all supported columns. To extend the default list of columns specify _list_ in the format **+**__list__. For example, *lsmem -o +NODE*.
 
 *--output-all*::
 Output all available columns.
@@ -57,7 +95,7 @@ Produce output in the form of key="value" pairs. All potentially unsafe value ch
 Produce output in raw format. All potentially unsafe characters are hex-escaped (\x<code>).
 
 *-S*, *--split* _list_::
-Specify which columns (attributes) use to split memory blocks to ranges. The supported columns are STATE, REMOVABLE, NODE and ZONES, or "none". The other columns are silently ignored. For more details see *DESCRIPTION* above.
+Specify which columns are used to split memory blocks to ranges. The supported columns are STATE, REMOVABLE, NODE, ZONES, CONFIGURED, MEMMAP-ON-MEMORY or "none". The other columns are silently ignored. For more details see *DESCRIPTION* above.
 
 *-s*, *--sysroot* _directory_::
 Gather memory data for a Linux instance other than the instance from which the *lsmem* command is issued. The specified _directory_ is the system root of the Linux instance to be inspected.
-- 
2.41.0


