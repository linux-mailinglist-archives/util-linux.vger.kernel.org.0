Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2E8963960E
	for <lists+util-linux@lfdr.de>; Sat, 26 Nov 2022 14:15:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbiKZNPN (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 26 Nov 2022 08:15:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbiKZNPN (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 26 Nov 2022 08:15:13 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A40F11A33
        for <util-linux@vger.kernel.org>; Sat, 26 Nov 2022 05:15:12 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id o30so5317493wms.2
        for <util-linux@vger.kernel.org>; Sat, 26 Nov 2022 05:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8wlb4SYlCkKFrC3vDbrNKcnlsbFr9aWDknzVh2AdUFE=;
        b=WXmPg++0oLXQwiB1Nrx9I+ztNKOqls4dkXLRpA0nGE65uU+O148txPVLZnl4+bo4Fm
         C1Jgd1y4k3YB4RCcHlLWyCv1ixamCReGPgoUam6DwGb4v+m76P5/P3g7q0iZbIqGs6yq
         3ZGGR33a59OhX5RYIiFTLhmaZYAM7cjRddi73JpSjtsKUcmyCY3bc689LQF+cj4X2YeW
         m0SoU5Ht4HaGgbV/4KvqoZ/gugl1HZ7YuYLbu8BP66bCHZIHIe3VzvVv4MlKF9q32E3u
         DTu5Fo3fyX4iw388Va3Vrzw942BmVj3Bs6wQAKJitNjzesRPDU0guZhfgy2tq34zUGsm
         ufdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8wlb4SYlCkKFrC3vDbrNKcnlsbFr9aWDknzVh2AdUFE=;
        b=OZO3ugg9YN0Yez7yVJBUNLfTURHQIuvG5fpCG8M21/nFq8+t9jsGicqECCUe25/Fx0
         tm6asZkcZwXM7G9dw79t4lTzdDgOijnHzhA4hdGNBDzHo43fnwUi/1QXx2YMLu+NopRR
         HmBDSfByq/279Xne10q9K5q2ZV/14psC0drUpLt2nn6bhXwRwFB1ONRqlLc9SEuM7wt2
         4IE3UrwX4jx08CL1g5OmSyNueY6pWXAF3W+O2uD26sAzTvU0imLbg2ilUH85g4fBIwOq
         ladmyOslqv3ZrmC9r78Vm1Fv9OPEDeP/d2/J8VBZPvUsC61uqhCA9ZM/2YkT34CMlAzI
         ToJw==
X-Gm-Message-State: ANoB5pngK8pemJRgKXRN3Gkck1qeJOuvOm/HD5W0f6D55thSyM8SsSh+
        JcfMd4xuYtUjTWxlfavSMf6vEm7ZWlEBXxXAK3o=
X-Google-Smtp-Source: AA0mqf6G61sgV60oqglGXb4pa2oSm0F0AwWcancYsDt/yiFTql/KAMRVu/mYVmbcUL5XJqjTSObCOugU4JxpbTJimPY=
X-Received: by 2002:a05:600c:3514:b0:3cf:a985:7692 with SMTP id
 h20-20020a05600c351400b003cfa9857692mr25048685wmq.104.1669468510428; Sat, 26
 Nov 2022 05:15:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:eb0b:0:0:0:0:0 with HTTP; Sat, 26 Nov 2022 05:15:09
 -0800 (PST)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <ninacou041@gmail.com>
Date:   Sat, 26 Nov 2022 13:15:09 +0000
Message-ID: <CANnT539caaq-LVw+fjMoOF_7NNECbsqh5MHH01GZCF8p+q1iOQ@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
