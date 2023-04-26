Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 718696EFB02
	for <lists+util-linux@lfdr.de>; Wed, 26 Apr 2023 21:23:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239381AbjDZTX3 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 26 Apr 2023 15:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239298AbjDZTX0 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 26 Apr 2023 15:23:26 -0400
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com [IPv6:2607:f8b0:4864:20::f42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 409803591
        for <util-linux@vger.kernel.org>; Wed, 26 Apr 2023 12:23:10 -0700 (PDT)
Received: by mail-qv1-xf42.google.com with SMTP id 6a1803df08f44-5ef4d902708so72129546d6.2
        for <util-linux@vger.kernel.org>; Wed, 26 Apr 2023 12:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682536989; x=1685128989;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JL3yT3Q33W5/BCQtgOVvz2cK4S2v0dqNTi6RS5aes9g=;
        b=QxUX4L8+js4Dnk4OWFUB7UDLlXo2Pmdbs8OBz5kHzxC1qzH0xigqYHwNv9LTaJQ5rn
         32Z6ROHrq+BYRdmZEFhOcfaGV8pd1HZ+BvBBlF+U4j6PZUOOIk2FEYbeU3aqu/WnvEhv
         UEUWZdgV/Mbzef2Nmgp2EaS5d+Fl3TVcNpuIsX4dw+U1TSr60mN3OyDSeSi8rmFWit9Z
         LxsxG1X21ZacNWX5/d6zpDxlohhzFHAmgoPbQWQ3KvsTceV4BAe0HSH3O7ixNddOcFP/
         x0cqpZZv120Q7SrdX5dtr7WFZmViN96a+nRDU8x+KDvvwXohR3ahHOH3KmBv8+9imch9
         JBBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682536989; x=1685128989;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JL3yT3Q33W5/BCQtgOVvz2cK4S2v0dqNTi6RS5aes9g=;
        b=K6u/MJ3G8HG8if7WWGcJ9KR76Nq9gLfuI1P+hD9zeR1t6/zHEQuMyrWP56H2zfz+es
         HQZAikZy8+NUbV72A/TI/uyvzMR87vfDcCU1aQdmk9s1w5o09N/wnT8fUxkTmEu7MqO+
         wTWiFQUfigILn/nChldHWj3oHJWqaPIPrBRRgzpC8nMLXe6dyEkSK6RGdhOqooFXTnCy
         +jdmlyXLuB+W4DcZrNcElBAz20eYYOJ6ENnihbgXdN6DxZBmVMCejgBV8hqNJcgYTNsE
         lhQhRppGzTpMlTap7ZMVQKzgG2lXYZH0s3P+yJNGrkdpgyTks6SIRrzpVpNPRcmqOuDY
         0z5g==
X-Gm-Message-State: AAQBX9dJ+Jif1azE4l112nv/cO17NNK9YRxSMTc4KqBjdQZCO2g4Qu7A
        york9/+Q5wCPMUey/zzcusy4aEo1ifTF8Mf1xVU=
X-Google-Smtp-Source: AKy350ZsuyKYxvUnklLTKglhluk/efU2zDAqV13wzJM5gVajIrmA/6IT67x+HI7IoN0YSgIaaSaU3QH/IO77HFlxmwE=
X-Received: by 2002:a05:6214:29c3:b0:606:5103:9c98 with SMTP id
 gh3-20020a05621429c300b0060651039c98mr26661560qvb.34.1682536989273; Wed, 26
 Apr 2023 12:23:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:de0e:0:b0:5f3:e327:2951 with HTTP; Wed, 26 Apr 2023
 12:23:08 -0700 (PDT)
Reply-To: klassoumark@gmail.com
From:   Mark Klassou <thdtymmark@gmail.com>
Date:   Wed, 26 Apr 2023 19:23:08 +0000
Message-ID: <CAHx9+fmQ5YyOX59f-M6k32Ct=Hjt0f-dJLyYj9rLPXP8ESbKUA@mail.gmail.com>
Subject: Re
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Good Morning,

I was only wondering if you got my previous email? I have been trying
to reach you by email. Kindly get back to me swiftly, it is very
important.

Yours faithfully
Mark Klassou.
