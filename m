Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96545522B66
	for <lists+util-linux@lfdr.de>; Wed, 11 May 2022 06:48:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230464AbiEKEsl (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 11 May 2022 00:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbiEKEsj (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 11 May 2022 00:48:39 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18FA549C95
        for <util-linux@vger.kernel.org>; Tue, 10 May 2022 21:48:39 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id g184so794251pgc.1
        for <util-linux@vger.kernel.org>; Tue, 10 May 2022 21:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=s3Cdswvtyrq8qHVwuRB9YRoTAIoD9G/2//h6WeFZHzo=;
        b=YO+gKPf/uT7mUL7PoBD9GeUyDFd0GtrExHg6jC/q/B1Q5OMTQfItWSUTwBgtO3+mUn
         kIVXmdWrccx5cLND8H3/B+S8mwXU9tjNK1Z7iIdy6xt3IKgjjD70K0YJsJ4+nmIL40wZ
         8Y6jn96eYjrUKQvjNdbpmVrWuwd+3o891sWyOJS1ByS6uJu64+qinUkz/zPID2DcNDeb
         Oja4hDVxPN1umsOY9jKiFBHh7seoMoW1oY9cH9UgnYU1c4XeAk03Nmzfqzimh+L1J75V
         DkzuI6Eu0u19tWdiu25oCVqarEoeNyoUSCgY/I+cHjhpcDUqvwZ4QJgUr7tQdasvfmcN
         FSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=s3Cdswvtyrq8qHVwuRB9YRoTAIoD9G/2//h6WeFZHzo=;
        b=QULg9iKnyhANQzn3RerLWVt+pER1aJ2nrnW5yKEj81g9Fq01RIKkjh7R53g8s4eN0Y
         Tu3Vc821px5+4nVZ435fC6mekAPfe6lwjuQobJMUO7YBZeD+jl5GnoKQ9XokXErdqlsX
         1kiAIFtbvaeKK5BAk8N9fqbQ4h3ErqP+V7d8RQC+e+3nsmx9fEc2mnq659WVof2s8ELe
         XtCRSpUYPlT/FawoEQxAUqGJ42AutYGmKDiwRvchngTp+4CfKod13I/DFcJSO70v1I3y
         DuNXStwPsyN45kq7Z5wcn4PNpO3TJIgt6Tz4/ml3FoDkvGdEM1kqtHeXo8iyR9re0V0w
         frqA==
X-Gm-Message-State: AOAM532F2Ugd+5KNCzQZskFtOJuK/Lcf9CBfSM0g2hkAkEH6kMU20Jyx
        qw7eXPH8BXV3f0wngaV5jytYuik1ucwEqM0IOZg=
X-Google-Smtp-Source: ABdhPJz0NNGMP3XwpmnYyzEILBApnyTw4/YWgvUfnzr+9U83wH1nnLAsNxP0TJj+O6NEVEmjqDvMtggmCwp9pwqt6w4=
X-Received: by 2002:a05:6a00:2382:b0:50d:fa40:1077 with SMTP id
 f2-20020a056a00238200b0050dfa401077mr23670898pfc.8.1652244518506; Tue, 10 May
 2022 21:48:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:319:0:0:0:0 with HTTP; Tue, 10 May 2022 21:48:38
 -0700 (PDT)
From:   Private Mail <privatemail1961@gmail.com>
Date:   Tue, 10 May 2022 21:48:38 -0700
Message-ID: <CANjAOAi2yg=muUwZNCrqHbXb5MFukDHejEg-o3YzXjNm1yy4mA@mail.gmail.com>
Subject: Have you had this? It is for your Benefit
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.3 required=5.0 tests=ADVANCE_FEE_4_NEW_MONEY,
        BAYES_50,DEAR_BENEFICIARY,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,
        DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLY,
        LOTS_OF_MONEY,MONEY_FRAUD_5,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Our Ref: BG/WA0151/2022

Dear Beneficiary

Subject: An Estate of US$15.8 Million

Blount and Griffin Genealogical Investigators specializes in probate
research to locate missing heirs and beneficiaries to estates in the
United Kingdom and Europe.

We can also help you find wills, obtain copies of certificates, help
you to administer an estate, as well as calculating how an estate,
intestacy or trust should be distributed.

You may be entitled to a large pay out for an inheritance in Europe
worth US$15.8 million. We have discovered an estate belonging to the
late Depositor has remained unclaimed since he died in 2011 and we
have strong reasons to believe you are the closest living relative to
the deceased we can find.

You may unknowingly be the heir of this person who died without
leaving a will (intestate). We will conduct a probate research to
prove your entitlement, and can submit a claim on your behalf all at
no risk to yourselves.

Our service fee of 10% will be paid to us after you have received the estate.

The estate transfer process should take just a matter of days as we
have the mechanism and expertise to get this done very quickly. This
message may come to you as a shock, however we hope to work with you
to transfer the estate to you as quickly as possible.

Feel free to email our senior case worker Mr. Malcolm Casey on email:
malcolmcasey68@yahoo.com for further discussions.

With warm regards,

Mr. Blount W. Gort, CEO.
Blount and Griffin Associates Inc
