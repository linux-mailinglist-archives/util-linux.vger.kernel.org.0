Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52F111D5FA0
	for <lists+util-linux@lfdr.de>; Sat, 16 May 2020 10:26:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726202AbgEPIZK (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 16 May 2020 04:25:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725934AbgEPIZK (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 16 May 2020 04:25:10 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7D98C061A0C
        for <util-linux@vger.kernel.org>; Sat, 16 May 2020 01:25:09 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id w64so4921417wmg.4
        for <util-linux@vger.kernel.org>; Sat, 16 May 2020 01:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=ew74A9A6aFNCtoZPKpvBT0txp0ez/WVJUjIPl6a2QnM=;
        b=mysEqPNERqkYiNxLsoLtJDgpTa2GKd/P6vtwEjrwAm4TDkM9pU2SOmFfdI30j+Ttwl
         iUfNNSQHw7gILu34iyEmBbR16GI4vAizudMgQ0pyTPsYkxTwWEpA9XsEwuLoxpVP1WVf
         imZti08aqCYgTP7k9N2YbLwtUX1vuStj7qdDNpFMWSnZWETsNziFwg3u47fc7PN4Agnr
         XsCscz2NStGxlQ0mVqyzFeyvdTiqRo+Yz8DTW1+1b0XhF9St558oAQfnq6gtqpGH9cOM
         HG1l9zCuV4+nIp8VGO0IJs61zr+LTmNlDOYfRNKiLcXO10AHlpiIRdAdDHRxZWtgHLtR
         IF6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=ew74A9A6aFNCtoZPKpvBT0txp0ez/WVJUjIPl6a2QnM=;
        b=su7k7VjxmccLV8NI64cgaSe+GK8+QVpMKD7/BMUN5jYG92SMNDlIKLSzCjw3/x3Cw6
         0Gh0PuRV8uHPswdYgzNk1MlpROeGVYJKzn5VGrPtxS3RXTrpqXPa9Nxbz/sn/zMHqepN
         oyBbPNnTxAVgeqwqwBghoS/jO8NH81Eej5ZdvOtZw9qed/CYZ0EqcDBplyMUzHVOC1+y
         wMZ5WdHS2X3Qd27ofTV3vSMzGMngVbmeBGAgddn+CrFDrKAtTE4bsWyzpWwOyBNo0LQT
         9vwCXtcwgrr6NZgo0NWl3zMzpOsDXhMyF+NETXpAsQtK/LXJRgnD7cqkHmcmMOf+oXBD
         N7Vg==
X-Gm-Message-State: AOAM5329OXrtBpMvmnMS6btbD/tYTi3DrUKTKTvkMkXhN0xGKqkHCt5D
        XGl+BFPgLBBzxR0wUE6wPL0=
X-Google-Smtp-Source: ABdhPJw6Cs9CsUGnEi2p14l0azeC/Gqkm6wRTXVPro6n6HQz7RzwS/TZRofM+uInGBidTuPPy43Blw==
X-Received: by 2002:a7b:c846:: with SMTP id c6mr7984800wml.62.1589617508362;
        Sat, 16 May 2020 01:25:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id t4sm8006882wri.54.2020.05.16.01.25.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 May 2020 01:25:07 -0700 (PDT)
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Consistency fixes in util-linux man pages
To:     Karel Zak <kzak@redhat.com>
Cc:     mtk.manpages@gmail.com, util-linux@vger.kernel.org,
        Helge Kreutzmann <debian@helgefjell.de>
Message-ID: <4cb60e3f-0226-e7f0-0052-08a48ea9f425@gmail.com>
Date:   Sat, 16 May 2020 10:24:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello Karel,

Perhaps a little inspired by Helge's recent reports, I wonder about 
submitting some wide-ranging patches to improve consistency across
the util-linux manual pages.

As an example, there's quite a bit of variation in the order of 
.SH sections in the manual pages (e.g., in the placement of the SEE 
ALSO section). The pages would be more readable if the ordering was
more consistent.

Would you entertain patches that made wide-ranging changes
that fixed that sort of thing (without changing page content?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
