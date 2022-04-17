Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED75E5046F6
	for <lists+util-linux@lfdr.de>; Sun, 17 Apr 2022 09:33:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232845AbiDQHf6 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 17 Apr 2022 03:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233563AbiDQHf4 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 17 Apr 2022 03:35:56 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C1BD1ADAE
        for <util-linux@vger.kernel.org>; Sun, 17 Apr 2022 00:33:22 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id p10so20026399lfa.12
        for <util-linux@vger.kernel.org>; Sun, 17 Apr 2022 00:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=KeMi8W+p20zdR41YZoRj2EapY7imNsLYkAgQIQsIzqY=;
        b=HscJN0ogadjeSTRrXS/37AIh64AKKwiJtGFPny4sFhwvlJe1jfgIMFm6+nssNzTi2L
         L9vls4STFZi0FYxN0Yg+FlEZTGuiOjfufBcHlNoOhFRJ1FPas+XdblECujuTc/ZaYxkv
         PtRSxDguGoEB4ZNg6dBQ6xck14gUrj7jBDjrCwKFUgsf85nwsGzEPNGmmgMD/rtdH4U0
         3ds6vt2q3QRcfnpidd4ZliCRYCNp1YYWLyxr0ohOxsVAgZa2Y70qOrKb6FCvdgdxu7uq
         DUHbLakAjEFQ3/MCWtc8VhULjrXCFPHmJCcAjLgVK9PwE8olGW+MecAVZ4t3D4oNnTfy
         54QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=KeMi8W+p20zdR41YZoRj2EapY7imNsLYkAgQIQsIzqY=;
        b=fYgPgkT2ThK9nqcAzXUQkWACN3Cww/eGmG0gzlbxDy9GUqdSZ/GWT7+AA2WDW9J+8C
         vMWuvTTJBlCcwnCpGEL9PN/h0eiYGS/S6sfNyMjp/pErIJfXFI45+4Wqb+YLxUGK81IF
         UPWYmu23UY386tnyu7EQzHOqNYoqtLeh7JN90hWgAjhtaSM8M1tHttrcj67PR1DLFlGb
         nzkuG3KymzEts/W028+ChVInY5CaLAfam9c0utwdljxPukPmQEZID4Vm0n1IVTOlA/z1
         qz+Dgms7NX9KNAY/OYaCKwFl6bG1Q6QrtePeXZH8/78ebk6Kcp/gDRdz32/UFhnb6g2i
         w2cw==
X-Gm-Message-State: AOAM533R4BQ8p9qttpYE/oR+A5qg50xMnfKN25uwOEFe+Ekqo4a7tJmm
        sw13L5B5DdIib3d0BdULrmEdFRkVFWq7ZzFuPA0=
X-Google-Smtp-Source: ABdhPJzYIxbFp4TXVLxi+Gywwyfk0b+x8r5WMKeOG7gihiH/j1kGhB6IS52dZjHnNtHWAeg9LLZXHmxxkdNCL6wXLG8=
X-Received: by 2002:a05:6512:2591:b0:46d:f13:6ef9 with SMTP id
 bf17-20020a056512259100b0046d0f136ef9mr4642583lfb.424.1650180800530; Sun, 17
 Apr 2022 00:33:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6512:3f08:0:0:0:0 with HTTP; Sun, 17 Apr 2022 00:33:19
 -0700 (PDT)
Reply-To: daniel.seyba@yahoo.com
From:   Seyba Daniel <mustafamohamedali42@gmail.com>
Date:   Sun, 17 Apr 2022 09:33:19 +0200
Message-ID: <CANqxt0_KRM6m+0CXo4oxLxSe_83b-Ain9edQEMbKVVtLw1F69A@mail.gmail.com>
Subject: Hello,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:144 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5029]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mustafamohamedali42[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [mustafamohamedali42[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.7 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello,

I am so sorry contacting you in this means especially when we have never
met before. I urgently seek your service to represent me in investing in
your region / country and you will be rewarded for your service without
affecting your present job with very little time invested in it.

My interest is in buying real estate, private schools or companies with
potentials for rapid growth in long terms.

So please confirm interest by responding back.

My dearest regards

Seyba Daniel
