Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 401E6282DD3
	for <lists+util-linux@lfdr.de>; Sun,  4 Oct 2020 23:53:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726398AbgJDVxz (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 4 Oct 2020 17:53:55 -0400
Received: from sonic309-21.consmr.mail.ne1.yahoo.com ([66.163.184.147]:34367
        "EHLO sonic309-21.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726374AbgJDVxz (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 4 Oct 2020 17:53:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1601848434; bh=iV0ffj/9weIZNtPir0IomShFBSBgWHUw+Yr1jX35IZM=; h=Date:From:Reply-To:Subject:References:From:Subject; b=pdjVAfC8uIE2CeDuKAyGMrurPnflBFHQQyvNkeCNUZiGl/lTdqoMdnYCsot+V4g+//gNEXeYH7O/6tD77O85bGK7trCFHbsOUID81wWVJMqqsJ1Q+Ad2WaerkFiq6voGs4SVBDHatonxIufhOYkKNA/rvAPPedKzgJfqvWKjI/i0PqKpRH7KUrC0N0LYF77IRRepQZqKIoQK4DQldNINk0z9IWkbU06SIEqjvcuHkonobQyFIHAQw5VFxAAODaL7OjfLMOfgVyo/sxzjE1Btq72KjCHcmBPlRsaVbrmwRCV8IMcmZvXuHwLznUgT+D8ttj6lAlfY9/bE4KORllpdWA==
X-YMail-OSG: 3awke50VM1k192se2j6LYVqMA.M3k2lBjbbewqmlmrfTBccL5Z.X1jFhFXzZmY9
 dOB9jbaBNWyEaIuGe86SbpCopK6Yyg6FQo3t_jYGmAsdYRd._BgoKfoYGd9onacPSHYmJfAulB48
 WoVKt3_fmPeQZQLvTb0F9mzHO1aU6IJ1P8VOpwcoOaFQ3Yv3Q4LQkZ06IthOwWsfXAE5.PvdnMcT
 5qskS9DNZZwY3dSjFC6m9TQ7lD1K5w6BC1KZCUXdts7nFXt2cR12NYun5_86to4eMG1i6TvtpgKH
 BEK2BVSkTSQVIMkhNlnu0vO6lrIHzrmdxMJ5nzJjT0yxG45bGfp6BLJlfEjPoi7g4qHJfp2BQKRD
 3LVfgglFMgvM0yEOM7xby2j1CyILvlBSfLwLbAs1tOlB7xLkZmZcXPHwXLbrjYYXriH350WsTPzS
 Cpf9JI7YLq5cWxjEAmdLKiJvikbgPqX6iiFVmaDSQAUR9CqlyTT_U3xBeI6BfHpXO91WnG7_4YgZ
 k.3ckQOqFdRaB2eZJ6SpmZVsHh.onsUY73LSaXqYE6dq1zjF6nyD__WlPADgJsXkTFxmlwiIS65n
 _xyIzIh3hq24Ws8gpAhro5Q9HgACKN1ZfrCEYCNIHHL82OANu3dtaMNRyJrao6vcwqd7jGdMlrfk
 1iHrtAmrsrjBj3PmdNwRke9ROSNfib0h1usruD6Dh.KyVGqJvQ7JqqlGQt2.crvtICt7hO8KaM5t
 sUmPlcETuh30ie5uPuSuGpnbSvUE10v_TtHMONBIJfced40RKu4emtfy6F8PfOkfCjSJ6_L_GX_a
 JjQZcHcxMWHzv8xhSKNoh8i5cRm1D8T.sr1BSGKwcdJ3RPmZ5AYOTiMMfeS0yQ9YDqpI1hCozh3Z
 Mo7Nrwvpbo82MxY6n1p0UPjFdZFL2VLR82TBZFPua3VDMrq1ngb.Pis_j68XE9ErGweP_mnYR1hS
 I0w9YNLNiWHNZcQ8jE3UelnSVOoajuP9UjrdPTDHL6dciItx6XjZpUmon7Rp2EvrP2cfozxN1z.7
 QX8EE2ZFJpcCWVWO0EZ4q3LbCvDTZxH0gUOK5gssDUa5ExQBXow8HjrVBHvv5Ej74CAd3IEkzNtA
 mRd.UxM3tUwe6jO2_aM0Y5cT_KVegCMs8V8CUktqqaOomKXRnM7iUQVOL3eX2pPTdTL3T8XDGGxW
 apnbEUYIrY81Y0tKMXo_Vd5qhRmcpvkiD7SUhdUCdpA9lK9frJsuuZtFP.V2WGDyQBsQ7VCGVNBS
 T3k3.kRabH03O0gmergM59r721q3eQem43fl8wz385taHGQGFYpX1NE7qxQPAkC6h2OqS.znEKoZ
 P7jTUjhdAOa.1Jtdoubwr6b31m2gQhCFEqVKVhH3n9XqKXVveQK5pCnQgGa2N2dS55XJcNPJ7nIA
 _Gttwxm2n7oLYaXNB9GtBuYpVjnfDJulwKAlrCEFCKeOzow--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.ne1.yahoo.com with HTTP; Sun, 4 Oct 2020 21:53:54 +0000
Date:   Sun, 4 Oct 2020 21:53:51 +0000 (UTC)
From:   Mrs Marlene Dillon <mailinfo2024@gmail.com>
Reply-To: mrsmarlenedillon3@gmail.com
Message-ID: <1301446427.1824935.1601848431560@mail.yahoo.com>
Subject: The Project
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <1301446427.1824935.1601848431560.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16718 YMailNodin Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org



Good day,

I am Mrs. Marlene Dillon, I have emailed you earlier on without any response from you. On my first email I mentioned about my late client whose relatives I cannot get in touch with. But both of you have the same last name, so it will be very easy to front you as his official next of kin.I am compelled to do this because I would not want the finance house to push my clients funds into their treasury as unclaimed inheritance. If you are interested you do let me know so that I can give you Comprehensive details on what we are to do.

Yours faithfully,
Mrs. Marlene Dillon
