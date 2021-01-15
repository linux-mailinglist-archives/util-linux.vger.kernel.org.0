Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C76112F805C
	for <lists+util-linux@lfdr.de>; Fri, 15 Jan 2021 17:12:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727253AbhAOQMW (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 15 Jan 2021 11:12:22 -0500
Received: from drop1.michaelkloos.com ([67.205.190.89]:37832 "EHLO
        drop1.michaelkloos.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726669AbhAOQMW (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 15 Jan 2021 11:12:22 -0500
X-Greylist: delayed 565 seconds by postgrey-1.27 at vger.kernel.org; Fri, 15 Jan 2021 11:12:21 EST
Received: from qpc.home.michaelkloos.com (cpe-173-88-115-50.columbus.res.rr.com [173.88.115.50])
        by drop1.michaelkloos.com (Postfix) with ESMTPSA id 5DB2C410DC
        for <util-linux@vger.kernel.org>; Fri, 15 Jan 2021 16:01:46 +0000 (UTC)
To:     util-linux@vger.kernel.org
From:   "Michael T. Kloos" <michael@michaelkloos.com>
Subject: FAT12 format does not honor the -R option
Message-ID: <abf8a4c7-fa0c-6e2b-e272-e68531ede173@michaelkloos.com>
Date:   Fri, 15 Jan 2021 11:01:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

"mkfs.vfat -F 12 -R 2 /dev/loop0" does not seem to honor the -R option.  
It just defaults to 0x20 for the reserved sector count. I can hexedit 
the FS to move the file allocation table contents and change 0x20 to 
0x02 in the reserved sector count field. Mounting this seems to work 
fine under the Linux FAT driver from my limited experimentation.  It 
just seems like a waste of space reserving that many sectors in a FAT12 
FS where it is most likely to be used in space constrained 
applications.  Is this a bug or is it working around some compatibility 
issue with 2 reserved pages?


Thanks,
----Michael

