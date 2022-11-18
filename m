Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A48C62F5F3
	for <lists+util-linux@lfdr.de>; Fri, 18 Nov 2022 14:28:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241768AbiKRN2F (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 18 Nov 2022 08:28:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241422AbiKRN16 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 18 Nov 2022 08:27:58 -0500
Received: from mail-vk1-xa2b.google.com (mail-vk1-xa2b.google.com [IPv6:2607:f8b0:4864:20::a2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7461B8A16B
        for <util-linux@vger.kernel.org>; Fri, 18 Nov 2022 05:27:57 -0800 (PST)
Received: by mail-vk1-xa2b.google.com with SMTP id t85so2408690vkb.7
        for <util-linux@vger.kernel.org>; Fri, 18 Nov 2022 05:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bIY3TPZTVnWea00k4Qcne3TRu4UILnkul61ceLO7Q90=;
        b=a42vcv2Kxv6xmV9j8m9QEgJkzpl7IJ6jYHPQM33vz0KPVVP9TWUya6MXUHvVsgHgTe
         T5oYBCdAXz4Mn6lm4cZx8Lb9hUSqs7uymQrfg4kARP+bye06yvraCRX9Pu2FhSIltVnp
         K+Jl/NFELdxSh7nB8Pqbs3NZZLbgpu7gvpASZ6demIkXAQ3n708f4WsOdd0R1Q5bEeOn
         tVybdN7qgxJOqBUQX0h4i4zLhXxIVpY5/H0bVzzOHebtIpYnCcVA/RNxAER1f40U8k5e
         3vUNpz1A7ofOcrqWDpc/rOFo0T5KBMMRwVEH/84xhiuocX15eH3RBBaD5jcwP3bSjiPj
         muAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bIY3TPZTVnWea00k4Qcne3TRu4UILnkul61ceLO7Q90=;
        b=4pXnZ6F02erusldeWwzSw0hMB1cz1osXIXihlJAV2QUqCS9APiogFAARgiLGV6i7Rj
         tzc32IfKjuAhooT3LTCLpi4vGELyJv3qUacqJ1lvAoNWiw+iUbH5fFOj6hTmJwCj64Lt
         wzb7ImAeSo2qZTHxqDb9aZBMODsjvGPZrz16iay+5iT2L7dP/r/ZJJd6quEW5GIdPkpb
         v67pfvbi0fGJQQ7UqQeDqjBCD+T2JzYZ+CfEzKkfp3IWZOyPhLTaarnCK9lsRbqeFm5D
         Iw5FOwcpoKJlx9som3HGZDLnHZdS8J8/vdMBCrvSaXfpME39eG2ROZ7TDYlbtv+koM/2
         fxgg==
X-Gm-Message-State: ANoB5pmnALh7SxTry/j2Sb6fbP/l57/HTD00Qooode0nKV6rf0IuL0mb
        fkkNNk+tqRqCDRoI6mvZ32i0JDmeuL98fVZqmdI=
X-Google-Smtp-Source: AA0mqf7h5E0ieFqKYC9+QonteZmtKIvcFOa1bZfMnvJOh18YjO3lY+nYua3FOA9jMHjaAFguWu5fM5/BUlLqcb23QLQ=
X-Received: by 2002:a05:6122:179c:b0:3a9:a908:72dc with SMTP id
 o28-20020a056122179c00b003a9a90872dcmr4002784vkf.15.1668778076303; Fri, 18
 Nov 2022 05:27:56 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:60f:b0:314:5fdf:c66f with HTTP; Fri, 18 Nov 2022
 05:27:55 -0800 (PST)
Reply-To: tn0056454@gmail.com
From:   BELARBI MALIK <inahmoses18@gmail.com>
Date:   Fri, 18 Nov 2022 13:27:55 +0000
Message-ID: <CANavwctTMt-gBFUzHBzU5D5e1Ri+xTec3bWixTF9KkvsteBXZg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:a2b listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5002]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [inahmoses18[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [inahmoses18[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [tn0056454[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
Sch=C3=B6nen Tag

Mein Name ist Belarbi Malik. Ich bin von Beruf Rechtsanwalt. Nachdem
das Ecowas-Gericht die Kisten/Erbverm=C3=B6gen unserer verstorbenen
Mandanten freigegeben hat, m=C3=BCssen Sie diese Kisten erhalten. Ihr
Cousin, mein verstorbener Klient, hat hier in meinem Land an der
Goldk=C3=BCste nicht abgeholte Kisten zur=C3=BCckgelassen. Ich erwarte Ihre
Antwort bez=C3=BCglich des Verfahrens und Kopien der Dokumente werden Ihnen
zugesandt.

Belarbi Malik
+22897822988
