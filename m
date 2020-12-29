Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC8972E7336
	for <lists+util-linux@lfdr.de>; Tue, 29 Dec 2020 20:19:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726242AbgL2TTB (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 29 Dec 2020 14:19:01 -0500
Received: from mail.namespace.at ([213.208.148.235]:36246 "EHLO
        mail.namespace.at" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2TTB (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 29 Dec 2020 14:19:01 -0500
Date:   Tue, 29 Dec 2020 20:18:14 +0100
From:   Chris Hofstaedtler <zeha@debian.org>
To:     util-linux@vger.kernel.org
Subject: fsck silently exits when fstype-specific fsck is not found
Message-ID: <20201229191814.ltehybec7ql67xm5@zeha.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi,

I just noticed that fsck, when given a single device name, silently
exits when it cannot find an appropriate fsck.%s program.

Example:
  (/dev/sda1 is an EFI System Partition, so type=vfat)
  # fsck -V /dev/sda1
  fsck from util-linux 2.36.1
  # echo $?
  0

Note that it also does not warn about fsck.vfat not being found or
anything really.

This appears because fsck.c has a "really_wanted" list of fstypes;
anything not in there gets the mentioned behaviour.

I find this to be very surprising. What are the reasons for this?

I could try changing this code path, but I'm not sure if this is
expected in the first place?

Thanks,
Chris

