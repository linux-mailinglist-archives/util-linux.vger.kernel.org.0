Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF8A97E1705
	for <lists+util-linux@lfdr.de>; Sun,  5 Nov 2023 22:59:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbjKEV7i (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 5 Nov 2023 16:59:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbjKEV7i (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 5 Nov 2023 16:59:38 -0500
X-Greylist: delayed 5122 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 05 Nov 2023 13:59:35 PST
Received: from SMTP-HCRC-200.brggroup.vn (unknown [42.112.212.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A50B4CF
        for <util-linux@vger.kernel.org>; Sun,  5 Nov 2023 13:59:35 -0800 (PST)
Received: from SMTP-HCRC-200.brggroup.vn (localhost [127.0.0.1])
        by SMTP-HCRC-200.brggroup.vn (SMTP-CTTV) with ESMTP id 6390119B8B;
        Mon,  6 Nov 2023 01:58:28 +0700 (+07)
Received: from zimbra.hcrc.vn (unknown [192.168.200.66])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by SMTP-HCRC-200.brggroup.vn (SMTP-CTTV) with ESMTPS id 5CF8B19C16;
        Mon,  6 Nov 2023 01:58:28 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.hcrc.vn (Postfix) with ESMTP id EEDD61B8204A;
        Mon,  6 Nov 2023 01:58:29 +0700 (+07)
Received: from zimbra.hcrc.vn ([127.0.0.1])
        by localhost (zimbra.hcrc.vn [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id 1RoK9RYbE8cH; Mon,  6 Nov 2023 01:58:29 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.hcrc.vn (Postfix) with ESMTP id BF0BD1B8203A;
        Mon,  6 Nov 2023 01:58:29 +0700 (+07)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra.hcrc.vn BF0BD1B8203A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hcrc.vn;
        s=64D43D38-C7D6-11ED-8EFE-0027945F1BFA; t=1699210709;
        bh=WOZURJ77pkiMUL2pPLC14ifVPRvyTQIBEQmxuN1ezAA=;
        h=MIME-Version:To:From:Date:Message-Id;
        b=ejyG3TqczV28r+WM6NvNK3bPbrUQST2ZKSqiVCOBx8D/J0cjlJUr7IGq5Ylx26/gK
         NLodu5yhyBrAia8+7e25a1CPgYgrcMwnlVOr8xJTK1o2QEyn/FY2EMyva8BDykJW8U
         CJSTnr0j1q5yzCwJHtG3UAEooaCjhBZB63zRRaN6gwx9vgOn/c4aaOPi6xEgkJ4wzl
         nWWiiTzabjyKqBDtNx7K9hYrnwA3gMQYf2qgPfxpcXZlQZo0yymZveIDiqmsa/PrPc
         Bb6mERhs1oIrdyhliNDhE6EHXwsDMbPV4iBZJ6GGdO9Qd71RbG0WrdCpxaDRLdrI7D
         1xY+xumWfY/nA==
X-Virus-Scanned: amavisd-new at hcrc.vn
Received: from zimbra.hcrc.vn ([127.0.0.1])
        by localhost (zimbra.hcrc.vn [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id NCL_k7Dqx9Eg; Mon,  6 Nov 2023 01:58:29 +0700 (+07)
Received: from [192.168.1.152] (unknown [51.179.100.52])
        by zimbra.hcrc.vn (Postfix) with ESMTPSA id 615711B824EE;
        Mon,  6 Nov 2023 01:58:23 +0700 (+07)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: =?utf-8?b?4oKsIDEwMC4wMDAuMDAwPw==?=
To:     Recipients <ch.31hamnghi@hcrc.vn>
From:   ch.31hamnghi@hcrc.vn
Date:   Sun, 05 Nov 2023 19:58:12 +0100
Reply-To: joliushk@gmail.com
Message-Id: <20231105185823.615711B824EE@zimbra.hcrc.vn>
X-Spam-Status: No, score=2.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_REPLYTO,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Goededag,
Ik ben mevrouw Joanna Liu en een medewerker van Citi Bank Hong Kong.
Kan ik =E2=82=AC 100.000.000 aan u overmaken? Kan ik je vertrouwen


Ik wacht op jullie reacties
Met vriendelijke groeten
mevrouw Joanna Liu

