Return-Path: <util-linux+bounces-116-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E9087DC68
	for <lists+util-linux@lfdr.de>; Sun, 17 Mar 2024 07:18:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B40E1F21521
	for <lists+util-linux@lfdr.de>; Sun, 17 Mar 2024 06:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E470D847A;
	Sun, 17 Mar 2024 06:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="PRKdmqLl"
X-Original-To: util-linux@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4512F4A
	for <util-linux@vger.kernel.org>; Sun, 17 Mar 2024 06:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710656311; cv=none; b=murZqKy5ryTQTkpUdL1PSCMLWpyrHpH4hrHX/opsxzEb6smNeGi8AGzNRxYvO0WiJNpylL2nw4RzO18d8VgDUH7ZGy/C+BjQcilrvzxcSmzI69uAAhSDGX3EVPSeC+fjIl1tTXrrful4SEvK8jMnUUe7HJv2abxgu4YKWtiRHes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710656311; c=relaxed/simple;
	bh=pj9nSqraAKwVPXwoU7QOTvXSDksiUZqp+SZruK7OVLU=;
	h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To; b=caXB7RcZkbu7OaTbGiPHxatRtf6gFqZcuFsl+IAZI2ld5L3B7BxjebGMlj5qrKc9q5Vjc90qnJBY7ULsywkgf//tpiPG71OsLPSFQdV6gd6z6R9fxYCLZyEN3tHxeA5gS0aM/5XuiMzbZANNEZTjtpzd0IyDKTOPB179TQCaAos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=PRKdmqLl; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id CB7203C00E420;
	Sat, 16 Mar 2024 23:10:51 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id Qm09HQrSh4mP; Sat, 16 Mar 2024 23:10:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id DFB353C00D400;
	Sat, 16 Mar 2024 23:10:50 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu DFB353C00D400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1710655850;
	bh=pj9nSqraAKwVPXwoU7QOTvXSDksiUZqp+SZruK7OVLU=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=PRKdmqLl+IXsptNdkGryMD6yCXeXI35sLztr1+Aw58X6lZ8fun7YjgoXeGu+gPp3Q
	 KcKcK5+sPCPo8FEoMn2jBuvwQcTuWwk2pVTqaS1kPAI7X/1JBMFc3PGKKhkZSN5Yfr
	 jVBHiT+HNZ51iEdH9KBfJ6lYhVIRjfXjULaYae2Brh4mW4xqarOxA3r04SwoVibb8K
	 C45YFC3HdhwT3EcPIcHdS5Zuy6AxctBdJkGyEidv5GxAyEtpbXu4aDNlI4upLJ2pPc
	 VYPyhSfYVx/rhea52e4be0P2pZPYHRJcXRNqohkrgk3EoaagKgHKpj8SzebX42GDCI
	 AJr/ik8WFHSDQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id 8FuNfr-1AREu; Sat, 16 Mar 2024 23:10:50 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id B13C63C00E420;
	Sat, 16 Mar 2024 23:10:50 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------Fjyg79VQ0mbfEzMKwmPiE07B"
Message-ID: <c5622a1c-b59e-4eb3-9d81-111acc1fbddc@cs.ucla.edu>
Date: Sat, 16 Mar 2024 23:10:50 -0700
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: bug#69532: mv's new -x option should be made orthogonal to
 -t/-T/default
To: =?UTF-8?Q?P=C3=A1draig_Brady?= <P@draigBrady.com>
Cc: 69532@debbugs.gnu.org, Petr Malat <oss@malat.biz>,
 Rob Landley <rob@landley.net>, util-linux <util-linux@vger.kernel.org>,
 Dominique Martinet <asmadeus@codewreck.org>, Karel Zak <kzak@redhat.com>
References: <10c814a7-cb68-4fb4-ad8d-f88f286fb0b1@cs.ucla.edu>
 <58281f96-f9c6-4567-e3c9-c6a6cfa6ce27@draigBrady.com>
 <ZeZqzB4-OzHYfFeQ@codewreck.org>
 <5914e8b2-48ac-456b-9753-6a7bae7a9bbb@cs.ucla.edu>
 <636f1247-0de0-2f32-cb04-f6952b6807aa@draigBrady.com>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <636f1247-0de0-2f32-cb04-f6952b6807aa@draigBrady.com>

This is a multi-part message in MIME format.
--------------Fjyg79VQ0mbfEzMKwmPiE07B
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2024-03-05 06:16, P=C3=A1draig Brady wrote:
> I think I'll remove the as yet unreleased mv --swap from coreutils,=20
> given that
> util-linux is as widely available as coreutils on GNU/Linux platforms.

Although removing that "mv --swap" implementation was a win, I don't=20
think we can simply delegate this to util-linux's exch command.=20
Exchanging files via a renameat-like call is not limited to the Linux=20
kernel; it's also possible on macOS via renameatx_np with RENAME_SWAP,=20
and there have been noises about adding similar things to other=20
operating systems.

I just now added support for macOS renameatx_np to Gnulib, so coreutils=20
does not need to worry about the macOS details; it can simply use=20
renameatu with the Linux flags. See:

https://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=3Daf32ee824ee1825=
5839f9812b8ed61aa5257a82b

Even with Linux it's dicey. People may have older util-linux installed=20
and so lack the 'exch' utility; this is true for both Fedora 39 and=20
Ubuntu 23.10, the current releases. Ubuntu is also odd in that it=20
doesn't install all the util-linux utilities as part of the util-linux=20
package, so it's not clear what they will do with 'exch'.

So I propose that we implement the idea in coreutils in a better way,=20
that interacts more nicely with -t, -T, etc. Also, I suggest using the=20
Linuxish name "--exchange" instead of the macOSish name "--swap", and=20
(for now at least) not giving the option a single-letter equivalent as I=20
expect it to be useful from scripts, not interactively.

After looking at various ways to do it I came up with the attached=20
proposed patch. This should work on both GNU/Linux and macOS, if your OS=20
is recent enough and the file system supports atomic exchange.
--------------Fjyg79VQ0mbfEzMKwmPiE07B
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-mv-new-option-exchange.patch"
Content-Disposition: attachment; filename="0001-mv-new-option-exchange.patch"
Content-Transfer-Encoding: base64

RnJvbSBkNTIyYWJhMDYxMDdkMzUzMmFkNjEwMzQ3MDcyN2JmOTA1N2Y4ZDJjIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBTYXQsIDE2IE1hciAyMDI0IDIyOjUwOjE3IC0wNzAwClN1YmplY3Q6IFtQQVRD
SF0gbXY6IG5ldyBvcHRpb24gLS1leGNoYW5nZQoKKiBzcmMvY29weS5oIChzdHJ1Y3QgY3Bf
b3B0aW9ucyk6IE5ldyBtZW1iZXIgJ2V4Y2hhbmdlJy4KKiBzcmMvY29weS5jIChjb3B5X2lu
dGVybmFsKTogU3VwcG9ydCB0aGUgbmV3IG1lbWJlci4KKiBzcmMvbXYuYyAoRVhDSEFOR0Vf
T1BUSU9OKTogTmV3IGNvbnN0YW50LgoobG9uZ19vcHRpb25zKTogQWRkIC0tZXhjaGFuZ2Uu
Cih1c2FnZSk6IERvY3VtZW50IC0tZXhjaGFuZ2UuCihtYWluKTogU3VwcG9ydCAtLWV4Y2hh
bmdlLgoqIHRlc3RzL212L212LWV4Y2hhbmdlLnNoOiBOZXcgdGVzdCBjYXNlLgoqIHRlc3Rz
L2xvY2FsLm1rIChhbGxfdGVzdHMpOiBBZGQgaXQuCi0tLQogTkVXUyAgICAgICAgICAgICAg
ICAgICAgfCAgNyArKysrKysKIGRvYy9jb3JldXRpbHMudGV4aSAgICAgIHwgMTggKysrKysr
KysrKysrKysKIHNyYy9jb3B5LmMgICAgICAgICAgICAgIHwgNTQgKysrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIHNyYy9jb3B5LmggICAgICAgICAgICAgIHwg
IDQgKysrCiBzcmMvbXYuYyAgICAgICAgICAgICAgICB8IDE2ICsrKysrKysrKy0tLQogdGVz
dHMvbG9jYWwubWsgICAgICAgICAgfCAgMSArCiB0ZXN0cy9tdi9tdi1leGNoYW5nZS5zaCB8
IDQxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDcgZmlsZXMgY2hhbmdlZCwg
MTE0IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNzU1
IHRlc3RzL212L212LWV4Y2hhbmdlLnNoCgpkaWZmIC0tZ2l0IGEvTkVXUyBiL05FV1MKaW5k
ZXggZjIxZWZjN2MwLi42N2JiMjdlYmIgMTAwNjQ0Ci0tLSBhL05FV1MKKysrIGIvTkVXUwpA
QCAtODEsNiArODEsMTMgQEAgR05VIGNvcmV1dGlscyBORVdTICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLSotIG91dGxpbmUgLSotCiAgIGFuZCB0aGUgY29tbWFuZCBl
eGl0cyB3aXRoIGZhaWx1cmUgc3RhdHVzIGlmIGV4aXN0aW5nIGZpbGVzLgogICBUaGUgLW4s
LS1uby1jbG9iYmVyIG9wdGlvbiBpcyBiZXN0IGF2b2lkZWQgZHVlIHRvIHBsYXRmb3JtIGRp
ZmZlcmVuY2VzLgogCisgIG12IG5vdyBhY2NlcHRzIGFuIC0tZXhjaGFuZ2Ugb3B0aW9uLCB3
aGljaCBjYXVzZXMgdGhlIHNvdXJjZSBhbmQKKyAgZGVzdGluYXRpb24gdG8gYmUgZXhjaGFu
Z2VkLiAgSXQgc2hvdWxkIGJlIGNvbWJpbmVkIHdpdGgKKyAgLS1uby10YXJnZXQtZGlyZWN0
b3J5ICgtVCkgaWYgdGhlIGRlc3RpbmF0aW9uIGlzIGEgZGlyZWN0b3J5LgorICBUaGUgZXhj
aGFuZ2UgaXMgYXRvbWljIGlmIHNvdXJjZSBhbmQgZGVzdGluYXRpb24gYXJlIG9uIGEgc2lu
Z2xlCisgIGZpbGUgc3lzdGVtIHRoYXQgc3VwcG9ydHMgYXRvbWljIGV4Y2hhbmdlOyAtLWV4
Y2hhbmdlIGlzIG5vdCB5ZXQKKyAgc3VwcG9ydGVkIGluIG90aGVyIHNpdHVhdGlvbnMuCisK
ICAgb2Qgbm93IHN1cHBvcnRzIHByaW50aW5nIElFRUUgaGFsZiBwcmVjaXNpb24gZmxvYXRp
bmcgcG9pbnQgd2l0aCAtdCBmSCwKICAgb3IgYnJhaW4gMTYgYml0IGZsb2F0aW5nIHBvaW50
IHdpdGggLXQgZkIsIHdoZXJlIHN1cHBvcnRlZCBieSB0aGUgY29tcGlsZXIuCiAKZGlmZiAt
LWdpdCBhL2RvYy9jb3JldXRpbHMudGV4aSBiL2RvYy9jb3JldXRpbHMudGV4aQppbmRleCBk
MDdlZDdlNzYuLmM0NTZhMDNkOSAxMDA2NDQKLS0tIGEvZG9jL2NvcmV1dGlscy50ZXhpCisr
KyBiL2RvYy9jb3JldXRpbHMudGV4aQpAQCAtMTAyNjksNiArMTAyNjksMjQgQEAgc2tpcCBl
eGlzdGluZyBmaWxlcyBidXQgbm90IGZhaWwuCiBJZiBhIGZpbGUgY2Fubm90IGJlIHJlbmFt
ZWQgYmVjYXVzZSB0aGUgZGVzdGluYXRpb24gZmlsZSBzeXN0ZW0gZGlmZmVycywKIGZhaWwg
d2l0aCBhIGRpYWdub3N0aWMgaW5zdGVhZCBvZiBjb3B5aW5nIGFuZCB0aGVuIHJlbW92aW5n
IHRoZSBmaWxlLgogCitAaXRlbSAtLWV4Y2hhbmdlCitAb3BpbmRleCAtLWV4Y2hhbmdlCitF
eGNoYW5nZSBzb3VyY2UgYW5kIGRlc3RpbmF0aW9uIGluc3RlYWQgb2YgcmVuYW1pbmcgc291
cmNlIHRvIGRlc3RpbmF0aW9uLgorQm90aCBmaWxlcyBtdXN0IGV4aXN0OyB0aGV5IG5lZWQg
bm90IGJlIHRoZSBzYW1lIHR5cGUuCitUaGUgZXhjaGFuZ2UgaXMgYXRvbWljIGlmIHRoZSBz
b3VyY2UgYW5kIGRlc3RpbmF0aW9uIGFyZSBib3RoIGluIGEKK3NpbmdsZSBmaWxlIHN5c3Rl
bSB0aGF0IHN1cHBvcnRzIGF0b21pYyBleGNoYW5nZTsKK2V4Y2hhbmdlcyBhcmUgbm90IHll
dCBzdXBwb3J0ZWQgaW4gb3RoZXIgc2l0dWF0aW9ucy4KKworVGhpcyBvcHRpb24gY2FuIGJl
IHVzZWQgdG8gcmVwbGFjZSBvbmUgZGlyZWN0b3J5IHdpdGggYW5vdGhlciwgYXRvbWljYWxs
eS4KK1doZW4gdXNlZCB0aGlzIHdheSwgaXQgc2hvdWxkIGJlIGNvbWJpbmVkIHdpdGgKK0Bj
b2Rley0tbm8tdGFyZ2V0LWRpcmVjdG9yeX0gKEBvcHRpb257LVR9KQordG8gYXZvaWQgY29u
ZnVzaW9uIGFib3V0IHRoZSBkZXN0aW5hdGlvbiBsb2NhdGlvbi4KK0Fsc28sIGlmIHRoZSB0
d28gZGlyZWN0b3JpZXMgbWlnaHQgbm90IGJlIG9uIHRoZSBzYW1lIGZpbGUgc3lzdGVtLAor
dXNpbmcgQGNvZGV7LS1uby1jb3B5fSB3aWxsIHByZXZlbnQgZnV0dXJlCit2ZXJzaW9ucyBv
ZiBAY29tbWFuZHttdn0gZnJvbSBpbXBsZW1lbnRpbmcgdGhlIGV4Y2hhbmdlIGJ5IGNvcHlp
bmcuCitGb3IgZXhhbXBsZSwgeW91IG1pZ2h0IHVzZSBAc2FtcHttdiAtVCAtLWV4Y2hhbmdl
IC0tbm8tY29weQorQHZhcntkMX0gQHZhcntkMn19IHRvIGV4Y2hhbmdlIHRoZSBkaXJlY3Rv
cmllcyBAdmFye2QxfSBhbmQgQHZhcntkMn0uCisKIEBpdGVtIC11CiBAaXRlbXggLS11cGRh
dGUKIEBvcGluZGV4IC11CmRpZmYgLS1naXQgYS9zcmMvY29weS5jIGIvc3JjL2NvcHkuYwpp
bmRleCA4ZDk5Zjg1NjIuLmU3YmY2MDIyZiAxMDA2NDQKLS0tIGEvc3JjL2NvcHkuYworKysg
Yi9zcmMvY29weS5jCkBAIC0yMjIzLDkgKzIyMjMsMTEgQEAgY29weV9pbnRlcm5hbCAoY2hh
ciBjb25zdCAqc3JjX25hbWUsIGNoYXIgY29uc3QgKmRzdF9uYW1lLAogICAgIHsKICAgICAg
IGlmIChyZW5hbWVfZXJybm8gPCAwKQogICAgICAgICByZW5hbWVfZXJybm8gPSAocmVuYW1l
YXR1IChBVF9GRENXRCwgc3JjX25hbWUsIGRzdF9kaXJmZCwgZHJlbG5hbWUsCi0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJFTkFNRV9OT1JFUExBQ0UpCisgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICh4LT5leGNoYW5nZQorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPyBSRU5BTUVfRVhDSEFOR0UgOiBSRU5BTUVfTk9S
RVBMQUNFKSkKICAgICAgICAgICAgICAgICAgICAgICAgID8gZXJybm8gOiAwKTsKLSAgICAg
IG5vbmV4aXN0ZW50X2RzdCA9ICpyZW5hbWVfc3VjY2VlZGVkID0gcmVuYW1lX2Vycm5vID09
IDA7CisgICAgICAqcmVuYW1lX3N1Y2NlZWRlZCA9IHJlbmFtZV9lcnJubyA9PSAwOworICAg
ICAgbm9uZXhpc3RlbnRfZHN0ID0gKnJlbmFtZV9zdWNjZWVkZWQgJiYgIXgtPmV4Y2hhbmdl
OwogICAgIH0KIAogICBpZiAocmVuYW1lX2Vycm5vID09IDAKQEAgLTIyNDYsNyArMjI0OCw3
IEBAIGNvcHlfaW50ZXJuYWwgKGNoYXIgY29uc3QgKnNyY19uYW1lLCBjaGFyIGNvbnN0ICpk
c3RfbmFtZSwKIAogICAgICAgc3JjX21vZGUgPSBzcmNfc2Iuc3RfbW9kZTsKIAotICAgICAg
aWYgKFNfSVNESVIgKHNyY19tb2RlKSAmJiAheC0+cmVjdXJzaXZlKQorICAgICAgaWYgKFNf
SVNESVIgKHNyY19tb2RlKSAmJiAheC0+cmVjdXJzaXZlICYmICF4LT5leGNoYW5nZSkKICAg
ICAgICAgewogICAgICAgICAgIGVycm9yICgwLCAwLCAhIHgtPmluc3RhbGxfbW9kZSAvKiBj
cCAqLwogICAgICAgICAgICAgICAgICA/IF8oIi1yIG5vdCBzcGVjaWZpZWQ7IG9taXR0aW5n
IGRpcmVjdG9yeSAlcyIpCkBAIC0yMjg5LDcgKzIyOTEsNyBAQCBjb3B5X2ludGVybmFsIChj
aGFyIGNvbnN0ICpzcmNfbmFtZSwgY2hhciBjb25zdCAqZHN0X25hbWUsCiAgICAgIHRyZWF0
ZWQgdGhlIHNhbWUgYXMgbm9uZXhpc3RlbnQgZmlsZXMuICAqLwogICBib29sIG5ld19kc3Qg
PSAwIDwgbm9uZXhpc3RlbnRfZHN0OwogCi0gIGlmICghIG5ld19kc3QpCisgIGlmICghIG5l
d19kc3QgJiYgISB4LT5leGNoYW5nZSkKICAgICB7CiAgICAgICAvKiBOb3JtYWxseSwgZmls
bCBpbiBEU1RfU0Igb3Igc2V0IE5FV19EU1Qgc28gdGhhdCBsYXRlciBjb2RlCiAgICAgICAg
ICBjYW4gdXNlIERTVF9TQiBpZiBORVdfRFNUIGlzIGZhbHNlLiAgSG93ZXZlciwgZG9uJ3Qg
Ym90aGVyCkBAIC0yNjU3LDcgKzI2NTksNyBAQCBza2lwOgogICAgICBBbHNvLCB3aXRoIC0t
cmVjdXJzaXZlLCByZWNvcmQgZGV2L2lubyBvZiBlYWNoIGNvbW1hbmQtbGluZSBkaXJlY3Rv
cnkuCiAgICAgIFdlJ2xsIHVzZSB0aGF0IGluZm8gdG8gZGV0ZWN0IHRoaXMgcHJvYmxlbTog
Y3AgLVIgZGlyIGRpci4gICovCiAKLSAgaWYgKHJlbmFtZV9lcnJubyA9PSAwKQorICBpZiAo
cmVuYW1lX2Vycm5vID09IDAgfHwgeC0+ZXhjaGFuZ2UpCiAgICAgZWFybGllcl9maWxlID0g
bnVsbHB0cjsKICAgZWxzZSBpZiAoeC0+cmVjdXJzaXZlICYmIFNfSVNESVIgKHNyY19tb2Rl
KSkKICAgICB7CkBAIC0yNzUyLDcgKzI3NTQsNyBAQCBza2lwOgogCiAgIGlmICh4LT5tb3Zl
X21vZGUpCiAgICAgewotICAgICAgaWYgKHJlbmFtZV9lcnJubyA9PSBFRVhJU1QpCisgICAg
ICBpZiAocmVuYW1lX2Vycm5vID09IEVFWElTVCAmJiAheC0+ZXhjaGFuZ2UpCiAgICAgICAg
IHJlbmFtZV9lcnJubyA9IChyZW5hbWVhdCAoQVRfRkRDV0QsIHNyY19uYW1lLCBkc3RfZGly
ZmQsIGRyZWxuYW1lKSA9PSAwCiAgICAgICAgICAgICAgICAgICAgICAgICA/IDAgOiBlcnJu
byk7CiAKQEAgLTI3ODEsNyArMjc4Myw3IEBAIHNraXA6CiAgICAgICAgICAgICAgICAgIF9k
ZXN0aW5hdGlvbl8gZGV2L2lubywgc2luY2UgdGhlIHJlbmFtZSBhYm92ZSBjYW4ndCBoYXZl
CiAgICAgICAgICAgICAgICAgIGNoYW5nZWQgdGhvc2UsIGFuZCAnbXYnIGFsd2F5cyB1c2Vz
IGxzdGF0LgogICAgICAgICAgICAgICAgICBXZSBjb3VsZCBsaW1pdCBpdCBmdXJ0aGVyIGJ5
IG9wZXJhdGluZwotICAgICAgICAgICAgICAgICBvbmx5IG9uIG5vbi1kaXJlY3Rvcmllcy4g
ICovCisgICAgICAgICAgICAgICAgIG9ubHkgb24gbm9uLWRpcmVjdG9yaWVzIHdoZW4gIXgt
PmV4Y2hhbmdlLiAgKi8KICAgICAgICAgICAgICAgcmVjb3JkX2ZpbGUgKHgtPmRlc3RfaW5m
bywgZHN0X3JlbG5hbWUsICZzcmNfc2IpOwogICAgICAgICAgICAgfQogCkBAIC0yODI4LDcg
KzI4MzAsNyBAQCBza2lwOgogICAgICAgICAgd2hlcmUgeW91J2QgcmVwbGFjZSAnMTgnIHdp
dGggdGhlIGludGVnZXIgaW4gcGFyZW50aGVzZXMgdGhhdAogICAgICAgICAgd2FzIG91dHB1
dCBmcm9tIHRoZSBwZXJsIG9uZS1saW5lciBhYm92ZS4KICAgICAgICAgIElmIG5lY2Vzc2Fy
eSwgb2YgY291cnNlLCBjaGFuZ2UgJy90bXAnIHRvIHNvbWUgb3RoZXIgZGlyZWN0b3J5LiAg
Ki8KLSAgICAgIGlmIChyZW5hbWVfZXJybm8gIT0gRVhERVYgfHwgeC0+bm9fY29weSkKKyAg
ICAgIGlmIChyZW5hbWVfZXJybm8gIT0gRVhERVYgfHwgeC0+bm9fY29weSB8fCB4LT5leGNo
YW5nZSkKICAgICAgICAgewogICAgICAgICAgIC8qIFRoZXJlIGFyZSBtYW55IHdheXMgdGhp
cyBjYW4gaGFwcGVuIGR1ZSB0byBhIHJhY2UgY29uZGl0aW9uLgogICAgICAgICAgICAgIFdo
ZW4gc29tZXRoaW5nIGhhcHBlbnMgYmV0d2VlbiB0aGUgaW5pdGlhbCBmb2xsb3dfZnN0YXRh
dCBhbmQgdGhlCkBAIC0yODQxLDI1ICsyODQzLDI5IEBAIHNraXA6CiAgICAgICAgICAgICAg
ZGVzdGluYXRpb24gZmlsZSBhcmUgbWFkZSB0b28gcmVzdHJpY3RpdmUsIHRoZSByZW5hbWUg
d2lsbAogICAgICAgICAgICAgIGZhaWwuICBFdGMuICAqLwogICAgICAgICAgIGNoYXIgY29u
c3QgKnF1b3RlZF9kc3RfbmFtZSA9IHF1b3RlYWZfbiAoMSwgZHN0X25hbWUpOwotICAgICAg
ICAgIHN3aXRjaCAocmVuYW1lX2Vycm5vKQotICAgICAgICAgICAgewotICAgICAgICAgICAg
Y2FzZSBFRFFVT1Q6IGNhc2UgRUVYSVNUOiBjYXNlIEVJU0RJUjogY2FzZSBFTUxJTks6Ci0g
ICAgICAgICAgICBjYXNlIEVOT1NQQzogY2FzZSBFVFhUQlNZOgorICAgICAgICAgIGlmICh4
LT5leGNoYW5nZSkKKyAgICAgICAgICAgIGVycm9yICgwLCByZW5hbWVfZXJybm8sIF8oImNh
bm5vdCBleGNoYW5nZSAlcyBhbmQgJXMiKSwKKyAgICAgICAgICAgICAgICAgICBxdW90ZWFm
X24gKDAsIHNyY19uYW1lKSwgcXVvdGVkX2RzdF9uYW1lKTsKKyAgICAgICAgICBlbHNlCisg
ICAgICAgICAgICBzd2l0Y2ggKHJlbmFtZV9lcnJubykKKyAgICAgICAgICAgICAgeworICAg
ICAgICAgICAgICBjYXNlIEVEUVVPVDogY2FzZSBFRVhJU1Q6IGNhc2UgRUlTRElSOiBjYXNl
IEVNTElOSzoKKyAgICAgICAgICAgICAgY2FzZSBFTk9TUEM6IGNhc2UgRVRYVEJTWToKICNp
ZiBFTk9URU1QVFkgIT0gRUVYSVNUCi0gICAgICAgICAgICBjYXNlIEVOT1RFTVBUWToKKyAg
ICAgICAgICAgICAgY2FzZSBFTk9URU1QVFk6CiAjZW5kaWYKLSAgICAgICAgICAgICAgLyog
VGhlIGRlc3RpbmF0aW9uIG11c3QgYmUgdGhlIHByb2JsZW0uICBEb24ndCBtZW50aW9uCi0g
ICAgICAgICAgICAgICAgIHRoZSBzb3VyY2UgYXMgdGhhdCBpcyBtb3JlIGxpa2VseSB0byBj
b25mdXNlIHRoZSB1c2VyCi0gICAgICAgICAgICAgICAgIHRoYW4gYmUgaGVscGZ1bC4gICov
Ci0gICAgICAgICAgICAgIGVycm9yICgwLCByZW5hbWVfZXJybm8sIF8oImNhbm5vdCBvdmVy
d3JpdGUgJXMiKSwKLSAgICAgICAgICAgICAgICAgICAgIHF1b3RlZF9kc3RfbmFtZSk7Ci0g
ICAgICAgICAgICAgIGJyZWFrOworICAgICAgICAgICAgICAgIC8qIFRoZSBkZXN0aW5hdGlv
biBtdXN0IGJlIHRoZSBwcm9ibGVtLiAgRG9uJ3QgbWVudGlvbgorICAgICAgICAgICAgICAg
ICAgIHRoZSBzb3VyY2UgYXMgdGhhdCBpcyBtb3JlIGxpa2VseSB0byBjb25mdXNlIHRoZSB1
c2VyCisgICAgICAgICAgICAgICAgICAgdGhhbiBiZSBoZWxwZnVsLiAgKi8KKyAgICAgICAg
ICAgICAgICBlcnJvciAoMCwgcmVuYW1lX2Vycm5vLCBfKCJjYW5ub3Qgb3ZlcndyaXRlICVz
IiksCisgICAgICAgICAgICAgICAgICAgICAgIHF1b3RlZF9kc3RfbmFtZSk7CisgICAgICAg
ICAgICAgICAgYnJlYWs7CiAKLSAgICAgICAgICAgIGRlZmF1bHQ6Ci0gICAgICAgICAgICAg
IGVycm9yICgwLCByZW5hbWVfZXJybm8sIF8oImNhbm5vdCBtb3ZlICVzIHRvICVzIiksCi0g
ICAgICAgICAgICAgICAgICAgICBxdW90ZWFmX24gKDAsIHNyY19uYW1lKSwgcXVvdGVkX2Rz
dF9uYW1lKTsKLSAgICAgICAgICAgICAgYnJlYWs7Ci0gICAgICAgICAgICB9CisgICAgICAg
ICAgICAgIGRlZmF1bHQ6CisgICAgICAgICAgICAgICAgZXJyb3IgKDAsIHJlbmFtZV9lcnJu
bywgXygiY2Fubm90IG1vdmUgJXMgdG8gJXMiKSwKKyAgICAgICAgICAgICAgICAgICAgICAg
cXVvdGVhZl9uICgwLCBzcmNfbmFtZSksIHF1b3RlZF9kc3RfbmFtZSk7CisgICAgICAgICAg
ICAgICAgYnJlYWs7CisgICAgICAgICAgICAgIH0KICAgICAgICAgICBmb3JnZXRfY3JlYXRl
ZCAoc3JjX3NiLnN0X2lubywgc3JjX3NiLnN0X2Rldik7CiAgICAgICAgICAgcmV0dXJuIGZh
bHNlOwogICAgICAgICB9CmRpZmYgLS1naXQgYS9zcmMvY29weS5oIGIvc3JjL2NvcHkuaApp
bmRleCBkZmE5NDM1YjMuLmFiODljNzVmZCAxMDA2NDQKLS0tIGEvc3JjL2NvcHkuaAorKysg
Yi9zcmMvY29weS5oCkBAIC0xNTUsNiArMTU1LDEwIEBAIHN0cnVjdCBjcF9vcHRpb25zCiAg
ICAgIElmIHRoYXQgZmFpbHMgYW5kIE5PX0NPUFksIGZhaWwgaW5zdGVhZCBvZiBjb3B5aW5n
LiAgKi8KICAgYm9vbCBtb3ZlX21vZGUsIG5vX2NvcHk7CiAKKyAgLyogRXhjaGFuZ2UgaW5z
dGVhZCBvZiByZW5hbWluZy4gIFZhbGlkIG9ubHkgaWYgTU9WRV9NT0RFIGFuZCBpZgorICAg
ICBCQUNLVVBfVFlQRSA9PSBub19iYWNrdXBzLiAgKi8KKyAgYm9vbCBleGNoYW5nZTsKKwog
ICAvKiBJZiB0cnVlLCBpbnN0YWxsKDEpIGlzIHRoZSBjYWxsZXIuICAqLwogICBib29sIGlu
c3RhbGxfbW9kZTsKIApkaWZmIC0tZ2l0IGEvc3JjL212LmMgYi9zcmMvbXYuYwppbmRleCA5
ZGM0MGZlM2UuLjY5Mjk0M2E3MCAxMDA2NDQKLS0tIGEvc3JjL212LmMKKysrIGIvc3JjL212
LmMKQEAgLTQ4LDYgKzQ4LDcgQEAKIGVudW0KIHsKICAgREVCVUdfT1BUSU9OID0gQ0hBUl9N
QVggKyAxLAorICBFWENIQU5HRV9PUFRJT04sCiAgIE5PX0NPUFlfT1BUSU9OLAogICBTVFJJ
UF9UUkFJTElOR19TTEFTSEVTX09QVElPTgogfTsKQEAgLTY3LDYgKzY4LDcgQEAgc3RhdGlj
IHN0cnVjdCBvcHRpb24gY29uc3QgbG9uZ19vcHRpb25zW10gPQogICB7ImJhY2t1cCIsIG9w
dGlvbmFsX2FyZ3VtZW50LCBudWxscHRyLCAnYid9LAogICB7ImNvbnRleHQiLCBub19hcmd1
bWVudCwgbnVsbHB0ciwgJ1onfSwKICAgeyJkZWJ1ZyIsIG5vX2FyZ3VtZW50LCBudWxscHRy
LCBERUJVR19PUFRJT059LAorICB7ImV4Y2hhbmdlIiwgbm9fYXJndW1lbnQsIG51bGxwdHIs
IEVYQ0hBTkdFX09QVElPTn0sCiAgIHsiZm9yY2UiLCBub19hcmd1bWVudCwgbnVsbHB0ciwg
J2YnfSwKICAgeyJpbnRlcmFjdGl2ZSIsIG5vX2FyZ3VtZW50LCBudWxscHRyLCAnaSd9LAog
ICB7Im5vLWNsb2JiZXIiLCBub19hcmd1bWVudCwgbnVsbHB0ciwgJ24nfSwgICAvKiBEZXBy
ZWNhdGVkLiAgKi8KQEAgLTI3MSw2ICsyNzMsOSBAQCBSZW5hbWUgU09VUkNFIHRvIERFU1Qs
IG9yIG1vdmUgU09VUkNFKHMpIHRvIERJUkVDVE9SWS5cblwKICIpLCBzdGRvdXQpOwogICAg
ICAgZnB1dHMgKF8oIlwKICAgICAgIC0tZGVidWcgICAgICAgICAgICAgICAgICBleHBsYWlu
IGhvdyBhIGZpbGUgaXMgY29waWVkLiAgSW1wbGllcyAtdlxuXAorIiksIHN0ZG91dCk7Cisg
ICAgICBmcHV0cyAoXygiXAorICAgICAgLS1leGNoYW5nZSAgICAgICAgICAgICAgIGV4Y2hh
bmdlIHNvdXJjZSBhbmQgZGVzdGluYXRpb25cblwKICIpLCBzdGRvdXQpOwogICAgICAgZnB1
dHMgKF8oIlwKICAgLWYsIC0tZm9yY2UgICAgICAgICAgICAgICAgICBkbyBub3QgcHJvbXB0
IGJlZm9yZSBvdmVyd3JpdGluZ1xuXApAQCAtMzYxLDYgKzM2Niw5IEBAIG1haW4gKGludCBh
cmdjLCBjaGFyICoqYXJndikKICAgICAgICAgY2FzZSBERUJVR19PUFRJT046CiAgICAgICAg
ICAgeC5kZWJ1ZyA9IHgudmVyYm9zZSA9IHRydWU7CiAgICAgICAgICAgYnJlYWs7CisgICAg
ICAgIGNhc2UgRVhDSEFOR0VfT1BUSU9OOgorICAgICAgICAgIHguZXhjaGFuZ2UgPSB0cnVl
OworICAgICAgICAgIGJyZWFrOwogICAgICAgICBjYXNlIE5PX0NPUFlfT1BUSU9OOgogICAg
ICAgICAgIHgubm9fY29weSA9IHRydWU7CiAgICAgICAgICAgYnJlYWs7CkBAIC00NjksNyAr
NDc3LDcgQEAgbWFpbiAoaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogICBlbHNlCiAgICAgewog
ICAgICAgY2hhciBjb25zdCAqbGFzdGZpbGUgPSBmaWxlW25fZmlsZXMgLSAxXTsKLSAgICAg
IGlmIChuX2ZpbGVzID09IDIpCisgICAgICBpZiAobl9maWxlcyA9PSAyICYmICF4LmV4Y2hh
bmdlKQogICAgICAgICB4LnJlbmFtZV9lcnJubyA9IChyZW5hbWVhdHUgKEFUX0ZEQ1dELCBm
aWxlWzBdLCBBVF9GRENXRCwgbGFzdGZpbGUsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgUkVOQU1FX05PUkVQTEFDRSkKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPyBlcnJubyA6IDApOwpAQCAtNTE0LDExICs1MjIsMTMgQEAgbWFpbiAoaW50IGFyZ2Ms
IGNoYXIgKiphcmd2KQogICAgICAgc3RyaXBfdHJhaWxpbmdfc2xhc2hlcyAoZmlsZVtpXSk7
CiAKICAgaWYgKG1ha2VfYmFja3VwcwotICAgICAgJiYgKHguaW50ZXJhY3RpdmUgPT0gSV9B
TFdBWVNfU0tJUAorICAgICAgJiYgKHguZXhjaGFuZ2UKKyAgICAgICAgICB8fCB4LmludGVy
YWN0aXZlID09IElfQUxXQVlTX1NLSVAKICAgICAgICAgICB8fCB4LmludGVyYWN0aXZlID09
IElfQUxXQVlTX05PKSkKICAgICB7CiAgICAgICBlcnJvciAoMCwgMCwKLSAgICAgICAgICAg
ICBfKCItLWJhY2t1cCBpcyBtdXR1YWxseSBleGNsdXNpdmUgd2l0aCAtbiBvciAtLXVwZGF0
ZT1ub25lLWZhaWwiKSk7CisgICAgICAgICAgICAgXygiY2Fubm90IGNvbWJpbmUgLS1iYWNr
dXAgd2l0aCAiCisgICAgICAgICAgICAgICAiLS1leGNoYW5nZSwgLW4sIG9yIC0tdXBkYXRl
PW5vbmUtZmFpbCIpKTsKICAgICAgIHVzYWdlIChFWElUX0ZBSUxVUkUpOwogICAgIH0KIApk
aWZmIC0tZ2l0IGEvdGVzdHMvbG9jYWwubWsgYi90ZXN0cy9sb2NhbC5tawppbmRleCA3Y2Qx
ZWY3YjUuLmYwYWMwMzg2ZiAxMDA2NDQKLS0tIGEvdGVzdHMvbG9jYWwubWsKKysrIGIvdGVz
dHMvbG9jYWwubWsKQEAgLTY5OCw2ICs2OTgsNyBAQCBhbGxfdGVzdHMgPQkJCQkJXAogICB0
ZXN0cy9tdi9pbnRvLXNlbGYtMy5zaAkJCVwKICAgdGVzdHMvbXYvaW50by1zZWxmLTQuc2gJ
CQlcCiAgIHRlc3RzL212L2xlYWstZmQuc2gJCQkJXAorICB0ZXN0cy9tdi9tdi1leGNoYW5n
ZS5zaAkJCVwKICAgdGVzdHMvbXYvbXYtbi5zaAkJCQlcCiAgIHRlc3RzL212L212LXNwZWNp
YWwtMS5zaAkJCVwKICAgdGVzdHMvbXYvbm8tY29weS5zaAkJCQlcCmRpZmYgLS1naXQgYS90
ZXN0cy9tdi9tdi1leGNoYW5nZS5zaCBiL3Rlc3RzL212L212LWV4Y2hhbmdlLnNoCm5ldyBm
aWxlIG1vZGUgMTAwNzU1CmluZGV4IDAwMDAwMDAwMC4uNDg1NDAzYTFkCi0tLSAvZGV2L251
bGwKKysrIGIvdGVzdHMvbXYvbXYtZXhjaGFuZ2Uuc2gKQEAgLTAsMCArMSw0MSBAQAorIyEv
YmluL3NoCisjIFRlc3QgbXYgLS1leGNoYW5nZS4KKworIyBDb3B5cmlnaHQgKEMpIDIwMjQg
RnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLCBJbmMuCisKKyMgVGhpcyBwcm9ncmFtIGlzIGZy
ZWUgc29mdHdhcmU6IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKKyMg
aXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBh
cyBwdWJsaXNoZWQgYnkKKyMgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbiwgZWl0aGVy
IHZlcnNpb24gMyBvZiB0aGUgTGljZW5zZSwgb3IKKyMgKGF0IHlvdXIgb3B0aW9uKSBhbnkg
bGF0ZXIgdmVyc2lvbi4KKworIyBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQgaW4gdGhl
IGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwKKyMgYnV0IFdJVEhPVVQgQU5ZIFdBUlJB
TlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKKyMgTUVSQ0hBTlRB
QklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQor
IyBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgorCisjIFlv
dSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1Ymxp
YyBMaWNlbnNlCisjIGFsb25nIHdpdGggdGhpcyBwcm9ncmFtLiAgSWYgbm90LCBzZWUgPGh0
dHBzOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KKworLiAiJHtzcmNkaXI9Ln0vdGVzdHMv
aW5pdC5zaCI7IHBhdGhfcHJlcGVuZF8gLi9zcmMKK3ByaW50X3Zlcl8gbXYKKworCisjIFRl
c3QgZXhjaGFuZ2luZyBmaWxlcy4KK3RvdWNoIGEgfHwgZnJhbWV3b3JrX2ZhaWx1cmVfCitt
a2RpciBiIHx8IGZyYW1ld29ya19mYWlsdXJlXworaWYgISBtdiAtVCAtLWV4Y2hhbmdlIGEg
YiAyPmV4Y2hhbmdlX2VycjsgdGhlbgorICBncmVwICdub3Qgc3VwcG9ydGVkJyBleGNoYW5n
ZV9lcnIgfHwgeyBjYXQgZXhjaGFuZ2VfZXJyOyBmYWlsPTE7IH0KK2Vsc2UKKyAgdGVzdCAt
ZCBhIHx8IGZhaWw9MQorICB0ZXN0IC1mIGIgfHwgZmFpbD0xCitmaQorCisjIFRlc3Qgd3Jv
bmcgbnVtYmVyIG9mIGFyZ3VtZW50cy4KK3RvdWNoIGMgfHwgZnJhbWV3b3JrX2ZhaWx1cmVf
CityZXR1cm5zXyAxIG12IC0tZXhjaGFuZ2UgYSAyPi9kZXYvbnVsbCB8fCBmYWlsPTEKK3Jl
dHVybnNfIDEgbXYgLS1leGNoYW5nZSBhIGIgYyAyPi9kZXYvbnVsbCB8fCBmYWlsPTEKKwor
IyBCb3RoIGZpbGVzIG11c3QgZXhpc3QuCityZXR1cm5zXyAxIG12IC0tZXhjaGFuZ2UgYSBk
IDI+L2Rldi9udWxsIHx8IGZhaWw9MQorCitFeGl0ICRmYWlsCi0tIAoyLjQwLjEKCg==

--------------Fjyg79VQ0mbfEzMKwmPiE07B--

