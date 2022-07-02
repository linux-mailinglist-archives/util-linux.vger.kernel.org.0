Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EC5056405A
	for <lists+util-linux@lfdr.de>; Sat,  2 Jul 2022 15:27:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232083AbiGBN1Q (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 2 Jul 2022 09:27:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbiGBN1P (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 2 Jul 2022 09:27:15 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1B77EE0C
        for <util-linux@vger.kernel.org>; Sat,  2 Jul 2022 06:27:14 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id fw3so8639889ejc.10
        for <util-linux@vger.kernel.org>; Sat, 02 Jul 2022 06:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=dcwrPtXldcZQuaUTRubP/TsWaJ05MpxYEGzdke58B18=;
        b=auSSgNSZb/VY73OxJcueZdzbnde52mpNdH8lJUI1rVeYedpESTsMFLOvan6w4KAv9n
         ZoOPfPT8ukcqgmPQdvbskitgOAMskOepppunCIB3OVZI2M9DhSNoWUfiKp16yuGJyt6j
         w6NRpJEUB9MuOOTzgkU0pD+LVwu9qZ4mipP1czqkcWFUFitmcxw5aFIzveLr6Er54Yu6
         aUmoFJj6CV3kpnYllKQjUmHgUP0T3fdfP3K7elWT1aZDzfYruc0E1EeOcm3dBFwtaFSN
         uxAjWJbx39hIRFpeOCTDVbhL9CaPBXfSLmB75Xk8mL6wQXd67pvBqWqPvRyRkwhuLVQb
         V8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=dcwrPtXldcZQuaUTRubP/TsWaJ05MpxYEGzdke58B18=;
        b=WgPbUfMkOPz1tezlahTal0SlpAKOZlcKcCCAjRUrWKceVxp2GjI0NFaNYmmdiY0WeL
         8paE6MaTmJct8SlhrIM/nMBO/NrD7krgBuRrWXfCW4gZzLbG8msyTGbcuE97mcWVcJ+x
         JfaGXhcEkWkMu09svWSTIoCPcxwwtU/I8Mq7gy9Nt+sCFryWHkG1jsWnoNZdoVyy5B/A
         2+pdyJYC3fjPq75oaTESKUdjyxwZ01zz4qPgmOTUP9ETYsQnjAlxbjh8WcL3kLOYuURV
         NV8Xk04xuRnWn5nbYI/cul4YLXAckSaiPwR48oEYNECFUKoCpWrVa1vwJoKwwrcvX/2I
         ebOg==
X-Gm-Message-State: AJIora/VU12Irq1sXfrbDHvdDbxQNUMChn1LdrDBguba9l/7w0QLlSmQ
        foykQgGXFxpv1cVhUc3J8jkcVqRgWeExScVB5N8=
X-Google-Smtp-Source: AGRyM1sr5OGx9/JpqSCy+uoJj3qzTi2MCAj3NXkO9q1GhP3/uv0ecqV7XSqbUbj0hQPKlwxcvi/4tP9rKRuZbZtk1oY=
X-Received: by 2002:a17:906:5a71:b0:72a:47b2:408 with SMTP id
 my49-20020a1709065a7100b0072a47b20408mr16940683ejc.477.1656768433243; Sat, 02
 Jul 2022 06:27:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:1b89:b0:72a:92e8:16be with HTTP; Sat, 2 Jul 2022
 06:27:12 -0700 (PDT)
Reply-To: mrscecillelettytanm@gmail.com
From:   "Mrs.cecille Letty Tan" <felixorchowski@gmail.com>
Date:   Sat, 2 Jul 2022 06:27:12 -0700
Message-ID: <CA+cFKvEZsFcLEQ5vRBjKx_F-Cw4ASphixdMWR30KW7LGHYNXaw@mail.gmail.com>
Subject: Hello
To:     felixorchowski@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

How are you doing today, I hope you get my message urgently, please.
