Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D59094D88A2
	for <lists+util-linux@lfdr.de>; Mon, 14 Mar 2022 16:57:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242805AbiCNP6i (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 14 Mar 2022 11:58:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242480AbiCNP6i (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 14 Mar 2022 11:58:38 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 692C233E3C
        for <util-linux@vger.kernel.org>; Mon, 14 Mar 2022 08:57:28 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id x9so4716116ilc.3
        for <util-linux@vger.kernel.org>; Mon, 14 Mar 2022 08:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=TcnmFzabnVlrWlVnhhq4XybHN4V1IrmAREQBmpF7ybI=;
        b=j5eEJjzu1vW/k0yC8PDb+JXUww2qMsOo0Si3Hl12Nh4KzjFKkak7zsaFeKY1ijldAr
         XZbBdRNpoPbrI2XbbEP1iBnNhKG5VZ5DyffPmuNS/aV6WkpL8+ZzNtjcH7HOK9iP3ZoN
         o7ixhybUkDxDgs8+wOOsLAz8ur/ni7CZjTxEYFqnoc8rRtx3Dwvb9X05pzer6R5SRC2T
         JNqHNaOAMrFWsMBAfDGxkZyf+AjRpFRRXCbdyGn7sBt3ZG+9t7qkzksXZSfQlnHfStNT
         Nyd1iQ1XCBfyB7n+gCkgchou9lF/IQWbsa8ZUEDArledgoIeQkTVVEc8pR+sPu6lCUZr
         pUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=TcnmFzabnVlrWlVnhhq4XybHN4V1IrmAREQBmpF7ybI=;
        b=PQI+vJos9o5VW5XfHRQ0gPnBappcVxrb6xjip0hJZA2cJUjUdzoPqbUegVaenfCMMJ
         cgvjN9Bwn67CFGXeTm9lHlh/T+znQMgwnlIx+YSwcbBZGfCW4FFXeC0fF9oXDRIxE3tg
         FZ13+54fuz/54sdJqaQ++FzBGt5nfudib6ncKZXDaAOCwY9iraJFm9Y42t9nHgTWgajI
         UJvLabL5T4Fgj3CWKEk6eiJn6rIxClPqPAKf3t3QGEO6ue9ySrpon0w8k+PIPz0DafhB
         ULIwqLwtB1K6UIgBNs8Pse34QHfM2vF3oxUWCemCi0nOWl246pcCRbd7ZU7fk/cgpMlW
         ThWg==
X-Gm-Message-State: AOAM530bcZ/yr/Wv2YeWNHG8kHa1pr9uK+TfylzE+Eqk91nJ/uWf1wMV
        x/PhWVthmWoIQ7ReZXJvM2BN+ooehDenkFFfo5M=
X-Google-Smtp-Source: ABdhPJzCt/xOARTF4/gZk7yfoBTKDOIBjFvSKi/VM9mtVAFIXO4oS95f7YTeMRU+OD8OxIC0+x97ewfJvRomExQksRc=
X-Received: by 2002:a05:6e02:216f:b0:2c7:7a3f:2a94 with SMTP id
 s15-20020a056e02216f00b002c77a3f2a94mr14005744ilv.267.1647273447763; Mon, 14
 Mar 2022 08:57:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:d9:0:0:0:0 with HTTP; Mon, 14 Mar 2022 08:57:27
 -0700 (PDT)
Reply-To: mrs.acostafahad@gmail.com
From:   "MRS.ACOSTAFAHAD" <fatoumaria1999@gmail.com>
Date:   Mon, 14 Mar 2022 16:57:27 +0100
Message-ID: <CANKifcXe-bh_G_egyhv9jCw7NZwC6z1F6m69c5j_zMo9HmFQZQ@mail.gmail.com>
Subject: Hello my friend
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello Dear!!!

Get back to me soon i have some information for you.
is urgent.

best regard

Miss.Acosta Fahad
