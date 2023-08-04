Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49F7D76FB86
	for <lists+util-linux@lfdr.de>; Fri,  4 Aug 2023 09:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234074AbjHDH6P (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 4 Aug 2023 03:58:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234260AbjHDH6L (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 4 Aug 2023 03:58:11 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17FAC448E
        for <util-linux@vger.kernel.org>; Fri,  4 Aug 2023 00:58:10 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5230df1ce4fso2121908a12.1
        for <util-linux@vger.kernel.org>; Fri, 04 Aug 2023 00:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691135888; x=1691740688;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fyaf0OHfvWgaqfRiwRufcy49gz6rXRNyNLf1qH0Ffk0=;
        b=QZp6UzmXAvw32+A5Lxd7Qs6PY1l0zTtQGZ8rGK820S9nhzrBGpvW+wayUxiiw9CivJ
         i/YE1A20LSBeEFiAkBSdiNmL9iUaWPwxc94IKu6DtuQ2HIUIwfWBxqNPkkUNNIi0soq/
         +yDcJC2n9EM+RXJVsMAIC/NbfmvBwAyeKJH1P91AoSiUylcdTKRFJUn/NRPxaFSbaO6K
         5W/cIfjPvuv9+z0e88mKPgfSKQYLHKtCC9heE6cBdUuo2q47p0GgSs9LRqrqqYRdEDCX
         PTjte7QJ+hdiEKjX2PSg1HOM3pOIApdTnGK2zCOWlhUTtvup6SptF5mrAjDfRttizPbz
         k7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691135888; x=1691740688;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fyaf0OHfvWgaqfRiwRufcy49gz6rXRNyNLf1qH0Ffk0=;
        b=ZwvyBJDU+r3yzHHRp8s1b1pe+CeO/xUMdwHOz2Zb6/bC4m7mEdxJogIV4Wqz7QA4Fs
         ybkxx3xHW+g2DbJhDCEOJ0vGBmflv44ROiQHtpki3A1XRWLOQI+szlG/N3GFXr2U2NxO
         IXCpW1aFxIkly9q8TgsgLF24oUkMpQrc3Up4cFBAZGstXFYMxeRhjQFkauQY1U993oeu
         J2R6b+FVoAku54aVhupbaDgY216PEhEwp20MOUdO8fUmYUoS9UZJqBCakLt2NFTpNwQ0
         5ovXwoSMTqsnTuoNrH30vRlhAcnKYzFqzs0tGujODKe6q+MBiT46TlshzKGUdnGb/NL7
         /rRA==
X-Gm-Message-State: AOJu0Yw1YAyG25ifcHuLC46WvH1h6lt+53jMHXYRZbsLd0wNqyoTRiVO
        A+D1zXfVo1t2c+3mekWsDlD+imt33fKHRDJYYN0=
X-Google-Smtp-Source: AGHT+IFJRv1dVXhJsC5x5rmksxEXwL9DcPcIJFVy3os+ZlZJWWkGZBwuP/hg8eWECyXNAl09K+eS0im4Xswj2q+8whk=
X-Received: by 2002:aa7:d5cc:0:b0:522:586b:7db6 with SMTP id
 d12-20020aa7d5cc000000b00522586b7db6mr931605eds.34.1691135888477; Fri, 04 Aug
 2023 00:58:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:7f03:0:b0:219:c864:6fa2 with HTTP; Fri, 4 Aug 2023
 00:58:08 -0700 (PDT)
Reply-To: bintu37999@gmail.com
From:   Bintu Felicia <bintu374@gmail.com>
Date:   Fri, 4 Aug 2023 08:58:08 +0100
Message-ID: <CAEkOe4r-8MYFy+R96+bZcbrDA-vAEj41uiuiCs2rujcOLJcjgQ@mail.gmail.com>
Subject: HELLO...,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

How are you today? I hope you are fine. My name is Miss
Bintu Felicia . l am single looking for honest and nice
person whom i can partner with . I don't care about
your color, ethnicity, Status or Sex. Upon your reply to
this mail I will tell you more about myself and send you
more of my picture .I am sending you this beautiful mail
with a wish for much happiness
