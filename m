Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F026961D815
	for <lists+util-linux@lfdr.de>; Sat,  5 Nov 2022 08:10:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiKEHKY (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 5 Nov 2022 03:10:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiKEHKY (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 5 Nov 2022 03:10:24 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D71A2D1F1
        for <util-linux@vger.kernel.org>; Sat,  5 Nov 2022 00:10:23 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id u6so6771478plq.12
        for <util-linux@vger.kernel.org>; Sat, 05 Nov 2022 00:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c8XA1N0uaxkLO/wKHErNWHaSuu64k5Pjb5u9dmcZrOc=;
        b=JDAy4Lfayovb04fyP9X1N5uElnIY2iE80nMgdLs5pqw+7yl8Uj5fZiRbP+HQT2WT2G
         a5FeMSDXEQes5MEUGf3kTGpIAhMRpVrTpKlVccQImvMorS937nEqHkueCMi6I/TfkfES
         2WOLxp/dbny+ekRhR60SSzpt7sC1rZAi1fytG69d9q05WQUReIJvRAs9jIQpzTLNq1JM
         7N2aRb4RjP2S45aK9tTKE25YXfL+Vc/7EbDcGCymxR8NHVIfgiSG5l7Bhe/0+yjgDyUa
         3B69UTgu6ZiUu5kY3U/uTdlHVATTeZ3+gzQs+CL3jxin3kK4aOhHZt6JKtBgcj0P3tBa
         6ihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c8XA1N0uaxkLO/wKHErNWHaSuu64k5Pjb5u9dmcZrOc=;
        b=xYVpY8wfcTMHyf29xTGDmB6SiUixqZUHS5LGw3AbhTIKhEeIsSv9rFaD5D5ASA2BE8
         M9kYCctx6YqBNIHFyTvnc/iG4RiycXDA/+wA8UbBw/tBMVDgFoAz4PrzeLEjSL8dh391
         O+OAEh+WEXaDRWBTRKxQCGyzdDEo6tyLsG53FM0PKp4lrKA9U8UiS9byrpNrpovWm8Os
         bkOiu7SULT0VpN4h3qzE3W+uhIREIMxzsGmFNGcWku00b6CgL2xU48aXDqxWd1CdHGcq
         t/17cuLINl1uyBqlqDTJUJaniUicCJh0MhRD0xwcDeyVN4PAAmwLOpyLl/0R5vY0DnUY
         s0XQ==
X-Gm-Message-State: ACrzQf2JfQ0A7mkSlJIVkebgcggrpFrP4Mu5u29I+J0DzORj+0QYZjdn
        FS0gm/Wxu02DtNh+b/K56al+Wsdv7k2B1iqXxXQ=
X-Google-Smtp-Source: AMsMyM6FpHCu1I9hrFckppahbMIb9TznfKa6HDPYReSVgx3vkyWPyLsNimmZgg+Z7hFUi+BMNescGGnukKDa7tIcHek=
X-Received: by 2002:a17:902:d584:b0:186:f4bb:4e2b with SMTP id
 k4-20020a170902d58400b00186f4bb4e2bmr39731238plh.80.1667632222889; Sat, 05
 Nov 2022 00:10:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a11:f584:b0:357:6350:d6dd with HTTP; Sat, 5 Nov 2022
 00:10:22 -0700 (PDT)
Reply-To: stefanopessia755@hotmail.com
From:   Stefano Pessina <abdiwalibucul@gmail.com>
Date:   Sat, 5 Nov 2022 10:10:22 +0300
Message-ID: <CALxMMKqvZKZrYwndSqmwjR5ZPLbe2vNsSMueY0o4ZHjFT5DmtA@mail.gmail.com>
Subject: Geldspende
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
Die Summe von 500.000,00 =E2=82=AC wurde Ihnen von STEFANO PESSINA gespende=
t.
Bitte kontaktieren Sie uns f=C3=BCr weitere Informationen =C3=BCber
stefanopessia755@hotmail.com
