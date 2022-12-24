Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9257465599D
	for <lists+util-linux@lfdr.de>; Sat, 24 Dec 2022 10:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbiLXJV1 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 24 Dec 2022 04:21:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiLXJV0 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 24 Dec 2022 04:21:26 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF544389D
        for <util-linux@vger.kernel.org>; Sat, 24 Dec 2022 01:21:25 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 1so9908477lfz.4
        for <util-linux@vger.kernel.org>; Sat, 24 Dec 2022 01:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pTCYA9g8ZoeYFZDn0yB/2WUtx7LggnssXWfP1zG6L+s=;
        b=h4Nmj6HGCIAHFOgoMATPjOUE65+DNGCdNlZASDiNLZlbaS3gNkNwBh2xZmeEvzL7ke
         zRhnCa4EpLrIyRdVnRY0ZRD9UHVKbUr4RzrlzjVoIZyiuFEKWq+9nIpQTQsgHEEEeH7D
         V/bQRaTjhNP5kpGws9T8YrZHVfZjF2NO7RSQK+I0CBU8fu7l6eg+3dhuRxXSFT3v0tLu
         2mUOWuvLtDu9AtvrZ2QJmfxykauh82tJ8Dt/K34vP5wwe+NcwMm8p2NRrdbaIPH6Clhy
         t/GJ4dImcmoi7K49KO5vDoz5HF0GK2sflwWXQnfNoNK+4xkjb4kHwvxjjXylvjZWaChS
         PM3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pTCYA9g8ZoeYFZDn0yB/2WUtx7LggnssXWfP1zG6L+s=;
        b=3yQAonDOo388AYIcHzyD+8mfl6xo2hAtFl55+6qKs9r9ivygza43XrSLKWjufpZ5Vx
         mnajlE7EOMDiTKpsYj+JkjcdcBRLBg0J23kunBi+iOM+l6Y71RPrejvIJcd9rvzUhzNy
         RatAdP+a1ypQ6H5SKJhq6FZkIkogtBKYU6HEHLTuSUO+eD96RhcHwRL6oZmVkmZTwrPM
         pPzdjH490HwY+jVfrGCr0SWE3XOgwlXz3uzoz4Lz6OdnjvL81/oS83G2rAiMnbj9E3ju
         2omcAXLzE98fTDjvAWPIodEnmSqtcjwAi/J1E3kwN9BDvr4NkFdjHKiOphR29/NIks+5
         IQ4A==
X-Gm-Message-State: AFqh2kokMLLKpbOyvdtoLPHPnLzhMeQ2lRnC9zcomMPAbAmCruZH+g3t
        fu/A6DCFUd4RlR7+pb4xLEYHLtvGWaiJ286G7LU=
X-Google-Smtp-Source: AMrXdXvtZKh9ZcUZE79HZ9uGfXmhpV5TgM0tq5RmkvvMEW8m1lAFKwl1fpneb8asK3iOJHy/wWmsRJmID3VXWlqhtSI=
X-Received: by 2002:a05:6512:3f07:b0:4ca:f873:7cf3 with SMTP id
 y7-20020a0565123f0700b004caf8737cf3mr304094lfa.89.1671873683674; Sat, 24 Dec
 2022 01:21:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6504:a07:b0:20e:2d61:50d3 with HTTP; Sat, 24 Dec 2022
 01:21:22 -0800 (PST)
From:   Koko Yovo <koyovo1959@gmail.com>
Date:   Sat, 24 Dec 2022 09:21:22 +0000
Message-ID: <CAPSYX0a3s+19yXacGa8S9oxm7HJb0-QH7KjkJ+82fSQ4krzUTA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,NA_DOLLARS,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Why are you silent I hope you are okay because this is two time now i
sent to you this mail without hearing from you? Today i arrive back
from my trip and you are silent over the mail i sent to you since last
week please let me know the reason why you were silent i was imagine
why you haven't response to me back  very important Please Dear I need
 your honest trust and help? With my good intention  Can i trust you
to transfer the Sum of $47.500.000.00 Million US Dollars, into your
account in your country if possible get back to me for more details  i
wait for your reply and Please Kindly let me know than to keep silent?
Mr Koko Yovo.
