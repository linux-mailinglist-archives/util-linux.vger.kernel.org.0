Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99B75731823
	for <lists+util-linux@lfdr.de>; Thu, 15 Jun 2023 14:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239053AbjFOMHO (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 15 Jun 2023 08:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240550AbjFOMHB (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Thu, 15 Jun 2023 08:07:01 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2ADB2943
        for <util-linux-ng@vger.kernel.org>; Thu, 15 Jun 2023 05:06:50 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id 38308e7fff4ca-2b227fdda27so8729221fa.1
        for <util-linux-ng@vger.kernel.org>; Thu, 15 Jun 2023 05:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686830809; x=1689422809;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ePmNyTfaTyJRI6ygX1sRhzpMbklRxNoLC3j5uRwULJA=;
        b=DFdh8QGUYP4U7puwCI1ac9M7uZ9zug20IqM6DpMkqOCVZMVZf5wQvVIjvM5tYz/aeb
         5/dpHURb9jhj/pfTX564d9t7twAPweIy/ekFQKwNweBLz9TeRmv9Fqb/c1bNLTN7EETN
         c87xQITKoRyYg+7oHfqauqfOkBcqMjsYMeQiX2UqTRcd3QjXxJru22guz9IfhEq86elN
         uxno3d811tKbHmO2XfcQlcWddqsOWTNtUF69gGYK5SRBqhe3P9omHaK5gnQYsfy+ICor
         N7s31kov1sbA55bD6lrCABZEzOL4UMvkaVVyodhhaHW/2PHdFKMnLF9ILRXiGD+oeU9t
         +9Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686830809; x=1689422809;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ePmNyTfaTyJRI6ygX1sRhzpMbklRxNoLC3j5uRwULJA=;
        b=GHlZfy7MD3+YRSuYEfPza80tofUfOdp6oW0zMUkUS0MBqAydVzimrSNKdCxMALf/yc
         F9G1b20NoYUCnk5kq+rIE2tD9EEs3YJMKGgb1zqwr+b7yfwxJc+4FdQaTeWyR46RKevC
         p5mnefs1LjjlwIChSlMstrPij3cTeepKNboaYezeypy7vUNwrppRYwNQ/jUnWt9mzzcD
         pnsPeHqKdfTPP9QcM0j8t3q3rYtLftyvRKoCghHlH4DOS4QcH1mkqVMwRx1/rwdBTETs
         9lQm3R6VMfaXPCe6wyk2rcEY+s9C4Mbx56GZnuIV7mUq0G2XVt8E9lP7kKAlh/KWQYkh
         7C8A==
X-Gm-Message-State: AC+VfDy0qekh18ltFjSuIU5+5/b0YDUT3CpK76jWpKd01gkTDGzm22Gb
        LDEx6RhFKZRPUN/Y9JQs32nHe7szAxAkLrlLUC0=
X-Google-Smtp-Source: ACHHUZ6hUhwNFel+oVzYoD6xyElodUOMVgdLbf7DrpvGFGEMmbpJpy4ZJvQak9pOytQdPq+M2Vj4tjyRMMr5RCUXSU4=
X-Received: by 2002:a2e:2c01:0:b0:2ad:999b:3bd6 with SMTP id
 s1-20020a2e2c01000000b002ad999b3bd6mr1588412ljs.23.1686830809033; Thu, 15 Jun
 2023 05:06:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6022:42a5:b0:40:24e7:ccef with HTTP; Thu, 15 Jun 2023
 05:06:48 -0700 (PDT)
From:   Christian Zein <the.christianzein10@gmail.com>
Date:   Thu, 15 Jun 2023 12:06:48 +0000
Message-ID: <CAPqDnmcmbc3uC878SwovceduqZuaPBxeZNTRN=-2LNB=5++f7w@mail.gmail.com>
Subject: sqelch-lebensmittel@yahoo.de
To:     QuietUrl Contact Form <contact-form@quieturl.com>,
        dannys <dannys@mail.com>, faqtrack <faqtrack@freedos.org>,
        jhall <jhall@freedos.org>,
        Oliver Zurr <Oliver.Zurr@solvians.com>, Oz <Oz@3rdwish.de>,
        press <press@xkcd.com>, tor ops <tor-ops@torproject.org>,
        util linux ng <util-linux-ng@vger.kernel.org>,
        Wii Mii <w2863626240052192@wii.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_50,BODY_SINGLE_URI,
        BODY_SINGLE_WORD,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLY,
        RCVD_IN_DNSWL_NONE,SCC_BODY_SINGLE_WORD,SCC_BODY_URI_ONLY,
        SPF_HELO_NONE,SPF_PASS,TVD_SPACE_RATIO,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

https://scentedballoonrunaway.tumblr.com/
