Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB28939E3FB
	for <lists+util-linux@lfdr.de>; Mon,  7 Jun 2021 18:40:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234643AbhFGQ2j (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 7 Jun 2021 12:28:39 -0400
Received: from foss.arm.com ([217.140.110.172]:37190 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233869AbhFGQYo (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Mon, 7 Jun 2021 12:24:44 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D036143D;
        Mon,  7 Jun 2021 09:22:52 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com [10.1.195.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1CBE93F694;
        Mon,  7 Jun 2021 09:22:52 -0700 (PDT)
Date:   Mon, 7 Jun 2021 17:22:49 +0100
From:   Qais Yousef <qais.yousef@arm.com>
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org
Subject: Missing getext dependency in v2.37
Message-ID: <20210607162249.ez6dtms5xxansg26@e107158-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi Karl

While building v2.37 I hit the following build error

	: --update --no-wrap --previous --lang=ca ca.po util-linux.pot
	rm -f ca.gmo && : -c --statistics --verbose -o ca.gmo ca.po
	mv: cannot stat 't-ca.gmo': No such file or directory

which turned out to be due to a missing gettext package on my system. After
installing it then re-running configure it builds fine.

It was a fresh checkout where I ran autogen.sh, configure and then make.

Should configure fail when it detects gettext is missing? Maybe this is
a symptom of something else failing somewhere else; I admit I didn't dig much
into it.

Thanks

--
Qais Yousef
