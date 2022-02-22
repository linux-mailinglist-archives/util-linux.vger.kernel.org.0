Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1741E4C01CC
	for <lists+util-linux@lfdr.de>; Tue, 22 Feb 2022 20:07:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234811AbiBVTHk (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 22 Feb 2022 14:07:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232572AbiBVTHi (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 22 Feb 2022 14:07:38 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17E53140BD
        for <util-linux@vger.kernel.org>; Tue, 22 Feb 2022 11:07:12 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id h125so17810394pgc.3
        for <util-linux@vger.kernel.org>; Tue, 22 Feb 2022 11:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=gWbHhKMJubjHofZyZdW2E+P34svGdrdFyKW0CrjbdeQ=;
        b=ZYZsE1nCAxIeQjKl+zWuvJOt/WMMQCWzNyTdDR117L7jzH0go4r8wMZiZYmH1UfqXh
         v217KqTXAEx29bZsBvpYTutoU8CPZItcRRmFew3g+fKFglSAdbW/TrsndWIkBaJZjKVJ
         kjHLlcuUiKfjzN/Zn8gLEIq9WWcsiUtsLz2ejpy6lfGgpZ00evnbYzawwI0BQmHLzWIW
         WiGcFtFHpmZ90QTq2hwdgP2lqjs/8Z2VeHBVZMgLRCCDKD4x132KDONEVkOYwv/Om8/G
         bIzuaikNVkbI9vqFsX8+VxSCb0vRBBYrZ6UOAKDnsSZEfZQ5x1OmAkWdu5Np8CqQwvUi
         7F/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gWbHhKMJubjHofZyZdW2E+P34svGdrdFyKW0CrjbdeQ=;
        b=2C6qE260gez6lYt483NpZwxy2xht86El5e1knq7Uw9w3ArJNnBo03pYwdEHpIQO9Ng
         +aWEbeuqSudZ5FifltnK86urril/WF6Keo7EfohXf4ZgbbmNvh9edplCXuD1IL+yJy+p
         RaSaXgQvLHTI9T4/OTSsKifZmPfi5qs+2/lQdsYXsetKCZ3OK5tFkAVUPVV/2KrKiosL
         4+2rX/1BJRHy2iqGdX2JK8Z7lakxRfygvnYjJJXK9QKmNOsSTklYXsEU0VdTUuogr2ee
         c89cuBCH18AkJDi8gjn3YiQYJANcjDpKctjc7/hZaaO2alikvyWOcUNXanp85R38YYCk
         k8Pw==
X-Gm-Message-State: AOAM533Y6hVmKreY5sKllvjCdvfy41GCyecr7wzwtpRQmMuZE7cp/h+X
        rNhmI7lrmZFcAH8etPrT/8av4jp3w5AAU3HT6eg=
X-Google-Smtp-Source: ABdhPJxUHIuVXIe/UBDmDj4fgDIrtaMs1nNq1YXXQPUKIgKqwW5gxUrDMQjWb+a3ltKFS7fZOTCObQpIfvHoj4ecFs0=
X-Received: by 2002:a05:6a00:279e:b0:4ca:91aa:32ce with SMTP id
 bd30-20020a056a00279e00b004ca91aa32cemr26360814pfb.36.1645556831599; Tue, 22
 Feb 2022 11:07:11 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90b:3a85:0:0:0:0 with HTTP; Tue, 22 Feb 2022 11:07:11
 -0800 (PST)
From:   mark milley <markmilley20171@gmail.com>
Date:   Tue, 22 Feb 2022 19:07:11 +0000
Message-ID: <CAOHeAmq7f5AtESrTq7naJ2WM9UiJwORDrPq5D10t4+wYsF9qsg@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:52d listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4609]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [markmilley20171[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [markmilley20171[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  1.0 FREEMAIL_REPLY From and body contain different freemails
        *  3.5 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello dear friend.

My greeting, I am barrister Mark Milley. From AFRICA, I sent you a
message a few days ago, but I did not get a response from you,I hope
you receive the message.

Reply as spoon as you received this message and i will send full
details of the business relationship.

Best regards
You call me on phone whatsapp as available, +22896984002/
tommyfranks1011@gmail.com
I am expecting a call from you.
Barrister Mark Milley.
