Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C9CC723B0F
	for <lists+util-linux@lfdr.de>; Tue,  6 Jun 2023 10:13:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231718AbjFFIN0 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 6 Jun 2023 04:13:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231278AbjFFINZ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 6 Jun 2023 04:13:25 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E64FFC7
        for <util-linux@vger.kernel.org>; Tue,  6 Jun 2023 01:13:23 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id 41be03b00d2f7-543a37c5c03so213882a12.1
        for <util-linux@vger.kernel.org>; Tue, 06 Jun 2023 01:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686039203; x=1688631203;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=ILqg10TIi1gqc0JzkGzafDPXzqWK1qJ+3EYfyU5VR53QZ44otZROrTatPX9T1uzNES
         zUuXbXNTTXQjAe8Wo+FxSl5kiWRHzh45KGQ5aY9cTWj1kg3IRtAe6ft5XAmtbY+ssciJ
         dKX9C8VBfeQPv/7OYuADpfbuxPc4Qwpyy0i6iW0l5C8PK8MumJFWOocrs7kroRNiq2z4
         9G93SzzFSV+Ms2Lz40rWDFGZjF8jasfjMFGb6Hp+v/rKQRLxk9+uvlgG1myCfs4MK+A7
         k0/XeXcV4XU8FpEFUi486fi5v/XBMl06HoowwSmsf41vum2Suxn3QQHX/LRljN2UXWLn
         112Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686039203; x=1688631203;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=CWUPAp0MzhAJdPTdpvaZbGobmUjyNBvZFuss+XL/nVylUWvEEmfn0VM5yFU377M7ui
         Ndf306OAjbls3nv3C4x6lldsf7HZPa1MbE7vasiEgTrZcmSFTOj1AyakcXTe0WPsIz9N
         33/m0tL3jNBa/iXyOFWCrijJz34XB2Vfv0NI9gdn1Fi3VD+KeE1cFJjPY8ARcL6Z18eG
         tK0V8CFYfRu7CJvwmax5AmGMVyzrnBWko/wNcNUOE7ARt40mzbFWap0lVyD14F0i7JaH
         H4v9141xPTKs0R/hOTyuzFuvTPAWO2N76CaH4aI5/oY/E1G9TGn1X1hVWNT2otlm08ok
         Qi0Q==
X-Gm-Message-State: AC+VfDyZmlbxGsDp7SEvndWyv5bPaHKVc1PdsuKav85kkGL+5+oyOyLJ
        efKV1NxRvfFkQQtHmeUrBYVni23qtmmdYxpICKQ=
X-Google-Smtp-Source: ACHHUZ5+Q4IslywKBk2o7YcHKlFS5HCepaXY1BnbF/v9As2te5RIepi+8s0RDJ8/OgOtOjEyWwqkkgPwG321gJDGM98=
X-Received: by 2002:a17:90b:1e46:b0:258:d367:63c with SMTP id
 pi6-20020a17090b1e4600b00258d367063cmr1616071pjb.1.1686039203365; Tue, 06 Jun
 2023 01:13:23 -0700 (PDT)
MIME-Version: 1.0
Sender: jeb191344@gmail.com
Received: by 2002:a05:6a20:1010:b0:101:2038:919a with HTTP; Tue, 6 Jun 2023
 01:13:23 -0700 (PDT)
From:   brenda jeff <jeb02713@gmail.com>
Date:   Tue, 6 Jun 2023 01:13:23 -0700
X-Google-Sender-Auth: Il48C9duAfVlpk-I09rC71oM3Hk
Message-ID: <CAArsRcRDq0ALfnA6S4-S=7ugowt+ePWzv=E2ekGSkPW45OYHNA@mail.gmail.com>
Subject: i will like to have a brief talk with you
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=3.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,EMPTY_MESSAGE,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org


