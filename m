Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3B76545161
	for <lists+util-linux@lfdr.de>; Thu,  9 Jun 2022 17:56:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343514AbiFIP4r (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 9 Jun 2022 11:56:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234872AbiFIP4r (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 9 Jun 2022 11:56:47 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B07D44AE0C
        for <util-linux@vger.kernel.org>; Thu,  9 Jun 2022 08:56:45 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l126-20020a1c2584000000b0039c1a10507fso6962941wml.1
        for <util-linux@vger.kernel.org>; Thu, 09 Jun 2022 08:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=WTJUfxKwBKekSBSUnia4+MJkP6oFkyw0FVWZM+5Ui/A=;
        b=T/nJu275mr8fUkY7rLx9tKH2+COA4WlWKCUB6FlQGnmeAZtptM2vlIGMUOrgbPJNDE
         OGvtFgw7ZMK8gN4VG0KvBOBmUiBFX6NxC6krJQDMgmEU0F6ZIHuzgg1ikqbywpy9d6Kr
         vXRZsuOfEpwXHhFFDpW5zAFEy6TRsBiYagA97R5ApCiRuF7gPtvrzw3M+cKnPKtM85iK
         oV127vtGpuIGX2Ep2LekzrglxzvZV+aHqhX2kvZ8+2Sey8mQwxZ7HRQjpAIXZ++C5J6t
         nSddyeVnGiH8wF2YM9Pv2/Bn0TKHk3RqRkO6IQbh4YtpLbq0MkzZlesy2jeBa7ZFrJA1
         z+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=WTJUfxKwBKekSBSUnia4+MJkP6oFkyw0FVWZM+5Ui/A=;
        b=I6I3wEoG7f2UhBZ6HJAWm0iBXGV4nlJmi5hJVRRHx0+ywx/fvPQYfVbsWc3W9NTLPR
         NiS17fFsV4asRAYX8yk+oVME7bJ2i16cg/TUbnmvg0FiL5OK/PoEnmzQZD6ZiproJZlv
         2bcSw2wZW/BJ8hPEL6FATL8TQ24+hhigqh1AHtzKkpoM2t2N3Gup/huDPGOTTVEUG8bG
         CgPxyjyhb0mCC/gTQLZE3JV4CnXpTqIiei/w6Sv06Jc14HkYguvcEjYxaIfWtbd3Iv8T
         oqro1CTx3qQaximrH+psMYwveokaLUC8TNUDQE9NtlW+n9L26oeS2LjB8gK6OYn8nk6T
         98rA==
X-Gm-Message-State: AOAM533vyapMkHg7RuqBdKSk2lxYtexNoh5n01KB7hgWTCeBR7X1sz3l
        jaRoBKmhhoTgXXXrkfivQYqXJWndATdiUOhB5PA=
X-Google-Smtp-Source: ABdhPJxNCGNdVg9ZTt31F2e55tp7CvqKdOIxL/mL4VFkb/URy5mz8h3C17phWskR9tZeHBAXqCqID8M12dlNo20g9Rw=
X-Received: by 2002:a05:600c:4f0d:b0:39c:5f1c:c749 with SMTP id
 l13-20020a05600c4f0d00b0039c5f1cc749mr4102583wmq.34.1654790203967; Thu, 09
 Jun 2022 08:56:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6000:507:0:0:0:0 with HTTP; Thu, 9 Jun 2022 08:56:43
 -0700 (PDT)
Reply-To: ramcharan9910@outlook.com
From:   David Ramcharan <convy0101@gmail.com>
Date:   Thu, 9 Jun 2022 16:56:43 +0100
Message-ID: <CADDRs95DLTZOCGpe0K1MZ=c6kK_1Gu38sP7pv7wcKX1fRL86NQ@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM,UNDISC_MONEY,YOU_INHERIT autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:330 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4996]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [convy0101[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [convy0101[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [ramcharan9910[at]outlook.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  1.0 YOU_INHERIT Discussing your inheritance
        *  2.3 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  0.6 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Did you receive my previous email regarding your family inheritance?
Reply strictly through: ramcharancrdavid@gmail.com

Best Regards,
David Ramchara
