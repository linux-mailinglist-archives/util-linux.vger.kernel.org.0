Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BDB556BAAA
	for <lists+util-linux@lfdr.de>; Fri,  8 Jul 2022 15:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237709AbiGHN3N (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 8 Jul 2022 09:29:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237559AbiGHN3M (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 8 Jul 2022 09:29:12 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E54DE2CC89
        for <util-linux@vger.kernel.org>; Fri,  8 Jul 2022 06:29:11 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id i190so9765390pge.7
        for <util-linux@vger.kernel.org>; Fri, 08 Jul 2022 06:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=/koAqwOsuY+BWqsuWRhfNQGq4Vqh1MhiZerqM+WkJyM=;
        b=YmALaLBif3ABPOSI6fs4Zmq1A8YQ3+E5JzBE1xdDTGgH5pV/RcWZQhUAqr4pwcdYnG
         XQsErPr/eYDoShUrdZRjvnftVu7ehV3Cs55vXhCQwm3lSLUsjs6HUqcuUyekRz9wOJ5E
         Dtai4I3QP6nzpKqAvcfyZ4rPSmBjn3Ph7lJKd+z8XV6wkDXjgShaClxFy6Tf6GpDXevo
         35ySQmOKN2kny3tDp/pClidJoLZk80rX6HsYusU2oQQiMycXVWSK8fO7rWR4lZZQwubW
         Ko57Ko4NI1OvOiI8rOonUSvXisNH/B/xazUVUoMPA7CWVI2IByFVv+C6rJXL7dZEOE+c
         hOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=/koAqwOsuY+BWqsuWRhfNQGq4Vqh1MhiZerqM+WkJyM=;
        b=KJIh7K0dcI2RvnD9QKcwOOnpjgQnnSdvGq9q+jjIdQs+j6EygbxeXgL5r2dIDqg+D2
         82ng4c+nP0nO+WU8iJRHgrOtKmLX08AcCfqRjh6kt3gs7B7tgFZzsujWMgn1vmieD9Mu
         fd9XLFp4geuRMnzZ7pWTWSMMMySnzwvxD4CXw2rnNUm075+QFh/SbpUx+Mpo/GL1zOsa
         lrwIZx1MCR6vYlW4bn7U2VJbtNfEQbxHStycdThq/cHC6Q6im4TPZKdkmvUMDzms3MOq
         jbeV/ED/c5Ad2e76w2j26nMGQ+de87xaHkd8clMOuyffg18cCkC/2uGK6igoIvgI9vK/
         lyVw==
X-Gm-Message-State: AJIora/eJ2+fBwzjf92qiU2RCuJCPNHzGmM/DZVll0WtyKZeg9WmjEwp
        tR0UPeJAhL4lWs+VSGcvauF/T5ufj43b1SIsnug=
X-Google-Smtp-Source: AGRyM1vhE3TcczLCrbL4gGtTQeNIBbiOddlBtedw/P+D0Y2MYrt6rT34BB6GAzxSC3YrLLbSWVWuCeMHoHfTDseZHrA=
X-Received: by 2002:a05:6a02:113:b0:412:a7c0:da8e with SMTP id
 bg19-20020a056a02011300b00412a7c0da8emr3488916pgb.113.1657286951419; Fri, 08
 Jul 2022 06:29:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:f394:0:0:0:0 with HTTP; Fri, 8 Jul 2022 06:29:10
 -0700 (PDT)
Reply-To: golsonfinancial@gmail.com
From:   OLSON FINANCIAL GROUP <okunlolarodiat@gmail.com>
Date:   Fri, 8 Jul 2022 06:29:10 -0700
Message-ID: <CACz88m4ZxLaM2WdHGtcgLdahsgfzY45vEKrKAvnZ2NZ837BPrA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

--=20
Hallo guten Tag,
Ben=C3=B6tigen Sie einen Kredit, um ein Auto zu kaufen? oder brauchst du
ein Gesch=C3=A4fts- oder Privatdarlehen? Sie wollen Ihr Unternehmen
refinanzieren? oder investieren? gr=C3=BCnde ein neues Gesch=C3=A4ft,
Rechnungen bezahlen? und uns auf Anfrage in Installationen
zur=C3=BCckzahlen? Wir sind ein zertifiziertes Finanzunternehmen, das finan=
ziert
aller Art zugelassen. Wir verleihen an Privatpersonen und
Gesellschaft. Wir bieten zuverl=C3=A4ssige Kredite zu einem sehr niedrigen =
Zinssatz
Zinssatz von 2%. F=C3=BCr weitere Informationen
mailen Sie uns an: golsonfinancial@gmail.com......
