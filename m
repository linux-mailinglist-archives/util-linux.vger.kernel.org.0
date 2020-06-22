Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63534203C2A
	for <lists+util-linux@lfdr.de>; Mon, 22 Jun 2020 18:07:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729484AbgFVQHX (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 22 Jun 2020 12:07:23 -0400
Received: from sonic317-32.consmr.mail.ne1.yahoo.com ([66.163.184.43]:45772
        "EHLO sonic317-32.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729260AbgFVQHW (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 22 Jun 2020 12:07:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1592842041; bh=cK2qy9Lv5SAgMg9nAvfVmkJPj46H3ss3vOVyjpHm6Nk=; h=Date:From:Reply-To:Subject:References:From:Subject; b=U1ntpi9qf2wVLCyIBjdiWrvfkD22Jfv4U0BINb7j2D7e2cKqBus0EIcrg6eOZ1SrxPzvJUO3vKIFHKu/q1r6gVq3Ff+mDDDt6o9nnbWEvAj+B8iUaKC/y51jQsfrGTq858pK++sUnfXRP/k2u+bPGCqDg/tdta3p1s4oBNk4eLX2VGg61dg2L/jV+4xVawPfaOisflC0Kx9kaCMYeIDuJGs6C31DyBD8/OLFam4pftsLzyhNm0b8Lh1kUIOVcJh4BJ81wg7Cv0ygCf5AuoTGNI8z1tnX56/az9MPSJCBRAAcsQ+dkjsa/Rn50teGI1Z4Pg6cgEtMjhk0kj2CpEGawQ==
X-YMail-OSG: ohdBNQwVM1kkx9xgWfpnrsRJoDhRZ5o9BKPl7UiIik4Lh2TXpETWNqcOU7_qNaY
 DGgRBfVOQh8Q7GNUCmbFIZK1ApC_Mzm3DvhV86v1H6kIGLhCZSYkgkWAwKcKbreeCsjrPtcNXLbN
 0gTAoZ9vH2fTTWtQOYP9RKvXLX8_m8MU7FJLKuQ5RJqmgEHTmaLzVC7nBqn4PjIllLH_ogJvtJB1
 qpNlizi5RO6Tlo27LWfxUmrA0Bg98FdxhvifUnlFdZAnwuyHvxHYjJC1fRuC0F2xiYsoqZ9hpmS2
 6xWKb1easXzVK5Bi0Ns_4jBz_0Y6zFvmSsUQ9v5zVwbHDqYEYz7rq.8jmtc48n3yTFlnqpe3U2z5
 dJFdU_nF_8JlCX8U63R4uTFuampS3qPBxs6CaYRv81u0hBgB9BkH9XDfa2jASLO57ZYI..xzFxBP
 ivbEOkMLXJkb11siF6dA32xpDXiAQD1c05NOdR9.sZLr.bVmedRCU2cHZR1Ll1zRMPBlQGIMO1DR
 xmsQ6rJ.xZDKxAS1q5FT9_V8rDSxYu.uTCVyigC7EgmDEhJU4zIc1rvki_iSOTLkyhEuPdERbuAO
 rCSt.pqRIYbIfjqOvL9lja_AEJWtBrjiyBEtDzBM3Hgq52hdm3RE4vzqQBTJkN_FY0gnrOxsgM2J
 61btwY3ZEHwvHGZYnfbiOORuCOHV_ByZFfH3nA0.JkZA_zR1yNU1NJU4QNYk8yjYZ47clAHFGYLq
 tPlYDQPGjrMzVFfq7T5Qm5wQt29LRa7DiX1qXMnQ3W0L9NMku96INecEXWcjsxuQcSDqC0xSlvBU
 JyB9gN5ne8g60ttuzOQiH1vi8jKeE4lYmXlWUlfDiFyoPHbDFo_WEEbrt6OgyagjiBEhG5Kw4_am
 XqZR5bFXaF5o5qS_wWNSaLWmu5LMVAw3mZ.dusxgdMSRRxGHMaoLMzHo_c3cRGC72RezHvv5IgmL
 YyZA25gcVocYhFuHEeTVf20wpIuEFGUuw65cNgukNyAE7e_3o5lhyIEpUmCuzVN.Q7rIBQ7kpIw_
 derZy6zzFjODWvhmyxnV3P72U5jd39723WMYlcC9Zn4Huw1jPvpv6LbRbww6_g.XTroAsXbqj2ve
 CBo.IdjcHmMVG.ZOgjUTVmOfz_N0sIaE3LozH.R9O4Fx9Z4KgkYpiPnz4yhIVluQASL8Utu_pAd6
 d3lifQljTIhU0A8t5h3QWiX62NvEJNFmbg77Qpu9QGjCQ.I7LwogB6Ldsc7ICx5jXyaMiEyNHdUZ
 JO6weAqQ6OF7yryMkm6f4lKTEyTqQaQKvITZlpC01g2FPR8EJZNxjYpNYzxVEXROGRfCZbkkiYQ-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.ne1.yahoo.com with HTTP; Mon, 22 Jun 2020 16:07:21 +0000
Date:   Mon, 22 Jun 2020 16:07:18 +0000 (UTC)
From:   Karim Zakari <kariim1960z@gmail.com>
Reply-To: kzakari04@gmail.com
Message-ID: <647018929.1868610.1592842038851@mail.yahoo.com>
Subject: URGENT REPLY.
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <647018929.1868610.1592842038851.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16138 YMailNodin Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36
To:     unlisted-recipients:; (no To-header on input)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org



Good-Day Friend,

 Hope you are doing great Today. I have a proposed business deal worthy (US$16.5 Million Dollars) that will benefit both parties. This is legitimate' legal and your personality will not be compromised.

Waiting for your response for more details, As you are willing to execute this business opportunity with me.

Sincerely Yours,
Mr. Karim Zakari.
