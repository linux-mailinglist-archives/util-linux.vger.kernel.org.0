Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8D5D25ACC7
	for <lists+util-linux@lfdr.de>; Wed,  2 Sep 2020 16:18:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727853AbgIBOSJ (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 2 Sep 2020 10:18:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726567AbgIBORm (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 2 Sep 2020 10:17:42 -0400
Received: from casper.infradead.org (casper.infradead.org [IPv6:2001:8b0:10b:1236::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A59A4C061244
        for <util-linux@vger.kernel.org>; Wed,  2 Sep 2020 07:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=M++JcRVTKMcs++KRHnktmMfV9gnxcKKd3ikwLr9Qmao=; b=Xuz5W0KnhV9K0XeaNGHUcPjwLS
        nTQwD2FlrTv6DPVtwgXfWwQt0oTz2fFWuAyIXbXt3bhgrA5bxn1yOuG1B6LbYfnMIptq5aHtBViWU
        prSKqZ6lo5a4TZc6LVjTL1r5iVhzpkQuIDJjEYB307wNixyNfuUYrS6CqVZH6QmYJzcej3R8LGVRl
        L8a6nRcOcioGYmx0pkyYjNEvrt1sb8waGW9D8nmSFzA5BjAUOugzgeaek8c2FS0XwldLEMeHXGzqR
        E5kV4Z/PU4gsNQl1p2FhE0xmyMHUibtYaTcgoO6rXta2pmumPjmZpaNp7U22BRQZlK+PgVJspTb4G
        zJrZzbyw==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
        id 1kDTZx-0005zx-H2; Wed, 02 Sep 2020 14:17:37 +0000
Date:   Wed, 2 Sep 2020 15:17:37 +0100
From:   Christoph Hellwig <hch@infradead.org>
To:     Sami Kerola <kerolasa@iki.fi>
Cc:     util-linux@vger.kernel.org, Sami Kerola <kerolasa@cloudflare.com>
Subject: Re: [PATCH] nologin: use sendfile() to submit message to user
Message-ID: <20200902141737.GA22251@infradead.org>
References: <20200901190131.4153-1-kerolasa@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200901190131.4153-1-kerolasa@iki.fi>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Tue, Sep 01, 2020 at 08:01:31PM +0100, Sami Kerola wrote:
> A read() write() pair can be replaced with sendfile(), and it should be more
> efficient than suffling bytes back and forth user and kernel space.

What kinds of fds are this?  If this involves things like a tty
sendfile will probably stop working in Linux 5.10, as the kernel
fallback is pretty horrible and not exactly more efficient.  Sendfile
also hasn't always been supported on all kinds of files, so you'll still
always need a fallback.
