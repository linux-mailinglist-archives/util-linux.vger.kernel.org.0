Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CBAD7E8C27
	for <lists+util-linux@lfdr.de>; Sat, 11 Nov 2023 19:37:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbjKKShK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 11 Nov 2023 13:37:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjKKShJ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 11 Nov 2023 13:37:09 -0500
Received: from todd.t-8ch.de (todd.t-8ch.de [IPv6:2a01:4f8:c010:41de::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6411F3861
        for <util-linux@vger.kernel.org>; Sat, 11 Nov 2023 10:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
        t=1699727823; bh=5rQT6Jaf1rORZHpTRJs0HUO9ddTIjt3VuHYChhtIpOc=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=RhbDZ0dOjRzQdZCD+hGd51525NV/KLC0r5ABUaK1ArQWkXix+GWrg9gl0iIJVdERa
         T6IVlrS1yrbK/n3n1T6loZq6im08x9fihgAMTWc8iIvind7guV8qVjigtUyE9P9f9P
         Y0qcNLGs+tfJjUdrBM+tfMChN6SQcI+0jHcOfm+o=
Date:   Sat, 11 Nov 2023 19:37:02 +0100 (GMT+01:00)
From:   =?UTF-8?Q?Thomas_Wei=C3=9Fschuh_?= <thomas@t-8ch.de>
To:     John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
Cc:     util-linux@vger.kernel.org
Message-ID: <27dc0b31-bfd5-4519-b46e-c0bcafe0702a@t-8ch.de>
In-Reply-To: <2eedea423b789396d263ff4aef05736ea48d4f46.camel@physik.fu-berlin.de>
References: <2eedea423b789396d263ff4aef05736ea48d4f46.camel@physik.fu-berlin.de>
Subject: Re: RFH: fincore/count lsfd/column-xmode failing on sparc64
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <27dc0b31-bfd5-4519-b46e-c0bcafe0702a@t-8ch.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi,

Nov 11, 2023 19:23:20 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.=
de>:

> Hello!
>
> On sparc64 running Linux 6.5.0, the following two tests are failing:

Which version of util-linux is this?

For the fincore test:
Can you check with strace if it is using the mincore or cachestat syscall?

> =C2=A0 2 tests of 283 FAILED
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fincore/count
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lsfd/column-xmode
>
