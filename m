Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8F2170A6BF
	for <lists+util-linux@lfdr.de>; Sat, 20 May 2023 11:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231327AbjETJgB (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 20 May 2023 05:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbjETJf7 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 20 May 2023 05:35:59 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8DDDE56
        for <util-linux@vger.kernel.org>; Sat, 20 May 2023 02:35:57 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-56190515833so26779767b3.0
        for <util-linux@vger.kernel.org>; Sat, 20 May 2023 02:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684575357; x=1687167357;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=MFMY/Uu8AKE6p5lD43lQIWBsYrUsoinnH8JwKWCwTJHaTTziIwDAzyB7R+RJl/PALC
         c2SjukhCXFTt8rlEToiaBrSJOo/OyL9v3ucyGEtHo10yiyVoTLnLbyWfnbBSfSJiJhSx
         vaRD4VV5J+uLk8nYqBsuLjDSvu8AbbX8O4DZceiCHiw4rDEtIA772AzV4cVY1e+FDST7
         f5u1rCePXy4zqtXYe1CQEdzt9skEF906Zf6LvnW1O9Y+yy7k3VHLYIozWLTQmithJJ9r
         pdk4w9MlUc0eDkXGcZjO7fXzmVx/oPlvKxZcnDLEf6EJiEYowZ4MbzeQ8mq53H0Gx2Z0
         NjOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684575357; x=1687167357;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=WQfPwD2qSVrrp34OjGGKzTG0KfgBAlXi3CZJP/sTLlHdUuO9UpVU+5SQ7qEtgEo+Go
         gA8V1AZoYAS5ydPf5BHEPGSI7zgHZhQkpG5CDZd14r0vuChgVmzM6d59dUhzWgQX2Hxy
         XOIMoRxg/15zpUqVMCUJYSt0g8LHEILAiWvEjaD0hfbmCkSxj9DQHXS9mRvy9mkeyuxg
         NJX79nDYrtFljSZk48e+habIgGM6kmW2tnKBq6hRY8lwDq+72Nt8kKVLUC1BD2ionvFM
         HgD+tsBJ3jQK1d2TAO3WgecprwEY8zajhnQyHbmkdmqId0BZ0nopDTnNF0qG2MQ6L27p
         0JmQ==
X-Gm-Message-State: AC+VfDwvbMdLF8mOnJryUZdOFNkJHmdLA/Trvby4/O3tGwv8JV1eexld
        QtfE9Gq0wpzlEMZP4MDX61ENELKBPRmKdBo11+c=
X-Google-Smtp-Source: ACHHUZ4JRRxzmlKE6PnG2zwlxil1pgJRiPkIExpSnGpU6z99j4Q0uxyQTl9BhUksl3xlEyiuH8KuqFtbjRyMz/DV+3k=
X-Received: by 2002:a81:1bc8:0:b0:55a:776e:95f3 with SMTP id
 b191-20020a811bc8000000b0055a776e95f3mr4600086ywb.25.1684575356788; Sat, 20
 May 2023 02:35:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:3acc:b0:2fb:68dc:b886 with HTTP; Sat, 20 May 2023
 02:35:56 -0700 (PDT)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <ninacoulibaly332@gmail.com>
Date:   Sat, 20 May 2023 02:35:56 -0700
Message-ID: <CAGYF=X50yCtcwmhih52hapMpwGWqP+yJHWxPCZWW5sVPK=zL5g@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
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

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
