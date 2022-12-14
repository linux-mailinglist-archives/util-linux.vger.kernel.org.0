Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F5D364C5A1
	for <lists+util-linux@lfdr.de>; Wed, 14 Dec 2022 10:13:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236681AbiLNJNJ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 14 Dec 2022 04:13:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229806AbiLNJNI (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 14 Dec 2022 04:13:08 -0500
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6799D12AEB
        for <util-linux@vger.kernel.org>; Wed, 14 Dec 2022 01:13:07 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1322d768ba7so15845372fac.5
        for <util-linux@vger.kernel.org>; Wed, 14 Dec 2022 01:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nuvBIf2lT6ew8E3Gonh9xI5Qgd+TLMqmI33+g9gdqOQ=;
        b=AS3rWKK+52TNQww3QEgjQqefDiec/j030OjXlHNOlkMcXeKeTRNBLqxYacA25U1Mbi
         nHJvn65h3W5L3m5NyISDCcpKe/WQ5bY3nHNAmd0YiIp5OMGcS7lpMBjeuPkRemI9bm3W
         Gjj7HfBM+o03nPQ5094bs+7P2G0dOQFDnMrBw/sF28GwlQqahIWMCgI3iqz3PZh4e3zA
         Agdtvbo2/q81BHlVKZAGFXZVjwoce/YfbUx+3/XhkmQszXl7i2VYxP1tL3HL4qaP5yjl
         3rnkazgqa9Qpe987uRredKRcFrtm1hN8d7zYJ3kHV2nWmfLY0xciNYaByjYn5oUYsC9P
         irgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nuvBIf2lT6ew8E3Gonh9xI5Qgd+TLMqmI33+g9gdqOQ=;
        b=gegg1nRxWGkHCEeXqObMH6yETCEAGYCnLV2Kqp60SrYdadwnFN4NFO43Xk19mAVOo3
         h4n2liEbsiZ16u8FbeAIMas7WNqXR332E6t7GWDHOysWgss5APHV5AKegBxj6/pYA+4A
         /QeN5k1EUlrE3jBLScE9F85yeECqNQB6T+J7wRuSWjQvefLgcSF3J5HePNku90E971GC
         /74zsy2fa7oBlyscyXHQ1TQWc4Uo1sHg0jIdXxOi0z9ZW87kcPOKbtsGISK75NRQ3soj
         NDF77QDnt/Zw5jKykIcs+HEBFNeqtZeEAnLWRPu2mAMwaqbi4HwDMUwF6PHLiHxUGl7r
         yXLA==
X-Gm-Message-State: AFqh2kosJBRrRETL8cCRAKIL3q41/gVVZLtnWisXR8VYtPX+JsIVqaJu
        S3aSdNIa2bRUr2Uz9/3144nlvAL+0QVZ96hvLw4=
X-Google-Smtp-Source: AMrXdXvsMY/ixPHf0p+BwkQzlMJBXZsCSagEMEBIUJ/TQ4XVDXKvh+oZq63xqB7pDnSlaTTYvYShO5tPZGW7DCcmu9o=
X-Received: by 2002:a05:6870:1b8f:b0:13a:dd7e:7bda with SMTP id
 hm15-20020a0568701b8f00b0013add7e7bdamr129836oab.222.1671009186810; Wed, 14
 Dec 2022 01:13:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6358:7211:b0:dd:1fa2:ef73 with HTTP; Wed, 14 Dec 2022
 01:13:06 -0800 (PST)
Reply-To: phmaanu21@hotmail.com
From:   Philip Manul <lometogo1999@gmail.com>
Date:   Wed, 14 Dec 2022 01:13:06 -0800
Message-ID: <CAFtqZGF_tx74KaNZY7ja9zqCYwK0Z-y6m9k54SrWRQ5z3kcVUg@mail.gmail.com>
Subject: REP:
To:     in <in@proposal.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.5 required=5.0 tests=ADVANCE_FEE_3_NEW,BAYES_50,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNCLAIMED_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2001:4860:4864:20:0:0:0:32 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [phmaanu21[at]hotmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [lometogo1999[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [lometogo1999[at]gmail.com]
        *  2.4 UNCLAIMED_MONEY BODY: People just leave money laying around
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  3.0 ADVANCE_FEE_3_NEW Appears to be advance fee fraud (Nigerian
        *      419)
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
Guten tag,
Mein Name ist Philip Manul. Ich bin von Beruf Rechtsanwalt. Ich habe
einen verstorbenen Kunden, der zuf=C3=A4llig denselben Namen mit Ihnen
teilt. Ich habe alle Papierdokumente in meinem Besitz. Ihr Verwandter,
mein verstorbener Kunde, hat hier in meinem Land einen nicht
beanspruchten Fonds zur=C3=BCckgelassen. Ich warte auf Ihre Antwort zum
Verfahren.
Philip Manul.

***************************************************

Good day,
My name is Philip Manul. I am a lawyer by profession. I have a
deceased client who happens to share the same surname with you. I have
all paper documents in my possession. Your relative my late client
left an unclaimed fund here in my country. I await your reply for
Procedure.
Philip Manul.
