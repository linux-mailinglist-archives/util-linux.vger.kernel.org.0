Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0A7057B10C
	for <lists+util-linux@lfdr.de>; Tue, 30 Jul 2019 20:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727529AbfG3SAL (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 30 Jul 2019 14:00:11 -0400
Received: from vie01a-dmta-pe06-2.mx.upcmail.net ([84.116.36.15]:37627 "EHLO
        vie01a-dmta-pe06-2.mx.upcmail.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727461AbfG3SAK (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Tue, 30 Jul 2019 14:00:10 -0400
Received: from [172.31.216.234] (helo=vie01a-pemc-psmtp-pe11.mail.upcmail.net)
        by vie01a-dmta-pe06.mx.upcmail.net with esmtp (Exim 4.92)
        (envelope-from <petr.pisar@atlas.cz>)
        id 1hsWPw-00019L-Dm
        for util-linux@vger.kernel.org; Tue, 30 Jul 2019 20:00:08 +0200
Received: from router.bayer.uni.cx ([89.103.167.90])
        by vie01a-pemc-psmtp-pe11.mail.upcmail.net with ESMTP
        id sWPvhhzxQEZz0sWPwhF1HY; Tue, 30 Jul 2019 20:00:08 +0200
X-Env-Mailfrom: petr.pisar@atlas.cz
X-Env-Rcptto: util-linux@vger.kernel.org
X-SourceIP: 89.103.167.90
X-CNFS-Analysis: v=2.3 cv=E8KzWpVl c=1 sm=1 tr=0
 a=PynCJzRKXLGVNAqAubg0rQ==:117 a=PynCJzRKXLGVNAqAubg0rQ==:17
 a=xqWC_Br6kY4A:10 a=0o9FgrsRnhwA:10 a=QsLJN3Opg0wdKb1uFXMA:9
 a=CjuIK1q_8ugA:10 a=NaPLPI0K_Ju1wWWZ8pMA:9 a=FfaGCDsud1wA:10
Received: from album.bayer.uni.cx (album.bayer.uni.cx [IPv6:2002:5967:a75a:1:5246:5dff:fe8e:a186])
        by router.bayer.uni.cx (Postfix) with SMTP id 924F5A0953;
        Tue, 30 Jul 2019 20:00:06 +0200 (CEST)
Received: by album.bayer.uni.cx (sSMTP sendmail emulation); Tue, 30 Jul 2019 20:00:06 +0200
Date:   Tue, 30 Jul 2019 20:00:06 +0200
From:   Petr Pisar <petr.pisar@atlas.cz>
To:     util-linux@vger.kernel.org
Cc:     Pavel Polacek <pavel.polacek@ujep.cz>,
        Petr Pisar <petr.pisar@atlas.cz>
Subject: libfdisk refers to kpartx(8) intead of partx(8)
Message-ID: <20190730180006.GA10461@album.bayer.uni.cx>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CMAE-Envelope: MS4wfNu+b5vyRROYPTdpZJ4I5eVfmM+JwlMtrx2Bxa6fL1smp6UvMsBJJO6/l1hhwK34KhREnSgpGqJFbG+EzpuimzkZQesqmT+lvXwi1zi1IPdoOGWX+dYy
 lnX3cjPloZS25GyHdZQE6zg3SUB/ohL3F1u8Y9jfM+iES/BZopIo1VHE8R59jzYD4sPXhX8W+r6ZPGyOc6FQq48KpjDLGS2iVtBKuRpkHoLLPLLvMgCsj1rq
 OfpRVDYfU5IutoJlWeED7A==
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

a Czech tranlatation user noticed that util-linux contains this message:

#: libfdisk/src/context.c:775
msgid ""
"The kernel still uses the old table. The new table will be used at the next "
"reboot or after you run partprobe(8) or kpartx(8)."

that would rather refer to partx(8) instead of kapartx(8).

partx is a util-linux tool documented as `Tell the kernel about the presence
and numbering of on-disk partitions'. kpartx is a third-party tool documented
as `Create device maps from partition tables'.

-- Petr

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABEIAB0WIQRLUoOT5qOw37LvOmQSycXHZ8b6ogUCXUCFoAAKCRASycXHZ8b6
oqiLAQCK4JY86X9LBt9genLfSO7P4aN0ffxfwMkNZW04WIV3fwD/RbVO+4UB6Ak2
z+8d63rIq0g+3TggysSsvWF3Q2IZg+U=
=xiAJ
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--
