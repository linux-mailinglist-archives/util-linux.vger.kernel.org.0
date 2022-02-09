Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED4514AEE0B
	for <lists+util-linux@lfdr.de>; Wed,  9 Feb 2022 10:31:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbiBIJ2U (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 9 Feb 2022 04:28:20 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:55122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbiBIJ2U (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 9 Feb 2022 04:28:20 -0500
Received: from mail.namespace.at (mail.namespace.at [IPv6:2a01:190:1801:100::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 776C9E0BBB6E
        for <util-linux@vger.kernel.org>; Wed,  9 Feb 2022 01:28:14 -0800 (PST)
Date:   Wed, 9 Feb 2022 10:26:52 +0100
From:   Chris Hofstaedtler <zeha@debian.org>
To:     util-linux <util-linux@vger.kernel.org>
Cc:     Karel Zak <kzak@redhat.com>
Subject: hardlink test failures on arm* in 2.38-rc1
Message-ID: <20220209092652.2f76mnewhwxlnxsr@zeha.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello Karel, list,

in 25a125ee89d0da9e4b815b1ca27b001c7d07ce8a the hardlink test
outputs added "Method:     sha256". It appears this is not constant
across architectures. On the Debian buildds at least, on arm64,
armel, armhf hardlink produces this output and then obviously
the test output comparison fails:

  hardlink: cannot initialize sha256 method, use 'memcmp' fallback

-Method:                   memcmp
+Method:                   sha256

If you want to look at the logs:
https://buildd.debian.org/status/fetch.php?pkg=util-linux&arch=arm64&ver=2.38~rc1-1&stamp=1644348017&file=log
https://buildd.debian.org/status/fetch.php?pkg=util-linux&arch=armel&ver=2.38~rc1-1&stamp=1644348866&file=log

Can this be made tolerant of architecture or is the "method" relevant
for these particular tests?

Many thanks,
Chris
