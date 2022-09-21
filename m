Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D54C45E4EC8
	for <lists+util-linux@lfdr.de>; Wed, 21 Sep 2022 20:21:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbiIUSVl (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 21 Sep 2022 14:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbiIUSVk (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 21 Sep 2022 14:21:40 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3830A0241
        for <util-linux@vger.kernel.org>; Wed, 21 Sep 2022 11:21:39 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id bq9so11423014wrb.4
        for <util-linux@vger.kernel.org>; Wed, 21 Sep 2022 11:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=hsNtyP1m1mH5wObxTYGTuOljgpTGR+1nxFrlVMFkJto=;
        b=SG6L5fx5jt/18IPMJXJGAGOe61DqdgMHdrpmhNfKYl9i+qJCTRXNix+byOI6/ytDgT
         XFZZkvfSOP55EZ2+9YCOPtGhdu18WePDU+QMZYaUU7wLREbFM1fykvUwYvZKEGylnfuI
         j5WykVXiEJZ2DmhYEj/0eN1X2ugPphgK8oD1ObTUssfb4E2nJvSbaDrj/wWgiwPjxih7
         x4PcbwEQ08AYbaKivfwFXf0We+vWK3iNE2E7SBOmvoYw2edFzsqU5vEZNrFJuYyFE7lS
         o7+PeDxCZ5FoAXTn4HZzUgv52xGm+umCdRWKmIs4cK3K5gHxzTY+5YwBiPvQUya7m7uI
         S0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=hsNtyP1m1mH5wObxTYGTuOljgpTGR+1nxFrlVMFkJto=;
        b=AKDawtk6kKXYS8H75TyylM093vzyb7KXjstXRkRAsFwQxb1JuNHRVyPswTzghpPypR
         k9ZhCJ+Vj5lbm/3M8FhSnbU8vq38iiCjeefGb7f8ZBDAnCNiRAKC1/ggQWL1Gh/7Ybph
         EEv5XlHzJ82pq2CRgI4QJk1lcN/ceIuZnQmMxuvzHjgHXsTINvaTkVFFbZeWOz5wRW8Y
         rOTmPOVB0bo35LYgBocFx99REi0RB8UhLNLtIlxFmLY3r7jPL79HWYp3Ke1p5O7dcUq1
         r2eD8OTHxuUnvgSl5m5H+Rqr/lDRc++hP6CfWF5jOJ8/SZZBRSPgMMeJWrIyF9en3Bo3
         rZDA==
X-Gm-Message-State: ACrzQf3BAKX2QQ/2y4hIgyoR4jFV7F1B/daI/LRzs0wgvhJ2ds+ADkDO
        HdJeLbAJtvpoC7QipyZtWul9S3TGGk7BTIl5GlA=
X-Google-Smtp-Source: AMsMyM7pLsMw+ELrB/mbcbxWPaBEMvHTFL8BnvZcN0Wt3Q2N60KuGMLCpqX6Zq3Nvrtt+HUFSEV1xlarqRzwHaQdpAA=
X-Received: by 2002:adf:db03:0:b0:22a:dd80:4b45 with SMTP id
 s3-20020adfdb03000000b0022add804b45mr16642631wri.111.1663784498011; Wed, 21
 Sep 2022 11:21:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6000:1888:0:0:0:0 with HTTP; Wed, 21 Sep 2022 11:21:37
 -0700 (PDT)
Reply-To: charlesjacksonjunior@outlook.com
From:   =?UTF-8?Q?Fr=2E_Waldemar_Koz=C5=82owski?= 
        <maureennenna71@gmail.com>
Date:   Wed, 21 Sep 2022 21:21:37 +0300
Message-ID: <CAN8cJPY7tTypsPtvGdik1mPi-nWDjELnVVNDJJu7-QP=Y+Hueg@mail.gmail.com>
Subject: =?UTF-8?B?SGVyemxpY2hlIEdsw7xja3fDvG5zY2hl?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

-- 
Gefeliciteerd, je bent gekozen voor een donatie van een miljoen
dollar. Gelieve te reageren voor claims.

Bedankt
