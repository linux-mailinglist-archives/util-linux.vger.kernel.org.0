Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6D059B545
	for <lists+util-linux@lfdr.de>; Sun, 21 Aug 2022 17:55:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231644AbiHUPzX (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 21 Aug 2022 11:55:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231643AbiHUPzX (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sun, 21 Aug 2022 11:55:23 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53A8F20F5C
        for <util-linux@vger.kernel.org>; Sun, 21 Aug 2022 08:55:22 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id h67so7909288vsc.11
        for <util-linux@vger.kernel.org>; Sun, 21 Aug 2022 08:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
        bh=EDlMQzzVbGTvS/Xi3jfsxW5Vdl1DnbH6ryI6Z5fSkFQ=;
        b=eTR+/6bzo1FFPSxk+MrYqRMIZk6VLpym3/rY2z2tMQzwG9KtXMjrReuF5xgceEO9w6
         /xRK3CuyPcjGDeXmnVNoWcG0XLmHTXqO0iDlGpCK+UipIlJYW/0OlBCjH3sI5+kcPjy/
         C6l9pb31Cxt/9soWgklt71nKjH9P8CFkWvcfXo8u+khscDmm6wuZGhFbwtjSqgWbFjXS
         pTmWJc1MG1lPet07P1nWTxyhd7kXLa41uTge3/xod6PoZFdGK29FO15iRcw+qEeTXLLR
         85oiCAiDMAnjDlzVmZ3yVWQni5B84V43w3GWrgV1NIdk3UXQQceYSTv9ymKhGepbFT+s
         UQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc;
        bh=EDlMQzzVbGTvS/Xi3jfsxW5Vdl1DnbH6ryI6Z5fSkFQ=;
        b=MgLk7culLmi6KQ/05i4na+SPv4GG+P8T0lxBhnvHkQPWTck9EmWFrcpcVzeBtf2drb
         kgSP5Z5gGZom8rdFWxB1DcNatsUUI4n8TkfhGnoZzaBqOrk4i1HgKD8fn1ncmzkmdOnR
         af4cmUu39+zZ20al3u/bzDhLIGIpV1zgRMAwCQtz8/Nkrk3Fe632CNwRVbwHdOemr6s3
         XPj3qEVD1zBSGFLKdt6HMNCHpHchTOHA/ZCq9MXTWck0Iw5CsY+lOlQgvDN421UDjgKM
         6pcmyiCGSfWpM1ArpZTu2LoMMM7YEtPec4oRlcEzsWlAqMYVoqpWTOXEk/b1xuWuSjoc
         oVTg==
X-Gm-Message-State: ACgBeo1wBlifKg8/kbHYEk6LTMHW/5fHxmcNV6bU4KJk3ACx65vMJXkn
        ysiA2q+KxxbQcLYjfbmMC6zm7R9BlcLvZ03HRxk=
X-Google-Smtp-Source: AA6agR5IbJzJ1+HTwyxcmNDALrTRzsqSiqruJJrSDyzCd3lULUwlm+QiZuEEhazQbxnQZwLpYNGSe17ZUXWraI5N0IQ=
X-Received: by 2002:a67:fb4f:0:b0:388:7d4b:50b7 with SMTP id
 e15-20020a67fb4f000000b003887d4b50b7mr5689858vsr.34.1661097321534; Sun, 21
 Aug 2022 08:55:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:370a:0:0:0:0:0 with HTTP; Sun, 21 Aug 2022 08:55:20
 -0700 (PDT)
Reply-To: sgtkaylla202@gmail.com
From:   Kayla Manthey <manstone252@gmail.com>
Date:   Sun, 21 Aug 2022 15:55:20 +0000
Message-ID: <CAOvQE_-OsoGjcMyv3-uVNXi7BTvrhaS9RUiN5UJVgF7u-WQ_ew@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:e33 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4936]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [manstone252[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [manstone252[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [sgtkaylla202[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Bok draga, molim te jesi li primila moju prethodnu poruku, hvala.
