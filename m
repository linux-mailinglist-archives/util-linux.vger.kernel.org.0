Return-Path: <util-linux+bounces-1102-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PrpBKbksmktQwAAu9opvQ
	(envelope-from <util-linux+bounces-1102-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 17:07:02 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F8827530D
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 17:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8EE29328DC8A
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 16:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7603F54B6;
	Thu, 12 Mar 2026 15:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b="jKt42Q0C"
X-Original-To: util-linux@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E8A3CEBAD
	for <util-linux@vger.kernel.org>; Thu, 12 Mar 2026 15:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331173; cv=none; b=SSuvHbUMDuJGoVQv4OjDnk5sqNJ+yt7wcE/NQkqNkWQTc8SrHgDMM+SeH4tvpKj0CoYWMYyY6l6QIXdNjQgQYP0IbYzxtO48vWU5sEIqkHhwQ0xyBZ/QqCPqPtK3zbpX9h2bPhT3MfBTkxif2/ZhXV1LlAbsmQiQhIK4QJDEjic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331173; c=relaxed/simple;
	bh=Y5ptldNZHF3rpNhy1YSgcu0ZddlPxfcOALLJ0Bw0wHM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KtXejrPYFVgsb8Y5zJkc4s93/5rwjVaVDja0jq/XiR0u2ph015ldnnUWhIK+BkJqfUQNhjNG16gcPxQSZRgCAftYfywtdKp0xb4EFmrF0Yn0Mh0TnrXflxTGzXo9bK93bW39CMhfWlGav3GsgkuKSr+AIknzro9L1a5d2OwH+cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl; spf=pass smtp.mailfrom=telfort.nl; dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b=jKt42Q0C; arc=none smtp.client-ip=195.121.94.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=telfort.nl
X-KPN-MessageId: 73e76c86-1e2c-11f1-8a99-005056ab378f
Received: from smtp.kpnmail.nl (unknown [10.31.155.38])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 73e76c86-1e2c-11f1-8a99-005056ab378f;
	Thu, 12 Mar 2026 16:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telfort.nl; s=telfort01;
	h=content-type:from:to:subject:mime-version:date:message-id;
	bh=Y5ptldNZHF3rpNhy1YSgcu0ZddlPxfcOALLJ0Bw0wHM=;
	b=jKt42Q0CYx+oyDTtaoUPwcSqJXodYsBT45z2b5Kc9VdouMASgtKsWbX51NCc/+ZuoI9MPrqGKhfUS
	 WI+Eu5Z9/eMcef8DOkz0YHhh2Fwr9O+pflT/fp0WMt/jWw+ZqL3TcSJfw8sREGyiu8CwKPkSbCesyL
	 cGvKtWbhV8aIsip8=
X-KPN-MID: 33|642i8wV8qnyh7jHEwmtvQAlu/GFWN1zCi0PgShz6l77c664Tq8yMNhk+1KnL9Y3
 3Inwi0P2eyBaA6u8EDy3CAhkn7wIXOk0APX21YZKvvN4=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|Y4rLZIQ3scvaw58YreoEItNlMVyOT/CsklL1hZ4Lk5aCk22ykbtBi34frU++Jo2
 C8O90FGJCYwntu6DRuSoo3w==
Received: from [192.168.2.23] (77-163-176-192.fixed.kpn.net [77.163.176.192])
	by smtp.kpnmail.nl (Halon) with ESMTPSA
	id 73ca9d1e-1e2c-11f1-a6cb-005056abf0db;
	Thu, 12 Mar 2026 16:59:29 +0100 (CET)
Message-ID: <06c01b55-64ed-4aa3-9c28-f450fd1141f7@telfort.nl>
Date: Thu, 12 Mar 2026 16:59:29 +0100
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] lsmem: (man) correct the markup of column names, and
 improve some grammar
To: Karel Zak <kzak@redhat.com>, Sumanth Korikkar <sumanthk@linux.ibm.com>
Cc: util-linux@vger.kernel.org
References: <20260307114308.7517-1-bensberg@telfort.nl>
 <20260307114308.7517-2-bensberg@telfort.nl>
 <aa6-0Gx7Q8ZzWozj@li-2b55cdcc-350b-11b2-a85c-a78bff51fc11.ibm.com>
 <d6fywjkl5vvef3uyshxi477fe6vtnzygb7sjsy5mecs7c546gd@cy73pfohzucq>
Content-Language: en-US, nl-NL, es-ES
From: Benno Schulenberg <bensberg@telfort.nl>
In-Reply-To: <d6fywjkl5vvef3uyshxi477fe6vtnzygb7sjsy5mecs7c546gd@cy73pfohzucq>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------w4NtqUyjzgtrxGv8Z0w4CsGv"
X-Spamd-Result: default: False [-3.16 / 15.00];
	SIGNED_PGP(-2.00)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[telfort.nl,reject];
	MIME_GOOD(-0.20)[multipart/signed,multipart/mixed,text/plain];
	R_DKIM_ALLOW(-0.20)[telfort.nl:s=telfort01];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1102-lists,util-linux=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[telfort.nl:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-0.894];
	TAGGED_RCPT(0.00)[util-linux];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[telfort.nl];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,telfort.nl:dkim,telfort.nl:mid]
X-Rspamd-Queue-Id: 99F8827530D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------w4NtqUyjzgtrxGv8Z0w4CsGv
Content-Type: multipart/mixed; boundary="------------ac5VcTB9PzBikTNZ0YVAJm4T";
 protected-headers="v1"
From: Benno Schulenberg <bensberg@telfort.nl>
To: Karel Zak <kzak@redhat.com>, Sumanth Korikkar <sumanthk@linux.ibm.com>
Cc: util-linux@vger.kernel.org
Message-ID: <06c01b55-64ed-4aa3-9c28-f450fd1141f7@telfort.nl>
Subject: Re: [PATCH 2/2] lsmem: (man) correct the markup of column names, and
 improve some grammar
References: <20260307114308.7517-1-bensberg@telfort.nl>
 <20260307114308.7517-2-bensberg@telfort.nl>
 <aa6-0Gx7Q8ZzWozj@li-2b55cdcc-350b-11b2-a85c-a78bff51fc11.ibm.com>
 <d6fywjkl5vvef3uyshxi477fe6vtnzygb7sjsy5mecs7c546gd@cy73pfohzucq>
In-Reply-To: <d6fywjkl5vvef3uyshxi477fe6vtnzygb7sjsy5mecs7c546gd@cy73pfohzucq>

--------------ac5VcTB9PzBikTNZ0YVAJm4T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQpPcCAxMS0wMy0yMDI2IG9tIDEzOjI3IHNjaHJlZWYgS2FyZWwgWmFrOg0KPiBXaGF0IEkg
ZmluZCByZWxldmFudCBpcyAicHJldmlvdXNseSBjb25maWd1cmVkLiIgTWF5YmUgYWRkIGEg
c2VudGVuY2UNCj4gc3RhdGluZyB0aGF0IENPTkZJR1VSRUQgYW5kIE1FTU1BUC1PTi1NRU1P
UlkgZm9yIF9vZmZsaW5lXyBibG9ja3Mgc2hvdw0KPiB0aGUgcHJldmlvdXMgc2V0dXAuDQo+
IA0KPiBCZW5ubywgd2hhdCBkbyB5b3UgdGhpbms/DQoNCkkgdGhpbmsgU3VtYW50aCBoYXMg
YWdyZWVkIHRoYXQgbXkgb3JpZ2luYWwgMi8yIGxzbWVtIHBhdGNoIGlzIGZpbmUNCndpdGgg
aGltLg0KDQoNCkJlbm5vDQoNCg==

--------------ac5VcTB9PzBikTNZ0YVAJm4T--

--------------w4NtqUyjzgtrxGv8Z0w4CsGv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEFo5vQpe/16ea/USWUUu+Lrjhlh8FAmmy4uEFAwAAAAAACgkQUUu+Lrjhlh/1
/w/8CKjOXR+cBoWMGPHY8zuuB5BZaPOIFjUzec5j0Pnviri7FZYSgPooOpgS8XiCC4JyvFg07gq4
W6Lt1r1rgz7xUSJjSfav/tfbnwuov6sWzEyWrAhhfPkePzqhzXx+q1f4VqtYIG0DlkwCX/UL6qxN
0lnd9rP139gdQwQeHO6JTjJrYe4aR29jNnqZc94xQaQJ4kcOzX2DEWRCid7CXxPm5uulJcx1dPDi
V63DFsUh3P1OqxKIEHXnpk6MuG+gBQYveRBCpJz6EpK/K+fbvzM/aMLYd/aZFi3di81SK3MduAiF
koaWgm2NRkzwPLMpKf6IWNoEj2L+r94U2uRWu4QbdcXBwQGVRPk+U6l5jYT51VL2qft+6P/zkGA9
nCOdkaTbLJb+/p5kw4e7RhqK4mmDz0EGmYPxe/cxKb6afxV15GTPEP6ishncyMT3/9rA4kxOjixT
bAh5PDzF9hrFdsq37FOMe8zQlsq5VCt78hP0Kvi19WUXRV1oZwDvypwClnGrbJkEAcKXpV0gX09s
ZrVru3gpM62WMFVjJNbuKQ5jH1agULhFCGm0EY4TNMJCfr1+jdWr3iks4xDbKw8vmVJGW+oiBWFl
6piTCTrZq1oCWvt9nLLcueFdU0VLO7iDa6TrqXqBVYeBxf4Wc2SIUzEcfZiy5Xqp23wOinge6Ubv
8Mk=
=Qxwc
-----END PGP SIGNATURE-----

--------------w4NtqUyjzgtrxGv8Z0w4CsGv--

