Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3168F4D73C4
	for <lists+util-linux@lfdr.de>; Sun, 13 Mar 2022 09:51:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232055AbiCMIwJ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 13 Mar 2022 04:52:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232000AbiCMIwJ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 13 Mar 2022 04:52:09 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC859635B
        for <util-linux@vger.kernel.org>; Sun, 13 Mar 2022 00:51:00 -0800 (PST)
Received: by mail-ej1-x641.google.com with SMTP id qt6so27806304ejb.11
        for <util-linux@vger.kernel.org>; Sun, 13 Mar 2022 00:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=BInys1GjUr//SczNrV06SUmmwPshVO7ak/x6YbQBYgQ=;
        b=YYXp9+RIYxKQrnWsuMZERT+PtRWQseeOJdESHFHXruDrF1C2N9Q60ohN3xSRJqeau1
         N00U/uBbH3ZIId+sAtnTdvdsovZQPX3ZeBFTEnLlA91fxOzc3z8FZ40XbM0Gv1Bw/Vs2
         ei7GHffeJmQs6Y0i2Ti7E/Uxn3RRHhl4SHf0Sngcf/aSYR3iUSD1oj3hByq6Dk8+5Rg8
         dKLGgxvBzwuYKEUGtdM7xFOqLYTcNKLnkLi1BkNX+h+iB5WhHe5m2aV9IdUNuKRTb8F3
         SBJCNBY49OIwTXM8brkK91CWk//w/vP0ch83nSbMw3D4PsUlw/REXaXFfjET9RoaErF5
         2qLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=BInys1GjUr//SczNrV06SUmmwPshVO7ak/x6YbQBYgQ=;
        b=C7DGqG5KIYjn48rNmdSZ/39DkBm3ZbCUJr6phXqke9Mjg5kftqSkFL1Q+lqcuKfGGa
         qNWOm7Kn+nW4I390HPjGT9LUWqPkGwWnlU1qUh+Y8K/WtVXdx3pWTtD58+l1pxPL4skw
         pQ2JYqwpAdFruBOs/mFwwTS9MKs+fT8lEOTQtTclk8zpXnRsE0YiVmGpkTpxSuRrVnHI
         9EbVCCPRzyNNpygUJ/zC5QtaLFyzT9saxs4DY1/xwS6e7xOSz4Xao07wFsmwRswnral9
         lDBvzPup/0b8IUZHfV3V9PoKm4W+C9qrvQZUVVrKrostp0muRIrzeSeMVBc0+zg2xqUk
         za8Q==
X-Gm-Message-State: AOAM530PN8tgcLFYQ+ClSO6U3/fX5sf3jz/A0k9PeyrZKhVsX9F3vPzb
        n56Txk2XKl9r2jgSw73Yo0V3SYNhH6H0/nxTmhw=
X-Google-Smtp-Source: ABdhPJxLV6vSB0kRUtVN7R7bckAs/PYHMcfF1D//GLlr+YRcWRMqNBHu0SfnT56OmQJ8Pjx1sL4KYwSwZEhOHZYmnZQ=
X-Received: by 2002:a17:906:a046:b0:6b9:20c:47c1 with SMTP id
 bg6-20020a170906a04600b006b9020c47c1mr14607843ejb.615.1647161458988; Sun, 13
 Mar 2022 00:50:58 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a50:338b:0:0:0:0:0 with HTTP; Sun, 13 Mar 2022 00:50:58
 -0800 (PST)
Reply-To: avamedicinemed1@gmail.com
From:   Dr Ava Smith <brightotabor4@gmail.com>
Date:   Sun, 13 Mar 2022 00:50:58 -0800
Message-ID: <CA+1QR34uUdwFmv2jGuJwS63okn1vnJHZLSrz2FT0wGJ9EhN0vg@mail.gmail.com>
Subject: From Dr. Ava Smith From United States
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:641 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [avamedicinemed1[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [brightotabor4[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [brightotabor4[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello Dear,
My name is Dr Ava Smith from United States.I am a French and American national
(dual)living in the U.S and sometimes in the U.K for the Purpose of Work.
I hope you consider my friend request and consider me worthy to be your friend.
I will share some of my pics and more details about my self when i get
your response
Thanks
With love
Ava
