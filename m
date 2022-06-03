Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7023153C968
	for <lists+util-linux@lfdr.de>; Fri,  3 Jun 2022 13:36:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242789AbiFCLdk (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 3 Jun 2022 07:33:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234831AbiFCLdj (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Fri, 3 Jun 2022 07:33:39 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88C7511C31
        for <util-linux-ng@vger.kernel.org>; Fri,  3 Jun 2022 04:33:36 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id d14so1022906wra.10
        for <util-linux-ng@vger.kernel.org>; Fri, 03 Jun 2022 04:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=PaEzrm9U0WjJMxkE+zbw8yGRv0uhjcRl9sFl9vmbKpk=;
        b=Qux+JHqNAUvUnK4Wn2y/Ifp2KOrK/Z/m1go6QLMjivoBsBrx4AuQoCSnsUSzqnhO/1
         vtwmejx4kbci0uV4QojBpexWLoBUYhFw0QtdqJtD00Z52v2BrnuFeEEGNRVHylEo98cy
         6cGBRa+he9ioNPxkLoctlgYNrWMWowlU3YbHs7AmzlbIekxULgS8sHtD1tkBjn43GEyM
         IOxUtfg7UsTxxf2lyb97AtKfgr1as6faOcwZATJWASlCy2eud5uAFAgPtXtlVxBzraaz
         7ex/sEGFII8BxnpH+1Fm892xA3MR+XaucCI3jzQs1G5tJz+u65+QuNuSMN5hcAxIrcKU
         Q4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=PaEzrm9U0WjJMxkE+zbw8yGRv0uhjcRl9sFl9vmbKpk=;
        b=v81ctJg+fKuU5wqlQ+sRo0bHGBsYFB48rhMqYvr/FIB7uuSZJXflmhHXXiuaf6Vdgp
         tUqvFDqwlKj0dvnIfaTLwIJQGgGSQl/AB+EmwDMegpUhs83sWmELnEkX9h9v5OmiqmmX
         F7txa6dX1ZHlu29ALl5fOX90MdljaF9lgCrzrZbnoM3l3bPXRMe+/MQsbfBKvGNLEYTf
         3aM6/eDnYyWy6v5Q68zgSk1c5W/hW05NEy5HJ8fuLDA8m96vh1niuVf0n7fzio51XKQi
         rfgTpfDjm61sPSPuKun3vduWD73eZnNcE7doH1WL2s+ibilUXjWTmDv5OF/0brAIDFFJ
         biYA==
X-Gm-Message-State: AOAM532c9jkuT7ABfFKWbpaOR/F2NXmhAb3AwgRsfNV3bxYm0tauKdy4
        elV+ABqOrZe6lImVN2JHWM6mWSdTx9TVMzl2d9A=
X-Google-Smtp-Source: ABdhPJyrm4DtzYclJmDFQQaR4x8Xx1xrCH0VpXzIJhu8pTDhUDYoDyshj19dPqgWShuscfgpQQbQ/1H9qNc6p9erVjs=
X-Received: by 2002:adf:fa52:0:b0:211:fdfb:92dc with SMTP id
 y18-20020adffa52000000b00211fdfb92dcmr7798940wrr.472.1654256014938; Fri, 03
 Jun 2022 04:33:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:64ed:0:0:0:0:0 with HTTP; Fri, 3 Jun 2022 04:33:34 -0700 (PDT)
Reply-To: markwillima00@gmail.com
From:   Mark <mariamabdul888@gmail.com>
Date:   Fri, 3 Jun 2022 04:33:34 -0700
Message-ID: <CAP9xyD2zfrXP-eo+axMijiKTe-Pc=p76RQaobsvN-LN5EJ1RwQ@mail.gmail.com>
Subject: Re: Greetings!
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello,

Good day,

The HSBC Bank is a financial institution in United Kingdom. We
promotes long-term,sustainable and broad-based economic growth in
developing and emerging countries by providing financial support like
loans and investment to large, small and
medium-sized companies (SMEs) as well as fast-growing enterprises
which in turn helps to create secure and permanent jobs and reduce
poverty.

If you need fund to promotes your business, project(Project Funding),
Loan, planning, budgeting and expansion of your business(s) , do not
hesitate to indicate your interest as we are here to serve you better
by granting your request.


Thank you
Mr:Mark
