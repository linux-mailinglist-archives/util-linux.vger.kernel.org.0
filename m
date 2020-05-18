Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12B5E1D8A0E
	for <lists+util-linux@lfdr.de>; Mon, 18 May 2020 23:32:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726831AbgERVcJ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 18 May 2020 17:32:09 -0400
Received: from sonic306-22.consmr.mail.ne1.yahoo.com ([66.163.189.84]:44380
        "EHLO sonic306-22.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726250AbgERVcJ (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 18 May 2020 17:32:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1589837529; bh=5gCyJ+OqEpp5mbAlNtNv58P62XCklDNCTlGARRHXZQA=; h=Date:From:Reply-To:Subject:References:From:Subject; b=AMDdHaDDMYJgXwi3c88LJV4bp/pNswno480Vzjen/rxp/uk15Z4U4e02MrTsAPiiQIrxd10lZ3QgBI/DBY+YHnCYyt7gs3808oVrZ6kTP1BcAvieucjY5v99dFyLhx0UAOf5KmIAB20Z+a5cHH+uIZnlbPcycIFfHiBbAUDluuqWkpLTUY7Rcip/h7tZhYKYV5KLTSzHRwCKvTKSYoxI//VJTWuwNc7QeXj6bdwluefLYBpuXYGHSXqtlLK+rjIFPQ9qndn0nUhvJnbjHC0HRj9w+XfPZFGAxZbaWmObJQG8ul95ZqsTgA19hI78wv+hCxbXOZMiNNu2yzB1MHhtKw==
X-YMail-OSG: 6ig7c1AVM1ksIVURSjxEITMWDFNQXnW1Eoxj9.bvMLfA_c9ISFsw2RSmM7_Cb.C
 oGbYAfqbdT9B1A3W1oc_1YvaliME0BNWEqST9p_QoOoxwS4O.kI8QPKBtRn26XjNPZ9SRdHAdyYa
 0N74b9cs_62sWac.2wj.ATQGwXNiXVlVvxye03fdPc4TCPQcjAKekEk_uYy_Hs9psxFgEXT5lDq5
 7gvdxiWEw2Tn56pFYk10uDeDkOW4qiW3vNXoHpRjvj43OKQAmE3c5Go7MnvfMN5pr3_uA.9i84JZ
 KYr7nOrx8.LjYXupOKHDNIMPnFvykF1mfhtkm5IV6Ur2zLollo6k1l5JgSWET4IEUSp99f.rmfR9
 q2CJMm9NaAr3H6LTgbvl3yQJm._w1WYtRhBGtzuZOWt_4bfwuxF7fp99kVmnwkUts_B2bRNcovVE
 4x1s7dLCKLUejPwsB3Zo79gXEb59pYStzrpKGweGeqvEHTUnOYQ8ZAOwYoSof8jlRzNAmr15cLB4
 hF2cFb5IAoLCRfxMHKYwEfcA01Gt_FEzA9lju7dI52LWKiayAtrQK5BgaNwlUn3DrG.IQFkxXRlZ
 RBFtkQULWcXq0QtudnEne4mX9r.jg83QiFW01V5xGf9XtxZlODLaeovMLxxRAyPundViHLVOhdlW
 I50ZmeLCZ0YSMlLhTyShBGtSnccE32HgCAlmnbkNQG9bRAIk8hH.8Uog_4nBv.1BEksSZq7Y61uc
 UuY2Y4MxR_.c59ctnWkeaF5jcXYg9.TtHZQAX10vnoMKwvXJYoGj6FuwHrhjV.4ijwULgwtES5B5
 ETw_Y7uqlbku0c5SaLHhGC0N1vOcpC1xeN40CEnqDLUZem03zyqNvmik4iC7ROt7hAT6EpYS7ZS5
 2u6h79JsNDrPbX7yMJKMgma2K_0K8pnEgM.102NZHlgJpKyidhm8D.VtDWChIwLE3POAtwpb27GX
 UeE86fhwG6TcBp8EZ_yJC2a9pg1jcTHHhHNbmjjp28p0w70iJtno3_GXx.fNBWcpcwSO6DBFrQUd
 GRQ7u1UEcWfnFg4m4XRoQhP.i_i27loqALu8TeRPsDZxqkHZCeeWwqM4hZ_IKCXDe9_MRZASrUNZ
 IS758OsZ57iegC1GKt9C_idV2vDQfmPw0HAX9dnGZ8MLD8y1dNra40LrvOdTZlIT9HpdHu41ljPV
 eMfUPpiuikZDa9NsZJb5vDACx0BF6aVEl0WN6Pf9JCN3F61cZJa1aNQSbGRGrUdutY2Q5thLZ3K4
 75BhCpuAhCKIq6_KfY9D4vkHy5XRwBrFCqvGSO9KCeGln0gPiKiqhTA2fMIR.jEoUm_Fx
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.ne1.yahoo.com with HTTP; Mon, 18 May 2020 21:32:09 +0000
Date:   Mon, 18 May 2020 21:32:05 +0000 (UTC)
From:   Rose Gordon <rosegordonor@gmail.com>
Reply-To: rosegordonor@gmail.com
Message-ID: <1807427743.1117653.1589837525931@mail.yahoo.com>
Subject: Hi there
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <1807427743.1117653.1589837525931.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15960 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0
To:     unlisted-recipients:; (no To-header on input)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi Best of the day to you I'm Rose by name 32years old single lady, Can we be friends? born and raised in London in United Kingdom Take care Rose.
