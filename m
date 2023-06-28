Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87A2B740DB9
	for <lists+util-linux@lfdr.de>; Wed, 28 Jun 2023 11:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231866AbjF1JsX (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 28 Jun 2023 05:48:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235588AbjF1JfS (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Wed, 28 Jun 2023 05:35:18 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85F2B3C0B
        for <util-linux-ng@vger.kernel.org>; Wed, 28 Jun 2023 02:32:52 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so8000220e87.2
        for <util-linux-ng@vger.kernel.org>; Wed, 28 Jun 2023 02:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687944770; x=1690536770;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Mjkc+uj5f5KqdyTaMDkUa5q+MStotsoQ5Oq44MmQKTQ=;
        b=XQN9hvARN9WX/AvoZG+NcmzgtZkobTG2l8Ymyz0wvEMAnwZUOxVY3RxqhySi2sCqYC
         u+YYy6VKSBzangOIOcJyY8hotAM00eVUQKTdxx9UT217npuZJZHsv2qGto7+ECgdY/Rx
         pxN5I0KLrtl0pP92DIsTFFNzf9YQVJujfnA5xYxc8M3znMWSwusE8DiGRAmr5yunsC1B
         mCYUiMttWB21ogu8ZKBgatJuVYDXUn+i0C0Q3fm7ifkgBUdNJKaA1FExcpOwkHWpoJw7
         0cGuKXfp02PuKvGeggKGgTpWGkWoZWzK936Viam7oROKwzcRr+2B5BRpA/j0vpsYZNpK
         K0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687944770; x=1690536770;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mjkc+uj5f5KqdyTaMDkUa5q+MStotsoQ5Oq44MmQKTQ=;
        b=IFpkZLabnKygMGQr9By6pOgdFj94WxBsK6F66SstkcS80uJmSxR/LtranLXTGII0hT
         Ybof/UjeJQye97cMRz9o8mLievWhwN2qqWIauN0ICaw72F/WEhHp3m9X+KSpD6qy3oni
         39/77xOdW4P9PngL6CjD446jLoLrI8hbDRzVEmslLHfC/sdfCu7JYznHxheB/9jwSX6G
         WIo5YJch2y1NY6yc8utJbAAzoravpYJT5dcBG99ZHDpDh01Xzk/eysIb+HL7sfYhfIlS
         1+fH8sb8YpvYaLeaCNQi+c6hkgDV1zJsnzMlDuI6kPgaN6Ye9x/PmokB5OkW8bNcvJBy
         gPBQ==
X-Gm-Message-State: AC+VfDyvOxBGTFTCmXSK/KozQ/qeoRLX63+G+T3PbTNP151sDynSyRNH
        1iqkh56jqXniRrGqDF6Pc1DET1TGcHzSic9y2K+vjshc
X-Google-Smtp-Source: ACHHUZ6HzjJq8J+r3TU2kMSl/IrWU6x5k4wnaWZhNpV44h0OHyAQAY8ijWpxEwfQ3cXkavtA+PKiXIhFDycxOfCsfEo=
X-Received: by 2002:a05:6512:3e0e:b0:4fb:393:26c3 with SMTP id
 i14-20020a0565123e0e00b004fb039326c3mr7783727lfv.15.1687944770551; Wed, 28
 Jun 2023 02:32:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab2:3942:0:b0:1cb:a865:d652 with HTTP; Wed, 28 Jun 2023
 02:32:50 -0700 (PDT)
From:   Prestige Cafe Resto <prestigecaferesto@gmail.com>
Date:   Wed, 28 Jun 2023 09:32:50 +0000
Message-ID: <CAEg1bBPRtWEm-21QFUMTgaCth=uu_6DujT1_fNDcyFZbG0C-9Q@mail.gmail.com>
Subject: sqelch lebensmittel
To:     util linux ng <util-linux-ng@vger.kernel.org>,
        Wii Mii <w2863626240052192@wii.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,TVD_SPACE_RATIO,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

https://exactlychoppedeagle.tumblr.com/#==gYBd1VVJUUvxkcL9yaulGbuAHch5yctNTOl9yL6MHc0RHa
