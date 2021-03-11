Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E58F7337F7E
	for <lists+util-linux@lfdr.de>; Thu, 11 Mar 2021 22:16:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbhCKVPz (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 11 Mar 2021 16:15:55 -0500
Received: from ishtar.tlinx.org ([173.164.175.65]:54042 "EHLO
        Ishtar.sc.tlinx.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231175AbhCKVP1 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 11 Mar 2021 16:15:27 -0500
X-Greylist: delayed 1881 seconds by postgrey-1.27 at vger.kernel.org; Thu, 11 Mar 2021 16:15:27 EST
Received: from [192.168.3.12] (Athenae [192.168.3.12])
        by Ishtar.sc.tlinx.org (8.14.7/8.14.4/SuSE Linux 0.8) with ESMTP id 12BKi3Is049868
        for <util-linux@vger.kernel.org>; Thu, 11 Mar 2021 12:44:05 -0800
Message-ID: <604A8111.8090100@tlinx.org>
Date:   Thu, 11 Mar 2021 12:44:01 -0800
From:   L A Walsh <lkml@tlinx.org>
User-Agent: Thunderbird 2.0.0.24 (Windows/20100228)
MIME-Version: 1.0
To:     util-linux@vger.kernel.org
Subject: is there a util, or can findmnt be enhanced...(RFE?)
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

I see 'findmnt' shows a mount if you specify the mount point.

Given the name, I was surprised it didn't already do
this: I was wondering if it could find
the mount point of a file or pathname I give to it?

So if I am in /home/cache/suse, and type:

>  findmnt .

it would tell me something like:

/home[cache/suse] /dev/Space/Home

meaning:
MNTPOINT[offset_path]  <device>

Thanks!

