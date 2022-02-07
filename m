Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1EF44AC869
	for <lists+util-linux@lfdr.de>; Mon,  7 Feb 2022 19:21:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230186AbiBGST4 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 7 Feb 2022 13:19:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345379AbiBGSO6 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 7 Feb 2022 13:14:58 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C9198C0401DC
        for <util-linux@vger.kernel.org>; Mon,  7 Feb 2022 10:14:56 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 737BD11B3
        for <util-linux@vger.kernel.org>; Mon,  7 Feb 2022 10:14:56 -0800 (PST)
Received: from debian (unknown [10.57.3.107])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9777D3F718
        for <util-linux@vger.kernel.org>; Mon,  7 Feb 2022 10:14:55 -0800 (PST)
Date:   Mon, 7 Feb 2022 19:14:50 +0100
From:   Vincent =?utf-8?Q?Stehl=C3=A9?= <vincent.stehle@arm.com>
To:     util-linux@vger.kernel.org
Subject: Re: [PATCH] libfdisk: (MBR) recognize EBBR protective partitions
Message-ID: <YgFhmowzGeXjfDEH@debian>
References: <20211203155908.6906-1-vincent.stehle@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211203155908.6906-1-vincent.stehle@arm.com>
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi,

Is there any concern with this patch[1] adding support for EBBR protective
partitions to fdisk, please?

I have verified that it does still apply to the master branch of util-linux.
Do not hesitate to let me know if changes need to be made.

If that can be of any help, a similar change[2] has now been accepted in
busybox.

Best regards,

--
Vincent Stehlé
System Architect - Arm

[1]: https://marc.info/?l=util-linux-ng&m=163854721714647&w=2
[2]: https://git.busybox.net/busybox/commit/?id=a93668cc4277b14eaff07fcfdef9693c990ec824
