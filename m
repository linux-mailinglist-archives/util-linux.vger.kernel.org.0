Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40FE173F7B2
	for <lists+util-linux@lfdr.de>; Tue, 27 Jun 2023 10:46:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbjF0Iqq (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 27 Jun 2023 04:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229931AbjF0Iqp (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 27 Jun 2023 04:46:45 -0400
X-Greylist: delayed 3414 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 27 Jun 2023 01:46:43 PDT
Received: from relay.strateg.ua (relay.strateg.ua [135.181.5.166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1BEDB8
        for <util-linux@vger.kernel.org>; Tue, 27 Jun 2023 01:46:43 -0700 (PDT)
Received: from smtp.strateg.ua (unknown [10.34.12.32])
        by relay.strateg.ua (Postfix) with ESMTPS id 34BE78C6334
        for <util-linux@vger.kernel.org>; Tue, 27 Jun 2023 09:13:24 +0200 (CEST)
Received: from email-system.local (localhost [127.0.0.1])
        by email-system.local (Postfix) with ESMTP id 4Qqwsv3WXSz840xH
        for <util-linux@vger.kernel.org>; Tue, 27 Jun 2023 10:13:23 +0300 (EEST)
Authentication-Results: email-system.local (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)" header.d=sudohodstvo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sudohodstvo.org;
         h=reply-to:date:date:from:from:to:subject:subject
        :content-description:content-transfer-encoding:mime-version
        :content-type:content-type; s=dkim; t=1687850003; x=1688714004;
         bh=QEt13M/0YYdXf13j4/vg7b+uUw6K1/1SAoHmEDPE/qU=; b=cXSONSY6z90+
        SbbVRXXP4/G5db7g5uuhI6dirVO1vY7PiR+1T2H0dGVJfaDSnzF5Xh8FXZL8ApCI
        Gmks4Sfi+YddPnNR1jUpv1DrPRlof/bPPiLNYr02EowXvxtkuRpZaUgO1QCPffZz
        Io0t9EFYoaMgh5B7ELUDj7WVfpcqTjc=
X-Virus-Scanned: amavisd-new at email-system.local
Received: from smtp.strateg.ua ([127.0.0.1])
        by email-system.local (email-system.local [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id h9XkPZi11y2g for <util-linux@vger.kernel.org>;
        Tue, 27 Jun 2023 10:13:23 +0300 (EEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: kostetskaya.t@sudohodstvo.org)
        by email-system.local (Postfix) with ESMTPSA id 4Qqn5Z6Bzzz841hp;
        Tue, 27 Jun 2023 04:22:58 +0300 (EEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Re: 
To:     Recipients <kostetskaya.t@sudohodstvo.org>
From:   MacKenzie Scott <kostetskaya.t@sudohodstvo.org>
Date:   Tue, 27 Jun 2023 09:22:56 +0800
Reply-To: h.amer@azzouni.sa
Message-Id: <4Qqwsv3WXSz840xH@email-system.local>
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_40,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_MSPIKE_BL,RCVD_IN_MSPIKE_L4,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Ahoj,

Jsem Mackenzie Scott b=C3=BDval=C3=A1 man=C5=BEelka zakladatele a gener=C3=
=A1ln=C3=ADho reditele Amazonu, daruji 4 miliardy dolaru charitativn=C3=ADm=
 organizac=C3=ADm, jednotlivcum a vysok=C3=BDm =C5=A1kol=C3=A1m po cel=C3=
=A9m svete od Scottovy nadace, abych poskytla okam=C5=BEitou podporu lidem,=
 kter=C3=AD ekonomicky trp=C3=AD pandemi=C3=AD COVID-19 a v=C3=A1m' jsem je=
dn=C3=ADm ze =C5=A1tastn=C3=BDch v=C3=BDhercu, m=C3=A1m pro v=C3=A1s darova=
c=C3=AD grant v hodnote 100 800 000,00 dolaru, v pr=C3=ADpade z=C3=A1jmu me=
 mu=C5=BEete kontaktovat pro v=C3=ADce informac=C3=AD.

S pozdravem
MacKenzie Scottov=C3=A1.
