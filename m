Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AE5F66B974
	for <lists+util-linux@lfdr.de>; Mon, 16 Jan 2023 09:56:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232154AbjAPIz4 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Jan 2023 03:55:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232116AbjAPIzo (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Mon, 16 Jan 2023 03:55:44 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CF0113D43
        for <util-linux-ng@vger.kernel.org>; Mon, 16 Jan 2023 00:55:40 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bk16so26718669wrb.11
        for <util-linux-ng@vger.kernel.org>; Mon, 16 Jan 2023 00:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NK4DjyGQpMqw10x+mS5KkcoMyzskXFHKTg9WGMfZ5sk=;
        b=G6aqE3gV0sWPwPwIWkDCgIJFfxnwBFOmXJdRXoShQyoClfkJqP8ijuuJYgQ21uwPi3
         oVi/AMfQRKwUe6JU35EJ6trKjXlWtiaT2WYL7wL+ms5t7QZLTXzJF2QcS7J87t7Xi72y
         rdpYpiEnYS4owYfRM9TxfLoi8flh1mIDtJgLxBr8NFPsHEE7x4jiOGQO0CRj9pyStEyM
         llXFL2wQl5uUMgP+Q4a12+1z9GZnnYQl/uzig+JbtWQzWAnBpGaNi5DgjyarewObabig
         xEp1bAPfUCwcXpdRAr9IdoNeVPPnz1XzX7ZWSHIsG3bSjCU+zCsMFigHAmo+Kp+s0e2f
         mo9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NK4DjyGQpMqw10x+mS5KkcoMyzskXFHKTg9WGMfZ5sk=;
        b=RMIqkoT4M5g8wQadlLJVyBU+vwrkGGC2sMLl3qXnse0YDf3M33lhVaCw86awoGfWz6
         aUGhYDMneodZszjg814cs/IPOzpn6NCuuKc2Up5O9v/4lKeAFFEEsbYmIXkh91hoyytq
         sp2iSEmeQXuU5f+Vmq7VVE4RkGbBpbWZaT8lZL1CyugAluFdmQlZS0+MdTFP/vilrto6
         qR/81sbJExCA0Vk1w+PCvbmn0pqym+5f0iETLAu4dgmy1gL9N43Mh7BDzjeeJtegryu1
         X9ijDhkXvm6dafrAMld53+Z1rHSc5JiMfE2R3Thgp8dDWmhkt7BZuYOFE6YZVIupFUWn
         uC6A==
X-Gm-Message-State: AFqh2ko2AFn9qvHc6ckbvNWQBNbIGq58iyygkF/YuURPuWan2ZY0pRHH
        B6HO5UqlKozR2E3uBFXLifQEl1U+T0veV6hzc/4=
X-Google-Smtp-Source: AMrXdXu4BuP9I3QVkZDGm7xJQ4bajfHR1o/MUf//06dHCH94lbGDlvmzB6h53M3+tfhXsaJjWq9G6FyzcAFOfSolNK0=
X-Received: by 2002:a05:6000:1ca:b0:2be:858:5d4c with SMTP id
 t10-20020a05600001ca00b002be08585d4cmr38383wrx.88.1673859339067; Mon, 16 Jan
 2023 00:55:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5d:5948:0:0:0:0:0 with HTTP; Mon, 16 Jan 2023 00:55:38
 -0800 (PST)
Reply-To: charleswjacksonjr32@gmail.com
From:   Charles W Jackson Jr <umarharuna1050@gmail.com>
Date:   Mon, 16 Jan 2023 00:55:38 -0800
Message-ID: <CALc5pjt6ePNATCdJf1fHJMZsy7rHffPo1DsQ-ScEwXy27d8NCQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:42f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5002]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [charleswjacksonjr32[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [umarharuna1050[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [umarharuna1050[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  2.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  0.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  2.9 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
IHR E-MAIL-KONTO WURDE F=C3=9CR EINE SPENDE IN H=C3=96HE VON 3.500.000,00 U=
SD
F=C3=9CR CHARITY AUSGEW=C3=84HLT. BITTE KONTAKTIEREN SIE UNS F=C3=9CR WEITE=
RE
INFORMATIONEN.
