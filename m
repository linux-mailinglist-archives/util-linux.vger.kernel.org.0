Return-Path: <util-linux+bounces-1147-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGwmBHfu6Wm2nAIAu9opvQ
	(envelope-from <util-linux+bounces-1147-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 23 Apr 2026 12:03:35 +0200
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68439450329
	for <lists+util-linux@lfdr.de>; Thu, 23 Apr 2026 12:03:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C391E3213ED3
	for <lists+util-linux@lfdr.de>; Thu, 23 Apr 2026 09:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14D03E63A4;
	Thu, 23 Apr 2026 09:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b="V8113WlP"
X-Original-To: util-linux@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763203E5ED7
	for <util-linux@vger.kernel.org>; Thu, 23 Apr 2026 09:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776937705; cv=none; b=MISvC9LkWvPLqJcPiPbRr8ipElhgQ+dD1+/dK2nQaxhOs45kWFK616pMC8LYkf7iHnQ1cCs5uHOIzGfJxRvWZ4b4h23wVwWE9IuKuCAXNlsaPDNAmICoDedDKVrOvRb9tvHPLBzu8pPuVJub0Bttyo8jQqOT1HbujnQnJDjx3HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776937705; c=relaxed/simple;
	bh=hxHfpFXuy8Pi296f0p5FyT8agGL2urlx3DNGMD/7FAA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=jePdK/+cfSfiMzRuwIspg96UXOTBeJl99mpo9ZV/YJoGS+01GacBZ4kHECg6HtNOzqIU3D1CvJSJ1xqKCSO1Di9JtXgD+txJUv9GMmQggU7cbpy7Liuyt0fIH5JMmbH/Twrlibczsbhp/4QT57FImHHVFUcIW2RPz+xbGzSVpQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl; spf=pass smtp.mailfrom=telfort.nl; dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b=V8113WlP; arc=none smtp.client-ip=195.121.94.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=telfort.nl
X-KPN-MessageId: 8bde9d22-3ef9-11f1-8a9c-005056ab378f
Received: from smtp.kpnmail.nl (unknown [10.31.155.39])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 8bde9d22-3ef9-11f1-8a9c-005056ab378f;
	Thu, 23 Apr 2026 11:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telfort.nl; s=telfort01;
	h=content-type:from:to:subject:mime-version:date:message-id;
	bh=hxHfpFXuy8Pi296f0p5FyT8agGL2urlx3DNGMD/7FAA=;
	b=V8113WlPEEIN3eQihELv7hggtYpTxubpab4C5J59h792huVniICdD9o8kHKRbMo9eFxHwyI8gkhSr
	 HZeHp07uu0yMSajwoPIK37QECkgSPYgK3aTkx0zEiXXc1ylqDjuzscxyrfyl3TZ861/F04bTQdAgMY
	 dATrVDYZFLA6564I=
X-KPN-MID: 33|0ZaCvaT7LT1jq3ixqANoB1ylxMHUENUSghDcfoLDFSFa2HP+q1Cvx1e73bau9+D
 zGK8prwLhWvfH8819CAHqQeRG9uyvsXogwRpx4HvaoVU=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|bgJ5RsCA9QdL56wgjc0JOHEELdpkPiB0LwKIfXcbcLhcN0YWzuCwhOKg/ZNUmcN
 zWk3WNDdFfLyR9Cng4O1HJg==
Received: from [192.168.2.23] (77-163-176-192.fixed.kpn.net [77.163.176.192])
	by smtp.kpnmail.nl (Halon) with ESMTPSA
	id 8bbc4360-3ef9-11f1-8011-005056ab7447;
	Thu, 23 Apr 2026 11:48:13 +0200 (CEST)
Message-ID: <294a8ef5-e73d-4715-a824-ba0ca40e1067@telfort.nl>
Date: Thu, 23 Apr 2026 11:48:12 +0200
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] copyfilerange: (man) fix swapped offsets in command
 example
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>,
 util-linux@vger.kernel.org
References: <20260420180528.943663-1-stepnem@smrk.net>
 <bd1c4673-ab3a-4934-a7d1-8113a48c9811@telfort.nl>
 <20260422182503.1111558-1-stepnem@smrk.net>
Content-Language: en-US, nl-NL, es-ES
From: Benno Schulenberg <bensberg@telfort.nl>
In-Reply-To: <20260422182503.1111558-1-stepnem@smrk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BW8lp7fPOwClWM7EnMpVLJ6V"
X-Spamd-Result: default: False [-4.16 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[telfort.nl,reject];
	MIME_GOOD(-0.20)[multipart/signed,multipart/mixed,text/plain];
	R_DKIM_ALLOW(-0.20)[telfort.nl:s=telfort01];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1147-lists,util-linux=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~];
	RCVD_TLS_LAST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[telfort.nl:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MAILSPIKE_FAIL(0.00)[2600:3c0a:e001:db::12fc:5321:query timed out];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[util-linux];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[telfort.nl];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smrk.net:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,telfort.nl:dkim,telfort.nl:mid]
X-Rspamd-Queue-Id: 68439450329
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------BW8lp7fPOwClWM7EnMpVLJ6V
Content-Type: multipart/mixed; boundary="------------XhAlyBTSawDhDBnqjhFtbXAS";
 protected-headers="v1"
From: Benno Schulenberg <bensberg@telfort.nl>
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>,
 util-linux@vger.kernel.org
Message-ID: <294a8ef5-e73d-4715-a824-ba0ca40e1067@telfort.nl>
Subject: Re: [PATCH] copyfilerange: (man) fix swapped offsets in command
 example
References: <20260420180528.943663-1-stepnem@smrk.net>
 <bd1c4673-ab3a-4934-a7d1-8113a48c9811@telfort.nl>
 <20260422182503.1111558-1-stepnem@smrk.net>
In-Reply-To: <20260422182503.1111558-1-stepnem@smrk.net>

--------------XhAlyBTSawDhDBnqjhFtbXAS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQpPcCAyMi0wNC0yMDI2IG9tIDIwOjI1IHNjaHJlZWYgxaB0xJtww6FuIE7Em21lYzoNCj4g
U2lnbmVkLW9mZi1ieTogxaB0xJtww6FuIE7Em21lYyA8c3RlcG5lbUBzbXJrLm5ldD4NCj4g
LS0tDQoNClRoYW5rcyBmb3IgdGhlIHR3ZWFrZWQgcmUtc3VibWlzc2lvbi4NCg0KDQo+IFRo
YXQgc2FpZCwgSSBzZWUgbm93IHRoYXQsIGhhZCBJIGdvbmUgbW9yZSBxdWFudGl0YXRpdmUg
YWJvdXQgaXQsIEkNCj4gbWlnaHQgaGF2ZSBwaWNrZWQgdGhlIG9uZSB5b3UgcHJlZmVyIDot
RA0KPiANCj4gOyBnaXQgbG9nIHwgZ3JlcCAtYyAnKG1hbik6ICcNCj4gMjENCj4gOyBnaXQg
bG9nIHwgZ3JlcCAtYyAnOiAobWFuKScNCj4gMjg5DQoNClRoYXQgY291bnRzIGFsc28gdGhl
IG9jY3VycmVuY2VzIG9mIHRob3NlIHN0cmluZ3MgaW4gdGhlIGJvZHkgb2YNCnRoZSBjb21t
aXQgbWVzc2FnZXMuICBVc2luZyAtLW9uZWxpbmUgd291bGQgYmUgbW9yZSBhY2N1cmF0ZToN
Cg0KJCBnaXQgbG9nIC0tb25lbGluZSB8IGdyZXAgLWMgJyhtYW4pOiAnDQoxMA0KJCBnaXQg
bG9nIC0tb25lbGluZSB8IGdyZXAgLWMgJzogKG1hbiknDQoyMDcNCg0KVGhvc2UgdGVuIG9j
Y3VycmVuY2VzIGFyZSBhbGwgZnJvbSB0aGUgbGFzdCB0aHJlZSB3ZWVrcy4gIFdoZW4NCnJ1
bm5pbmcgdGhvc2Ugc2FtZSBjb21tYW5kcyBmb3IgdjIuNDIsIHRoZSBmaXJzdCBjb3VudCBp
cyB6ZXJvLg0KDQoNCj4gSW4gYW55IGNhc2UsIGlmIHRoZSBwcmVmZXJlbmNlIGlzIGZlbHQg
c3Ryb25nbHkgZW5vdWdoIHRvIHJlcXVpcmUNCj4gcmVyb2xscyBqdXN0IGZvciB0aGF0LCBJ
IGJlbGlldmUgaXQgd291bGQgbWFrZSBhIGdyZWF0IGFkZGl0aW9uIHRvDQo+IGhvd3RvLWNv
bnRyaWJ1dGUudHh0DQoNCkdvb2QgaWRlYS4gIFdpbGwgcG9zdCBhIHBhdGNoIGZvciB0aGF0
Lg0KDQoNCkJlbm5vDQoNCg==

--------------XhAlyBTSawDhDBnqjhFtbXAS--

--------------BW8lp7fPOwClWM7EnMpVLJ6V
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEFo5vQpe/16ea/USWUUu+Lrjhlh8FAmnp6twFAwAAAAAACgkQUUu+Lrjhlh/4
4A/9H13WEWdCtzMoiYb2b7kXIvA3Iu9qVaprwcJ2/WMvewAUzXM6cNbNbe6/+qcNEyrZj6vCUpN4
438YF6nJ6r3luheRqoeQUQ69K8gkIbGEUJQVAOkAxGooQO7KVHYRQB7y+UalHpaSYs1eZDEDcTDv
/pRkjQxXZ2wWD8eCws8z+VjD+zKOmjTqyRkjnNJVc9ebmBqVnwsfaJjzDyskmK39MKATZteEtroU
LJpfRIY12HiGF4HQKLZ/FFTz/cVOqJafkkCcfssgmkXeoK+l6dCjsK4TaAO1CKv1gqSGkzlxBHdE
NN2T9fIR7ybZHglk7OWqFVQe3YGXzzitUkA2KHCgH+lzVAXCZo3si+K4fkiia4uREywnphJWU3ou
muxnVtEW5PIvCZgQ2UxRQ7tbQLGMQ/z4U29Zd57YnAG1qLiAJyjO1l7B8pRO6ktZXZMaBudVzI01
eLZ6dZnV1ccnD7Xo1OyAoQooeY+jZGGtFB6AH4+TajkyJ3AlXTx3BHyVRBM2ZSF3rfluBiwW7xab
Ak0vpM0HU7sToBnbQZq14CkT83Bj9erE2zhVZnnPzcUlBdj5BnxBqv1vQHz1vwhSwiI0LsUcpaaN
pRSTwBYNDb2z6EpcMTZBiphXpOtsAcSaK5lQGfqJYuT6AO6kU6HrMsm/tHBU6KdTBvnHHNGwlY7N
q5I=
=hftq
-----END PGP SIGNATURE-----

--------------BW8lp7fPOwClWM7EnMpVLJ6V--

