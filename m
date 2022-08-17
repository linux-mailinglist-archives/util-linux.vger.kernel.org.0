Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57BB5596A72
	for <lists+util-linux@lfdr.de>; Wed, 17 Aug 2022 09:37:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231858AbiHQHcS (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 17 Aug 2022 03:32:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231865AbiHQHcS (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 17 Aug 2022 03:32:18 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BB816E2D6
        for <util-linux@vger.kernel.org>; Wed, 17 Aug 2022 00:32:17 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id f30so11397205pfq.4
        for <util-linux@vger.kernel.org>; Wed, 17 Aug 2022 00:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc;
        bh=6EKS55FG/N5jiLPU84o9FdVsQINPsJTprgDz5KNgP2o=;
        b=qp9xm9Q2keBD2H0qCaQraQS+7HYckwUUrMN8trnWEuRbcwFR97CpRyIv0M9sS36vK5
         GkGS0TgBtzfq+Uj+mdvUKChmmqxHx/qlGn48h3aTkBDFjqcpGrhEu15U2w184nQIvviP
         dpjofYcQ8g0zxcCapimFyCNzRzRovMyRQRYHn3tOHWaUh7ShLR7Iz6GRrXAMLDvisnQy
         cLuvCJWibRHAs7eEDINJDBQNCGa/6aDXKnXogHoxeLds79na//qK/x8J2ppzBu/2G0j7
         6K+7z7XfXMBYQT4W8OsBFoi+0PHOsG+Li6NsOQt7EBYPL+P1+5IFcsrxZw5ZGZmjiLNU
         IbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc;
        bh=6EKS55FG/N5jiLPU84o9FdVsQINPsJTprgDz5KNgP2o=;
        b=y43J1wNO6FUpr1/5FbG6R4XIhh82yCwS+82yTcPU6A1wTzEIhZQZ5a34Uv9cLXoHsm
         4dujhuGxqs9hISB0JurGbAS5I0SAQaG7sT4NqLwsfhFAaGAhrfe9T6ul8sn066fIr6j1
         BoK+gxSRffkO01P6n0QUIC/4WGcErL8CpLKDPRpJGTAqkeesrr22Pw8/QkbFTahWrGvx
         g2+RaHmMjnXErLdTrSyTpgWCoyawuQmrRM36A4KksXI1AuzEBqS3i0SspjFKH2/zGmNS
         /e/5GoLrKFlxjEznbzX2BHYt1urPtuGfCtNNVqMn5zdWRzY+j2R5XtSWo34szNPZJECf
         K+Xw==
X-Gm-Message-State: ACgBeo20T+XTNc+NbpKF8tSVn5H4XoMa3NY1Kudm1SskZVwVbaZoAUN9
        4wAYxrvEypwT+9GohEv/d1aBi5O+4FMgxzbe1p4=
X-Google-Smtp-Source: AA6agR44gPGH2Ggwgxh2mbJ6YYpx6b7pvqhtijKYIAbhvNJRMfH6uWC3KDL+3BnzjPMhWWjKLxzi1zfGk7Pr6CLHAR4=
X-Received: by 2002:a05:6a00:181f:b0:52d:87ef:f9bb with SMTP id
 y31-20020a056a00181f00b0052d87eff9bbmr25331354pfa.70.1660721536337; Wed, 17
 Aug 2022 00:32:16 -0700 (PDT)
MIME-Version: 1.0
Sender: mariepascale3300@gmail.com
Received: by 2002:a05:7022:698b:b0:43:900d:964e with HTTP; Wed, 17 Aug 2022
 00:32:15 -0700 (PDT)
From:   Lizzy Johnson <lizzyjohs06@gmail.com>
Date:   Wed, 17 Aug 2022 00:32:15 -0700
X-Google-Sender-Auth: 9iddeHw6abiHtzA8qN6dZFNY2Ig
Message-ID: <CAEncm9dMXDtAya8BHf0VuN0XVdYg=zYOU_txmxZqNYhVCRAtAw@mail.gmail.com>
Subject: Lizy Johnson
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=2.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Tervehdys, olen rouva Lizzy Johnson, olen 65-vuotias. Sairastan
pitkittynytt=C3=A4 rintasy=C3=B6p=C3=A4=C3=A4. Olen valmis lahjoittamaan 4 =
500 000
dollaria ty=C3=B6h=C3=B6si kirkon kehitt=C3=A4misess=C3=A4 ja
auta k=C3=B6yhi=C3=A4, apua tarvitsevia ja v=C3=A4hemm=C3=A4n etuoikeutettu=
ja keskuudessasi
seurakunnat/seurat.

Olkoon ja pysyk=C3=B6=C3=B6n Jumalan armo ja siunaukset kanssasi.

J=C3=A4=C3=A4n odottamaan vastaustasi.

Terveiset,

Rouva Lizzy Johnson

///////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////

Greetings, I=E2=80=99m Mrs. Lizzy Johnson, I=E2=80=99m 65 years old. I am s=
uffering
from prolonged cancer of the breast. I am willing to donate the sum of
4,500,000 US dollars for your work in developing the Church and to
help the poor, needy and less privileged among your
congregations/society.

May the grace and blessings of God be and remain with you.

I shall be waiting for your response.

Regards,

Mrs.Lizzy Johnson
