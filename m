Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C6D55469DF
	for <lists+util-linux@lfdr.de>; Fri, 10 Jun 2022 17:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232127AbiFJPzn (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 10 Jun 2022 11:55:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229866AbiFJPzm (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 10 Jun 2022 11:55:42 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE6DB2F5A53
        for <util-linux@vger.kernel.org>; Fri, 10 Jun 2022 08:55:39 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-30c2f288f13so276466497b3.7
        for <util-linux@vger.kernel.org>; Fri, 10 Jun 2022 08:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=11+2XMq8SYIWECjTpUiuPjHjpApS2DnUNXHHcHU2SCw=;
        b=HlULCzfd9VafkCYbGvVapMXeg4kAOrEhpCHEyPuaXgHmFo+x79kRn/Pj5+pWJNZIDX
         DaB0s2jm11z7fzH4eJnBIFzqUda651HlXxgjTxqSG51UspnJs9XwphnbSkHFWTf8Js9L
         7rFlAKm0OfvFXgnHxsh09fjVuySOnbJZy7UYfcDs8fqjcGDtL5JZ0bZkUykthbN8C+5K
         iY9VY4t4yA7iDuFW8Abll3dalJpeWPPcX7UwjpfhvqbDUtlNkhRSVmysXxNIsweNzxgl
         lGgr8aokgyPj9pwbpD2QdBIqgpu6Mcd0kXu0mbISneXcyoHgL82eUbNf36RwWFDu7u60
         aw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=11+2XMq8SYIWECjTpUiuPjHjpApS2DnUNXHHcHU2SCw=;
        b=ayX1izUqo8IYEgjAag+kmAlBR8b9hAYmWY4pwpsFuDWvF38n0ln8OwZuO6OKLEivSU
         XY+p1/mtlndsWn2gn6Zwd2tyRnM1rGO2y0lI671zYkKCrH1fnRiOREnlA/yR9xR06GoN
         w7phCKZYikx7L2tk1oHWr9R3DZdkRe/3+5uz3sndf5dtSiAOC0ZHdyDPSj09hskVB+Ul
         7TIJhmTw6FGsP4GgJE2YWB50dHvINL5rCVTHo/3uFgE+0J8YAYxbUfuQmQJzCOKwssMg
         p1lL7VLT04GXbmV0qJFsi18gIJDKt5IAKrJ9PFgclwLihTAkwTerqisP7w6gT8QqJ+rG
         0xdg==
X-Gm-Message-State: AOAM532DOk63WjydPVq0hQXZ0bZOWZ3SqNTika5wIz5lAPX7KYsdg3Qg
        8ICXEWkXHrZbM+MMlXD1nZ8ioJGNaQqFpHJ3IlA=
X-Google-Smtp-Source: ABdhPJyeyyzL34Mw2SmvYO+lVen2DamLJ63hzNQKadSrYhMJF1nSdlfNK4Ado1I3xRWD/awW2I4kLwWxt149sS6ebes=
X-Received: by 2002:a0d:e246:0:b0:30c:5e77:7104 with SMTP id
 l67-20020a0de246000000b0030c5e777104mr51573719ywe.448.1654876538924; Fri, 10
 Jun 2022 08:55:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7011:d4a:b0:2d7:3b18:75cd with HTTP; Fri, 10 Jun 2022
 08:55:38 -0700 (PDT)
Reply-To: sgtkayla2001@gmail.com
From:   Kayla Manthey <parfaitkoffiadanlete@gmail.com>
Date:   Fri, 10 Jun 2022 15:55:38 +0000
Message-ID: <CAJjesSDXSDrcbRdjr6hB07SMRRnX0YsDfkST48eRzCKXnsdmAQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=4.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

LS0gDQrQl9C00YDQsNCy0L4sINCy0LUg0LzQvtC70LDQvCwg0YHQsNC60LDQvCDQtNCwINC30L3Q
sNC8INC00LDQu9C4INGY0LAg0LTQvtCx0LjQstGC0LUg0LzQvtGY0LDRgtCwINC/0YDQtdGC0YXQ
vtC00L3QsA0K0L/QvtGA0LDQutCwLCDQstC4INCx0LvQsNCz0L7QtNCw0YDQsNC8Lg0K
