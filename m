Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA25C4ED538
	for <lists+util-linux@lfdr.de>; Thu, 31 Mar 2022 10:08:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231950AbiCaIKf (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 31 Mar 2022 04:10:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232570AbiCaIKf (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 31 Mar 2022 04:10:35 -0400
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFCD05D5E3
        for <util-linux@vger.kernel.org>; Thu, 31 Mar 2022 01:08:48 -0700 (PDT)
Received: by mail-vs1-xe2e.google.com with SMTP id i10so11405450vsr.6
        for <util-linux@vger.kernel.org>; Thu, 31 Mar 2022 01:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fSoYIXfV2r4++j3VCaH+K6Kjho8kk9PCyUelDeHv8zk=;
        b=UjMMPO/GHbcE5lkWbpOau8kruSQ2BSCNLJaRbPW9rb/UfXtghUqVKDMX/t7CN1xzX6
         WDE+RydnntcYvbyhTOLfUcWsJjV+cB7J40IA4bgIsUHSJmKMMnEV5BohLvP63JLcMnsk
         BeZlGA3mDlLihyORO951xntLktF2hDWwazgKct0UAgW4bKKlxtWlapnMJxag84/7qW3M
         7HdYnY5ZMDbX7Bjf9j3jD/6hg59z7Gct9GQ2MCVUMfAfYgwKGUI2u4GJG9xsCBxsvGs/
         F35ma5VB4PDvtyP6brh8Mw0Wa1R88iFJX5VjcwFWKX7vnx+Yvh4wH9f5ROwoLJ9pL8aN
         kWsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fSoYIXfV2r4++j3VCaH+K6Kjho8kk9PCyUelDeHv8zk=;
        b=yfD0cdS1SLzg2/Z0ODVlKxgd0rWzLN3OIxxUgOdPTBJJH/jKqsYaLk0+eZd6n36dx4
         sftYXCY1vn1c0lwAzkDRkLjL2HFOMooOAIP9wbcXF8nI/Xvehu26T48ucIFc/bGbsmBD
         SOzDQtKr7wWapDm9KjcfTSsUVX0ic8lH18a7p/WmOPbTwyJvn8noWk811zAyWw6L7PJj
         jOzCsGBRfob5iCUAR+q4Z8dXBkhAlP0kLjm1dESQmgn2VLX473zclQpzTcwPJWzYprJu
         pfJcFiuXIbiS3Elg/2RQuCUirzbXiApinsEBj921mPPpWIOKVe8VEMM+AJTR+9sBhCS8
         Do0g==
X-Gm-Message-State: AOAM531QlyCVZBClpiUPWVmsgAeTjbuKmcDLz1ok1W5vdGXoF4NIAx3g
        W2a16y+0qdJsWjx37nRdavgN0cnjR25sIzKXvApR25DKrBg=
X-Google-Smtp-Source: ABdhPJw+ZhThAjy1LMkTZ+n6GaHltxPh309i921FhAenvW+Xz7H5Be5xMuPBkr6NFF77aWv3d2E3/I+9Wz/psbDvLkk=
X-Received: by 2002:a05:6102:3593:b0:325:8af7:fc61 with SMTP id
 h19-20020a056102359300b003258af7fc61mr1530726vsu.50.1648714128036; Thu, 31
 Mar 2022 01:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220330174326.uowsx3tludonu35i@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220330174326.uowsx3tludonu35i@tarta.nabijaczleweli.xyz>
From:   Anatoly Pugachev <matorola@gmail.com>
Date:   Thu, 31 Mar 2022 11:08:37 +0300
Message-ID: <CADxRZqwk7_9KiQrJV5_KvUP4KEy_fPZu13papeg3A6fzhsCC9Q@mail.gmail.com>
Subject: Re: [PATCH] libmount: fix typos
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     util-linux <util-linux@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

> -               *uid= pw->pw_uid;
> +               *uid = pw->pw_uid;


you could probably patch as well:

./lib/idcache.c
./lib/colors.c
./login-utils/sulogin-consoles.c
./misc-utils/lsfd-filter.c
./sys-utils/dmesg.c
