Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9927052C767
	for <lists+util-linux@lfdr.de>; Thu, 19 May 2022 01:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231146AbiERXUn (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 18 May 2022 19:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230058AbiERXUn (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 18 May 2022 19:20:43 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF26946641
        for <util-linux@vger.kernel.org>; Wed, 18 May 2022 16:20:41 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id n10so3524403pjh.5
        for <util-linux@vger.kernel.org>; Wed, 18 May 2022 16:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=675CvuSp++zNLeIUZybBsP51nvc83dY+2bSGb3FYErQ=;
        b=O/vu94gnge39QGrfD025m3Zo6Z127oOr8bPqNIxHwAhzN1SFa26A8YjsJHXdxlteuE
         +dpItDtE2fkHVglQ0PJTJDRs/2aAz8aIvKc7m61TMVcj25IDtYwYDylMkgK627eiAWiJ
         Y6h4kSUbSZhmF4lhLArhjeJsyZctmtsxn31LSqhW2TC094DTEtb+4o8QYWTUA8YkrA4D
         UytdRf8EJT4KgCDagajolcucEpsJN72zvgapOiQQEInc/vGRzHtY7s8eUUKHBhnjlWil
         3cwFe6pelmSHUOb5faUn1LyzuwBmdu9qUVKGqosk3waYN9yP53yZ6uxsWeqSAMT3Lgs2
         LsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=675CvuSp++zNLeIUZybBsP51nvc83dY+2bSGb3FYErQ=;
        b=eQlHjM+OtVBSE1ig9L1ibaJb2pfeXlJHqLywK+nNzWAqFLiZ5at4FOQ6FhLkQkjhiI
         Nb2yCcwSPkCtXpJE3bbqY4zFJlLvB4EOdkkRbCuSSTufhtpuQwo6xbjK2mdz0XI+a9pE
         LK4FwSHsB2b/vT8wzaRUsSXIlYRMaqZejfVJq1hovjMfTGTeYGijqBcUywIMgzhxDFRk
         vlM4OKP4wVIHGz+CMYeZV4NFEKsaedo/FH0Tz+2oWdpyq/wKFZhDXa1zCnIvgbDcLHDJ
         /kDXWASrt0mozssXUY874EaFZM2o8THW/2hVTJQ+V42mKMs2RtMcDeCM/1beSc2KTN1/
         DtgQ==
X-Gm-Message-State: AOAM532TYlVQh37cJx90Vb1hA201Aaoi35w2xD9G2IDSJ/S2kMyMitc5
        24Afbb69EtvNAeKk8GWXvnXNQP9ynZBUlqL07hE=
X-Google-Smtp-Source: ABdhPJyGhkizYGoQHiRx/VowFi2xLrLfGPWOAbL/snGKFyu8yyQkVofAu1VwYWkEK9kfS2R4QWSBVENNKe8ofguxQu0=
X-Received: by 2002:a17:903:234d:b0:161:994f:f850 with SMTP id
 c13-20020a170903234d00b00161994ff850mr1721957plh.47.1652916041377; Wed, 18
 May 2022 16:20:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a06:88d:b0:4ba:87bd:247f with HTTP; Wed, 18 May 2022
 16:20:40 -0700 (PDT)
Reply-To: tonywenn@asia.com
From:   Tony Wen <board0455@gmail.com>
Date:   Thu, 19 May 2022 07:20:40 +0800
Message-ID: <CA+OyLeQKs9LZfrhpC70D-Mqe+6Vj=Typ7a75GEQwhuBOQwgqnw@mail.gmail.com>
Subject: work
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.4 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Can you work with me?
