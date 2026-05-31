Return-Path: <util-linux+bounces-1169-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qI04LfZGHGotMAkAu9opvQ
	(envelope-from <util-linux+bounces-1169-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Sun, 31 May 2026 16:34:30 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD7B616AEA
	for <lists+util-linux@lfdr.de>; Sun, 31 May 2026 16:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82A3E3021E9F
	for <lists+util-linux@lfdr.de>; Sun, 31 May 2026 14:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC003242B2;
	Sun, 31 May 2026 14:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=guam.net header.i=@guam.net header.b="jc4zX00L";
	dkim=pass (1024-bit key) header.d=guam.net header.i=@guam.net header.b="anW8JbHq"
X-Original-To: util-linux@vger.kernel.org
Received: from palakse4.guam.net (202.128.5.240.guam.net [202.128.5.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C941720C461
	for <util-linux@vger.kernel.org>; Sun, 31 May 2026 14:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.128.5.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780238057; cv=none; b=MzwXWbIFqK05U7ENV8vOpg9UP1BVHLhfe7KKfL212bM9ZYYmefCVtZ8uWhr1lK+GGOoYlRV4axS6iIGhubdBxTbSmpTvp3gxebq4eQ7yFQ67hd1R2ImEMpdEelKzywaESnuCVXlzaldByko9gIoD2aMofeNV6qM8BbXrxrAqRbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780238057; c=relaxed/simple;
	bh=AhmCk1LP59t77JHOpVpO7gQv3nKlfXabv8MazSZ3ATc=;
	h=From:To:Date:MIME-Version:Subject:Message-ID:Content-type; b=SEZf/w7K0YZM4ZyWE4xkdVuCEaxY9D0icMuPrtiM5Mr+1rajem3hY9AM3Pe/Hj0XNO42rfCAhAQwF8LihxA31wqdWjEAuEs+mJmX4hcAibyqdWIk4TWWrOzcZ3qMpCBZXQ7e10u/a6iX1BC07PBPEhupLr4zLqIuCiOsAEPnTpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=guam.net; spf=pass smtp.mailfrom=guam.net; dkim=pass (1024-bit key) header.d=guam.net header.i=@guam.net header.b=jc4zX00L; dkim=pass (1024-bit key) header.d=guam.net header.i=@guam.net header.b=anW8JbHq; arc=none smtp.client-ip=202.128.5.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=guam.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=guam.net
Received: from smtp4.guam.net (unknown [10.41.4.8])
	by palakse4.guam.net (Postfix) with ESMTPS id 799D23714D
	for <util-linux@vger.kernel.org>; Mon,  1 Jun 2026 00:27:03 +1000 (ChST)
DMARC-Filter: OpenDMARC Filter v1.4.2 palakse4.guam.net 799D23714D
Authentication-Results: OpenDMARC; dmarc=pass (p=reject dis=none) header.from=guam.net
Authentication-Results: OpenDMARC; spf=pass smtp.mailfrom=guam.net
DKIM-Filter: OpenDKIM Filter v2.11.0 palakse4.guam.net 799D23714D
Authentication-Results: palakse4.guam.net;
	dkim=pass (1024-bit key, unprotected) header.d=guam.net header.i=@guam.net header.a=rsa-sha256 header.s=default header.b=jc4zX00L;
	dkim=pass (1024-bit key) header.d=guam.net header.i=@guam.net header.a=rsa-sha256 header.s=default header.b=anW8JbHq
Received: from localhost (localhost [127.0.0.1])
	by smtp4.guam.net (Postfix) with ESMTP id B9088200A241
	for <util-linux@vger.kernel.org>; Mon,  1 Jun 2026 00:26:55 +1000 (ChST)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.guam.net B9088200A241
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guam.net; s=default;
	t=1780237615; bh=YqVn+wB8prkjPAQNUiKOCvX8bgNIBMfmBnqlvE8pR74=;
	h=From:To:Date:Subject:Reply-to:From;
	b=jc4zX00LxaTj5qcTkvFcAm+Vi3Wj3uTqPe1doKevCQotGK9azGpdFhfCs165wuRGf
	 23omzJMZGGm7c2dI4q0LYLYTMRQ+7mNe4qyNU+vvU3gzraQ3/BqTuBL66w8R1Hk0WY
	 1RPkpj671FJbULh7KQW2KNwYuVIQnhHZ6oEoe0EM=
X-Virus-Scanned: amavis at guam.net
Received: from smtp4.guam.net ([127.0.0.1])
 by localhost (dpacsmtp.guam.net [127.0.0.1]) (amavis, port 10026) with ESMTP
 id COVfZZyc04Ss for <util-linux@vger.kernel.org>;
 Mon,  1 Jun 2026 00:26:54 +1000 (ChST)
Received: from [192.168.1.18] (ip184-182-116-20.lv.lv.cox.net [184.182.116.20])
	(Authenticated sender: mikes)
	by smtp4.guam.net (Postfix) with ESMTPSA id 41D38200A242
	for <util-linux@vger.kernel.org>; Mon,  1 Jun 2026 00:26:54 +1000 (ChST)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.guam.net 41D38200A242
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guam.net; s=default;
	t=1780237614; bh=YqVn+wB8prkjPAQNUiKOCvX8bgNIBMfmBnqlvE8pR74=;
	h=From:To:Date:Subject:Reply-to:From;
	b=anW8JbHqe5+CP3ENcK/DcEcEU0q28jbFL/f22a1aHu8sUTtKzne0FSOJYQtZ31uvn
	 WsVMfuTPn1XzZ4kT/yd0vC/nue8pu/wCrfFj/15bVYVsJOD7R8IkC51yr6cinZd1FR
	 il1gR8mZfhtvdS+Y60AOhXIcSf7angGOCNlonRh4=
From: "Michael D. Setzer II" <mikes@guam.net>
To: util-linux@vger.kernel.org
Date: Mon, 1 Jun 2026 00:26:52 +1000
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Question on fstrim not operating the way I expected.
Reply-to: mikes@guam.net
Message-ID: <6A1C452C.9366.324AC3@mikes.guam.net>
X-Confirm-Reading-To: mikes@guam.net
X-pmrqc: 1
Return-receipt-to: mikes@guam.net
Priority: normal
X-mailer: Pegasus Mail for Windows (v4.91.1746)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body
X-Spamd-Result: default: False [0.84 / 15.00];
	CD_MM_BODY(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	CTE_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[guam.net,reject];
	XM_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[guam.net:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_CD_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1169-lists,util-linux=lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[guam.net:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,guam.net:email,guam.net:replyto,guam.net:dkim,gmx.com:email];
	HAS_REPLYTO(0.00)[mikes@guam.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikes@guam.net,util-linux@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.965];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AAD7B616AEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Have maintain a disk imaging program going back to 2004, and 
had script to clean partitions by writing nulls to unused sectors.
But with solid state drives that added wear to drives.
Thought fstrim would be a better solution.
My G4L program loads in ram with no partitions mounted. 
It then mounts the partition and runs fstrim once showing the space 
it finds, and then runs again show 0 space to trim.
Then partitions are unmount before backing up the partitions or 
drives. 
But if I run the fstrim again, it shows exactly the same numbers on 
first pass and then zeros on second pass. So looks like fstrim is only 
making changes to memory. Is very fast thou.
Mad an image of a 1T drive with the fstrim process, and it created 
an 82G image file. 
Ran Zerofree which my script offers as a second option, and made 
another image file, and it produced a 78G image file?
fstrim is very fast, but appears to not clear anything on physical 
disk.
zerofree is a much longer process. Takes about 30 minutes on 1TB 
drive, but does only write to non-zero blocks.
Older dd option would write to all unsed blocks, so would put wear.

Creating he image file takes about 34 minutes to image 1TB disk, 
but zerofree taking about 30 minutes make total time 64 minutes.

Usually the fstrim only takes 10 to 30 seconds.

Thanks.

+------------------------------------------------------------+
 Michael D. Setzer II - Computer Science Instructor (Retired)     
 mailto:mikes@guam.net                            
 mailto:msetzerii@gmail.com
 mailto:msetzerii@gmx.com
 Guam - Where America's Day Begins                        
 G4L Disk Imaging Project maintainer 
 http://sourceforge.net/projects/g4l/
+------------------------------------------------------------+




