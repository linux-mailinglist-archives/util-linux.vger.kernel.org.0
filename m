Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57F257EA467
	for <lists+util-linux@lfdr.de>; Mon, 13 Nov 2023 21:10:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbjKMUK5 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 13 Nov 2023 15:10:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbjKMUK4 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 13 Nov 2023 15:10:56 -0500
Received: from todd.t-8ch.de (todd.t-8ch.de [IPv6:2a01:4f8:c010:41de::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33C57D73
        for <util-linux@vger.kernel.org>; Mon, 13 Nov 2023 12:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
        t=1699906251; bh=R5GkH9G+forijcfZnuUntTjv2RFxWSjlRJ5OLhDEKAA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=METvkJyVrfiEjnKVPvn1Nb8jQ97xF51SFiuz4KKk5sOybMe6ClWvuSm/2Z0n6vyUf
         +hQUGSCb9Wup6rU0q1UFqiU0tRnYIUmJR/XchN/VnCnvvxoynwFB4Eba1ZbgjHDCrA
         zb78kkCb+ps0pU4ik1n5m03kk2Gaq7vjiYfRAh8U=
Date:   Mon, 13 Nov 2023 21:10:50 +0100
From:   Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas@t-8ch.de>
To:     John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
Cc:     util-linux@vger.kernel.org
Subject: Re: RFH: fincore/count lsfd/column-xmode failing on sparc64
Message-ID: <d01d39c7-de2c-45af-937b-e15132025486@t-8ch.de>
References: <2eedea423b789396d263ff4aef05736ea48d4f46.camel@physik.fu-berlin.de>
 <27dc0b31-bfd5-4519-b46e-c0bcafe0702a@t-8ch.de>
 <dfb16443d2e030e2738d83a886572fdddc64f7ba.camel@physik.fu-berlin.de>
 <b5dcde27-d08d-4b2e-80df-1a1edf8e447b@t-8ch.de>
 <19872ac4428190b3825e1f34cddca175aee0e8ae.camel@physik.fu-berlin.de>
 <d687e9b1-747a-4194-9155-8e919544cfed@t-8ch.de>
 <0720440a5769c009c80be1760e28ff65034d99f4.camel@physik.fu-berlin.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0720440a5769c009c80be1760e28ff65034d99f4.camel@physik.fu-berlin.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On 2023-11-13 19:06:19+0100, John Paul Adrian Glaubitz wrote:
> On Mon, 2023-11-13 at 18:50 +0100, Thomas Weißschuh wrote:
> > What's your system's page size?
> > 
> > ./test_sysinfo
> 
> glaubitz@stadler:~/util-linux$ ./test_sysinfo 
>        WORDSIZE: 64
>        pagesize: 8192
>         INT_MAX: 2147483647
>        UINT_MAX: 4294967295
>        LONG_MAX: 9223372036854775807
>       ULONG_MAX: 18446744073709551615
>     ULONG_MAX32: 4294967295
>      UINT64_MAX: 18446744073709551615
>      byte-order: BE
>       wcsspn-ok: 1
>       enotty-ok: 1
>       fsopen-ok: 1
> glaubitz@stadler:~/util-linux$

8k page size should explain it.

The test output depends on the page size and has known test outputs for
a few pagesizes and a fallback output.

The fallback output was broken.

Can you test this PR?
https://github.com/util-linux/util-linux/pull/2581


Thomas
