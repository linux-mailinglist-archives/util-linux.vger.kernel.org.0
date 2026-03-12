Return-Path: <util-linux+bounces-1097-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIQcMzjesmmtQQAAu9opvQ
	(envelope-from <util-linux+bounces-1097-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 16:39:36 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2FC274B2B
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 16:39:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E46923136066
	for <lists+util-linux@lfdr.de>; Thu, 12 Mar 2026 15:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CF13C140B;
	Thu, 12 Mar 2026 15:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b="F7sAPOKb"
X-Original-To: util-linux@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7EF38238F
	for <util-linux@vger.kernel.org>; Thu, 12 Mar 2026 15:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773329657; cv=none; b=hJh3p881xr5RmCtK67mfmC+zfTeq4hKVbroAcknl57ejVJqlfuNZOQJ/KLuBlMOFqgoVJgmerPnz7SlRCzq9dl0GDZZLj+DBo7KKEGx9mjZ668WVoBKbyL//gyoDylXvs5cO/rtzlpFhBoCKrnDGYhoZ3MDCsgjFLKXg+JK+vao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773329657; c=relaxed/simple;
	bh=u1x2djWEoAWbGRF+ySqmGep+CoZP3Ksggq86YciDz4M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EQPGnlEw9WAEIMdldAs/48y/AiasPxMmufYBFcaP19OUPHADXGmYMVWweFBoZ/h0Py1acAFBa6A0Ltjo4IZijdyH6Q7SyxZXCzVfMhPvk8fascdF3w0+YDLBjlLuXW0vIngjb/3K19A9JkBT+P6XHWuSpaGkRWBrvUt5daVxmdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl; spf=pass smtp.mailfrom=telfort.nl; dkim=pass (1024-bit key) header.d=telfort.nl header.i=@telfort.nl header.b=F7sAPOKb; arc=none smtp.client-ip=195.121.94.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telfort.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=telfort.nl
X-KPN-MessageId: e87ef7c5-1e28-11f1-b183-005056abad63
Received: from smtp.kpnmail.nl (unknown [10.31.155.40])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id e87ef7c5-1e28-11f1-b183-005056abad63;
	Thu, 12 Mar 2026 16:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telfort.nl; s=telfort01;
	h=content-type:from:to:subject:mime-version:date:message-id;
	bh=u1x2djWEoAWbGRF+ySqmGep+CoZP3Ksggq86YciDz4M=;
	b=F7sAPOKbmn1dqL0HLa+hwnBtWCMdpUxvlXn5sp24xNgpeW7Wd4WiSFSLj8RNC/Hi+w/oozPGbGAOm
	 S0zGUrEeoA0/zPKyEfhCrO5ZZEuKyu0X8YeJW1ODJ6ry2LLJUSOHb8mIsFcTsQS7QBxEgu5AQ/erMh
	 0sq3eslwPrnJfSaY=
X-KPN-MID: 33|eVRs/rL9tEJnIOPmEhLsFwKbqfj8ldVjW9cMAfppfX+Jc+HippkRkA82fbWVmvb
 VeIF8ChhSNOjo3/OpKOw5zdKf76v1KLEJIYQD17pA/1k=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|TiDSEltWQKPjYpUsAXsY6koxA88peKIuVLs7XLQCZH6QIU+q5h8UujSov8BIoov
 kC33qg1nDTpzngUy3514Y2w==
Received: from [192.168.2.23] (77-163-176-192.fixed.kpn.net [77.163.176.192])
	by smtp.kpnmail.nl (Halon) with ESMTPSA
	id e849f312-1e28-11f1-b8e4-005056ab7584;
	Thu, 12 Mar 2026 16:34:07 +0100 (CET)
Message-ID: <f9063973-62ef-4544-90cb-6bef3f570559@telfort.nl>
Date: Thu, 12 Mar 2026 16:34:06 +0100
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: improvements to terminal-colors.d.5.adoc were undone
To: Karel Zak <kzak@redhat.com>
Cc: util-linux@vger.kernel.org,
 =?UTF-8?Q?Mario_Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
References: <cm7cun3pymf6quqcupreoegjj6ycwv3rvbap6ezpvfidvtt4lf@rq74bm7girgz>
 <713c6323-e80e-47fc-9389-520b963a3129@telfort.nl>
 <iio2qnw62rtr5hih47h7m4hyc7glzubqnqonv7n7wjmx2gyljr@lpihqow5qu6n>
Content-Language: en-US, nl-NL, es-ES
From: Benno Schulenberg <bensberg@telfort.nl>
In-Reply-To: <iio2qnw62rtr5hih47h7m4hyc7glzubqnqonv7n7wjmx2gyljr@lpihqow5qu6n>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EjjUQDTKvbWQ0wQtAYq3ev0M"
X-Spamd-Result: default: False [-4.16 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[telfort.nl,reject];
	MIME_GOOD(-0.20)[multipart/signed,multipart/mixed,text/plain];
	R_DKIM_ALLOW(-0.20)[telfort.nl:s=telfort01];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1097-lists,util-linux=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bensberg@telfort.nl,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[telfort.nl:+];
	NEURAL_HAM(-0.00)[-0.953];
	TAGGED_RCPT(0.00)[util-linux];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[telfort.nl];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1F2FC274B2B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EjjUQDTKvbWQ0wQtAYq3ev0M
Content-Type: multipart/mixed; boundary="------------R5Op2SSx3kCYkWb4EjrQyo19";
 protected-headers="v1"
From: Benno Schulenberg <bensberg@telfort.nl>
To: Karel Zak <kzak@redhat.com>
Cc: util-linux@vger.kernel.org,
 =?UTF-8?Q?Mario_Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Message-ID: <f9063973-62ef-4544-90cb-6bef3f570559@telfort.nl>
Subject: Re: improvements to terminal-colors.d.5.adoc were undone
References: <cm7cun3pymf6quqcupreoegjj6ycwv3rvbap6ezpvfidvtt4lf@rq74bm7girgz>
 <713c6323-e80e-47fc-9389-520b963a3129@telfort.nl>
 <iio2qnw62rtr5hih47h7m4hyc7glzubqnqonv7n7wjmx2gyljr@lpihqow5qu6n>
In-Reply-To: <iio2qnw62rtr5hih47h7m4hyc7glzubqnqonv7n7wjmx2gyljr@lpihqow5qu6n>

--------------R5Op2SSx3kCYkWb4EjrQyo19
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQpPcCAxMC0wMy0yMDI2IG9tIDE5OjQ5IHNjaHJlZWYgS2FyZWwgWmFrOg0KPiBUaGUgdGFi
bGVzIGFyZSBhIGJldHRlciBzb2x1dGlvbiB0aGFuIHRoZSBsaXN0IGZvciB0cmFuc2xhdG9y
cy4gU2VlDQo+IGRpc2N1c3Npb246DQo+IGh0dHBzOi8vZ2l0aHViLmNvbS91dGlsLWxpbnV4
L3V0aWwtbGludXgvcHVsbC80MDg5DQoNCkl0IHdvdWxkIGhhdmUgYmVlbiBuaWNlIGlmIHRo
ZSBjb21taXQgbWVzc2FnZSBoYWQgaW5jbHVkZWQgdGhlDQptb3RpdmF0aW9uIGZvciB0aGUg
Y2hhbmdlLg0KDQo+IFRoZSBsaXN0IHByb2R1Y2VzIHRoaW5ncyBsaWtlIChwby1tYW4vdXRp
bC1saW51eC1tYW4ucG90KToNCj4gDQo+ICMuIHR5cGU6IGRlbGltaXRlZCBibG9jayBfDQo+
ICM6IC4uL2xpYi90ZXJtaW5hbC1jb2xvcnMuZC41LmFkb2M6MTE1DQo+IG1zZ2lkICIiDQo+
ICJgYCAqXFxhKiBCZWxsIChBU0NJSSA3KWBgIGBgICpcXGIqIEJhY2tzcGFjZSAoQVNDSUkg
OClgYCBgYCAqXFxlKiBFc2NhcGUiDQo+ICIoQVNDSUkgMjcpYGAgYGAgKlxcZiogRm9ybSBm
ZWVkIChBU0NJSSAxMilgYCBgYCAqXFxuKiBOZXdsaW5lIChBU0NJSSAxMClgYCINCj4gImBg
ICpcXHIqIENhcnJpYWdlIFJldHVybiAoQVNDSUkgMTMpYGAgYGAgKlxcdCogVGFiIChBU0NJ
SSA5KWBgIGBgICpcXHYqIg0KPiAiVmVydGljYWwgVGFiIChBU0NJSSAxMSlgYCBgYCAqXFw/
KntuYnNwfXtuYnNwfXtuYnNwfURlbGV0ZSAoQVNDSUkgMTI3KWBgIGBgIg0KPiAiKlxcXyog
U3BhY2VgYCBgYCAqXFxcXCogQmFja3NsYXNoIChcXClgYCBgYCAqXFxeKiBDYXJldCAoXilg
YCBgYCAqXFxcXCMqIg0KPiAiSGFzaCBtYXJrICgjKWBgIg0KPiBtc2dzdHIgIiINCg0KQ2Fu
bm90IGBwbzRhYCBiZSB0b2xkIHRvIHB1dCBldmVyeSBsaW5lIG9mIGEgImRlbGltaXRlZCBi
bG9jayIgb250bw0KYSBzZXBhcmF0ZSBsaW5lLCBvciBvdGhlcndpc2UgaW50byBhIHNlcGFy
YXRlIG1zZ2lkPw0KDQoNCj4gVGhlIHRhYmxlIGlzIG1vcmUgcmVhZGFibGU6DQo+IA0KPiAj
LiB0eXBlOiBUYWJsZQ0KPiAjOiAuLi9saWIvdGVybWluYWwtY29sb3JzLmQuNS5hZG9jOjEz
MQ0KPiAjLCBuby13cmFwDQo+IG1zZ2lkICIiDQo+ICJ8MFxuIg0KPiAifHRvIHJlc3RvcmUg
ZGVmYXVsdCBjb2xvclxuIg0KPiAiXG4iDQo+ICJ8MVxuIg0KPiAifGZvciBicmlnaHRlciBj
b2xvcnNcbiINCj4gIlxuIg0KPiBbLi4uXQ0KDQpJbiB0aGUgbXNnaWQsIHllcy4gIEJ1dCBp
biB0aGUgbWFuIHBhZ2UuLi4gaXQgYmVjb21lcyBhIG1vbnN0cm9zaXR5Og0KDQogICAgICAg
IOKUjOKUgOKUgOKUgOKUrOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkA0KICAgICAgICDi
lIIgICDilIIgICAgICAgICAgICAgICAgICAgICAgICAgIOKUgg0KICAgICAgICDilIIwICDi
lIIgdG8gcmVzdG9yZSBkZWZhdWx0IGNvbG9yIOKUgg0KICAgICAgICDilJzilIDilIDilIDi
lLzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCiAgICAgICAg4pSCICAg4pSCICAgICAg
ICAgICAgICAgICAgICAgICAgICDilIINCiAgICAgICAg4pSCMSAg4pSCIGZvciBicmlnaHRl
ciBjb2xvcnMgICAgICDilIINCiAgICAgICAg4pSc4pSA4pSA4pSA4pS84pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSkDQogICAgICAgIOKUgiAgIOKUgiAgICAgICAgICAgICAgICAgICAg
ICAgICAg4pSCDQogICAgICAgIOKUgjQgIOKUgiBmb3IgdW5kZXJsaW5lZCB0ZXh0ICAgICAg
4pSCDQogICAgICAgIOKUnOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
pA0KICAgICAgICA8c25pcD4NCiAgICAgICAg4pSc4pSA4pSA4pSA4pS84pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSkDQogICAgICAgIOKUgiAgIOKUgiAgICAgICAgICAgICAgICAgICAg
ICAgICAg4pSCDQogICAgICAgIOKUgjMzIOKUgiBmb3IgeWVsbG93IChvciBicm93bikgICAg
4pSCDQogICAgICAgIOKUgiAgIOKUgiBmb3JlZ3JvdW5kICAgICAgICAgICAgICAg4pSCDQog
ICAgICAgIOKUnOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KICAg
ICAgICA8c25pcD4NCg0KKlR3byB0aGlyZHMqIG9mIHRoZSB0YWJsZSBhcmUgbGluZXMgYW5k
IGVtcHR5IHNwYWNlLCBhbmQgb25seSBvbmUNCnRoaXJkIGNvbnRhaW5zIGluZm9ybWF0aW9u
LiAgUGx1czogdGhlIHRhYmxlIHVzZXMgbGVzcyB0aGFuIGhhbGYNCnRoZSBhdmFpbGFibGUg
d2lkdGggb2YgdGhlIG1hbiBwYWdlLCBtZWFuaW5nIHRoYXQgc29tZSBkZXNjcmlwdGlvbnMN
CmdldCB1bm5lY2Vzc2FyaWx5IHdyYXBwZWQuICBUaGUgd2hvbGUgaW1wcmVzc2lvbiBpcyBo
b3JyaWJsZSAtLSBhDQp0eXBvZ3JhaGljYWxseS1taW5kZWQgcGVyc29uIHdvdWxkIGJlIGJh
bmdpbmcgaGlzIGhlYWQgYWdhaW5zdCB0aGUNCmtleWJvYXJkIGluIGZydXN0cmF0aW9uLiAg
OiggIFRoaXMgaG9ycmlibGUgbG9vayB3YXMgdGhlIHJlYXNvbiB0bw0KcmVzdG9yZSB0aGUg
bGlzdCBmb3JtIGFzIGl0IGV4aXN0ZWQgYmVmb3JlIHRoZSBjaGFuZ2UgdG8gYXNjaWlkb2Mu
DQoNCg0KQmVubm8NCg0K

--------------R5Op2SSx3kCYkWb4EjrQyo19--

--------------EjjUQDTKvbWQ0wQtAYq3ev0M
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEFo5vQpe/16ea/USWUUu+Lrjhlh8FAmmy3O4FAwAAAAAACgkQUUu+Lrjhlh8y
/g//ZkvGcZmk09GS4FnEeWBJp/VIpaggYb6oLVNAvOUe90bppk3u4uZag5GZEtXvcNHsBFXTYyUd
9VlQfOnIerqLiRZO0oI4Od9AdlqT/Loz+k7ax3zKBbhqgRDjRgMQmrcHUn36QuFwSAezwyZ4gIRo
JFx3qBHjE1H4cLZIcYqH3AVS62C0Md5pOTHKHoXTGBWDna1nzLiSxYLnNr5bujo47paG1QTT4VKC
2di1CPDiz2gxGGv66Jd20+O6E+ldjQeYJBOF/6vPRvERdIAnAoj99Vqklz/1L6JHJh6Dy/kSOiyx
0eUQ7DRSmz/W4qmPDEZnqmjh6cPQqb/tpt1qGDK6yexEM6Lxxi5/+fFheVCqXwP2afGo1Tw9A9AX
Obb1eLWPgRE0hyP/oI7oGuXnW/XahrLLC/0oVWKYr55YUbgf2+UMh7CSsmJyntnqNaOUsmGIkmC0
/aNIvKaVGk1mrKHjTb9JKGzW6L9BdTyTPgUeBfxxqEWmXi9pmKaowEi0UsDYbQqSaeKkXdylyB19
bDC6OvcNSkC46xUgxICn1K1D569ZxgMaNWCbQoz3sk90m16D3A+NAronF9LZaCdtXC5L/CLPrUgr
CE56t+HgBZjvbIP9EZIgyahsEV9pbA4MD2LY3lZU6IyFzVEbqDbP5EqLWkva8hwe4Nk5/CXnbTDa
Noc=
=rfAn
-----END PGP SIGNATURE-----

--------------EjjUQDTKvbWQ0wQtAYq3ev0M--

