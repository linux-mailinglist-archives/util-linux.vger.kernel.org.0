Return-Path: <util-linux+bounces-1122-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIuzJ730zmmzsAYAu9opvQ
	(envelope-from <util-linux+bounces-1122-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Fri, 03 Apr 2026 00:59:09 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB4738EF02
	for <lists+util-linux@lfdr.de>; Fri, 03 Apr 2026 00:59:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A453330305FF
	for <lists+util-linux@lfdr.de>; Thu,  2 Apr 2026 22:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC54837FF56;
	Thu,  2 Apr 2026 22:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linknsell.com header.i=@linknsell.com header.b="UFvrN+69";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bom1.rp.oracleemaildelivery.com header.i=@bom1.rp.oracleemaildelivery.com header.b="nU6gOFQd"
X-Original-To: util-linux@vger.kernel.org
Received: from aib29agb122.bom1.oracleemaildelivery.com (aib29agb122.bom1.oracleemaildelivery.com [192.29.172.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DCD31E82A
	for <util-linux@vger.kernel.org>; Thu,  2 Apr 2026 22:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.29.172.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775170595; cv=none; b=BBuQmjUKMQ8korN8oWahnhlkjuwCrc5bwSIfayUEnZTBQZSuZ5edZKYMJX5g9MIltl/2L3fLkJ8Wt5EWCazD3EVsU0Vs42MaU7SE72lkOtwYrrJEzZ7CZ8K25b4YHNNkeXNt91QBDxJBuaTYFLOvRhbyBL4cZgROd3hj1/DgrmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775170595; c=relaxed/simple;
	bh=DOGNxOuGnChhZQLwlrQLOpL2pK7O5LofYIVDLE+YYWc=;
	h=From:To:Subject:Date:Message-id:MIME-version:Content-type; b=MBbFjGg/a5jsSbuWTpxDB28TktIYJwKIm8uq9ChBXFbT+RC81PccYxKTgxvGRFEXFz2+GuvG/D9l77JslbvmvNy1ZoHIuI9NIi+3korI81SHiBRrbzxnU1NYy84bKDAfu/yddmz1T8nwM35sRouXQmxUeJYsidkU2CLNYlieMt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=linknsell.com; spf=pass smtp.mailfrom=bom1.rp.oracleemaildelivery.com; dkim=pass (2048-bit key) header.d=linknsell.com header.i=@linknsell.com header.b=UFvrN+69; dkim=pass (2048-bit key) header.d=bom1.rp.oracleemaildelivery.com header.i=@bom1.rp.oracleemaildelivery.com header.b=nU6gOFQd; arc=none smtp.client-ip=192.29.172.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=linknsell.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bom1.rp.oracleemaildelivery.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=smtp.linknsell.com.20250508;
 d=linknsell.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=DOGNxOuGnChhZQLwlrQLOpL2pK7O5LofYIVDLE+YYWc=;
 b=UFvrN+695V4oBDpCzPHpDaPRTpRNUcMaApFa45f8E09z6v/4+jlBYvhXKGgYyp2PEj2Oz3G1/lTz
   V38iR4wLeUI2qk1B0fDWUTb3r4mnP5Ko0/RbP1xbRqn+Oqzs6XB9/6ocSfPxh0c1rwS0thj0Ykwy
   ncIS4mDrXFCAiebQdx2iXCWn1HgfQqwuqqRc7uxLPzYKiRUIml0fxAbaIItyH184bIjbLBy3vfUE
   mITyIJaNc8GXrheO2VrhxJUBoYtrYqmyyvJUNDOsHuFjjxJAc+xUESAiO3vrGjfexys78W8hVYs9
   Kh8U1uoCwesdmjznyx7hq1aInKEo4KpYsJNrmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-bom-20200207;
 d=bom1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=DOGNxOuGnChhZQLwlrQLOpL2pK7O5LofYIVDLE+YYWc=;
 b=nU6gOFQd8cqoIJ4KFQm4HTrEgZflQ5FHD4KlA7LLld6oD78c1iABfab2q+Jg2JbAE6lZPk6hHK7S
   Q1cjWHHC4Hwwp1pIZHQEAWB7UZGf9f7BVnExCrz/sJhMN0Q3/KojHvwFEW7ra/CENBqfOm0sQ9Yr
   DhjvAuKbfP0+YWm5qu6p+A33sdiAcAPRw4NUuqfg+WMYWHZ7APv2Gks0TKCJP9VX5udPteSm8jbk
   i9IP2dmcfyXNCMxVrzVCNuke73SGclUokNn2qe0pvOYOJO7sw6gJwUKKBFTusRlUGaO9SNUrKqdB
   QUbRsoOMBjF8w9iarkGHFNfYp0aFAFygUM5bHQ==
Received: by omta-ad1-fd1-401-ap-mumbai-1.omtaad1.vcndpbom.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TCW003AP2E7VA60@omta-ad1-fd1-401-ap-mumbai-1.omtaad1.vcndpbom.oraclevcn.com> for
 util-linux@vger.kernel.org; Thu, 02 Apr 2026 22:56:31 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Reply-to: jisunlee@gmilweb.com
From: Jisun Lee <NoReply@linknsell.com>
To: util-linux@vger.kernel.org
Subject: I need your help
Date: 2 Apr 2026 23:56:30 +0100
Message-id: <20260402224340.A76E0970B8169E88@linknsell.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-version: 1.0
Content-type: text/plain;	charset="utf-8"
Content-transfer-encoding: quoted-printable
Reporting-Meta:
 AAEiHiatFjPQtxzvOwdRtCAxqgKoewxHgL8R49XOkmgpfkjB5rRxKLNicSCnUgbF
 fUj9TRxpThO8d3eWrr0I6N4nH6ZAy1tEeTYA/LLZGCIZGmA4EIKeVxPMjwOCAK0f
 C0pNObtTrmtvY3vMpPfe0+/xzXcynmrV9hIcu7d4wJI8boXHku3G5hMSwloXXYtO
 ViDVn7sltn6L0gXMP6GQzB1+coW8b+3UYell45oM525+i58wP/kjeA38ZJ9iyuVm
 YSnVG43+AbhshqJVoIoKzyNupk7O8y9Jna9cFKQ7dxcBWedVC6mua/1lh9k5tgtl
 yigDp3y6X1vLrOAr+0Ys/e5kODVSs04z1abyPkJVXXqZF3sTcL9vr5c40Rgv338b
 sRwNx2HNrwpAb71FDVqkEuE5ZvDgcXdzkhSqdDBtRkBI0b4oAYKi3qzhUNg7FhEX
 6tK80q4tmD1Heis7SfKgRqvuWmoaU6Owj1xycBFEUI4meW/ygFINIsWmVQ==
X-Spamd-Result: default: False [1.04 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[linknsell.com : SPF not aligned (relaxed),quarantine];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[linknsell.com:s=smtp.linknsell.com.20250508,bom1.rp.oracleemaildelivery.com:s=prod-bom-20200207];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[bounces-1122-lists,util-linux=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[linknsell.com:-,bom1.rp.oracleemaildelivery.com:-];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[jisunlee@gmilweb.com];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[NoReply@linknsell.com,util-linux@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.925];
	TAGGED_RCPT(0.00)[util-linux];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linknsell.com:mid]
X-Rspamd-Queue-Id: 1DB4738EF02
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Beloved

My ex Husband Song Lee refuse to pay our divorce settlement
funds. =E2=80=8BI need your help to recover Assets from the bank for=20
healthcare and child support
=E2=80=8Bpurposes, diagnosed with (bladder cancer).

=E2=80=8BI need your advise and support

=E2=80=8BThank You
Jisun Lee

