Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D19A6C14E4
	for <lists+util-linux@lfdr.de>; Mon, 20 Mar 2023 15:37:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231786AbjCTOhK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 20 Mar 2023 10:37:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231807AbjCTOhH (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 20 Mar 2023 10:37:07 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 332E624BEB
        for <util-linux@vger.kernel.org>; Mon, 20 Mar 2023 07:37:03 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id le6so12614503plb.12
        for <util-linux@vger.kernel.org>; Mon, 20 Mar 2023 07:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679323021;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4jlL8pzL6NVZbuVjV4h5KPilkuQmPMJRpXcDIhZ2tX0=;
        b=ptIinXvGwFoGye0/Zi7M4vb0uxp022gsZztrlskOQ9IBCDwFFXjMKl7NDDssC1W06G
         S8rdSiLkGitfodEo0yycW6x/nNXT08bPnPdJG/IGj/hdv/p+A38J1lT7unaCal7g6cZ8
         769JqFcgaBuB4HskQJYmlfwMUmYhxswB9UrxYMX7N/fDDTLplVsHbkRvBGgwS34Z2L0I
         +BmNKcZCgrp8sGY2bgTOrUGJjLe8sMKtU6dTZdPOLUNrFR2e3knfXBwseReQaxC16tZc
         T1ygeQvAyzJjrkKrtnFQCkq2r5RnQ8W04aDtWzbzwRQ1/7sO4/J7zonOVZ7hvzzNFx4z
         QQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679323021;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4jlL8pzL6NVZbuVjV4h5KPilkuQmPMJRpXcDIhZ2tX0=;
        b=O5LfI01X5Gs1QQtaIEvxdI5HHTA6WjcIAq9oxzTJuOxY6Xky0+QmZxrB4J/yD1CHuU
         5MqDTegTN64Fit9X0JV4oWpELrM33niH7KF2HGJ0PCzJLsz++9qNIpHFKLpqOw017fGR
         OvjBweTYoTBiEMWZQf3rmgn8S5gCJLg2kqvIriVsrYke/a5rKzAWGM/pv1M3zTHmd1RI
         bpJODHtHfhzhLH8DHakiEJqSr1hhO8DmhBTs8Z5L/eqSiwXCTF4CeeaPXCpmZBpP3q+L
         3Gdh+EGR7UhY0MhvqkAsluJ/+saVS7KpzN1CtTZkcvYg9OlI3fvNcm1jIAdOPV5/ijQR
         KGCA==
X-Gm-Message-State: AO0yUKW3ztbmyCBuVpApMcYZORzXhNHXFVFQTOK+ueJE4G3IwYvVaYZV
        EDMM34FFZNyJ7D9eqhCFOafrEC9lpWoJW/OCMMM=
X-Google-Smtp-Source: AK7set8fUHjeeCUdbbLHASbyEjNogrMWtNS2ckLoIE3BhJYmmHh5QzBMtORWpkCkHrFLCRsJYppDVOJdjRu2oh3VCTo=
X-Received: by 2002:a17:902:e5cd:b0:19f:3b0f:4d97 with SMTP id
 u13-20020a170902e5cd00b0019f3b0f4d97mr6716427plf.6.1679323021627; Mon, 20 Mar
 2023 07:37:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:e019:b0:b2:27f7:dc2b with HTTP; Mon, 20 Mar 2023
 07:37:01 -0700 (PDT)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <ninacoulibaly213@gmail.com>
Date:   Mon, 20 Mar 2023 07:37:01 -0700
Message-ID: <CAL52bybotkBc=zETh0=_qW+Tpgh-0iP1yNs5DHsS3LxV0cjv7w@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:633 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [ninacoulibaly213[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [ninacoulibaly213[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [ninacoulibaly03[at]hotmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Dear,

Please grant me permission to share a very crucial discussion with
you.I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
