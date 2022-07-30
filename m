Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED0C7585AE3
	for <lists+util-linux@lfdr.de>; Sat, 30 Jul 2022 16:56:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231472AbiG3O4T (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sat, 30 Jul 2022 10:56:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231148AbiG3O4S (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 30 Jul 2022 10:56:18 -0400
X-Greylist: delayed 349 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 30 Jul 2022 07:56:17 PDT
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0028140C7
        for <util-linux@vger.kernel.org>; Sat, 30 Jul 2022 07:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
        Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
        Content-Description:In-Reply-To:References;
        bh=/YllT4JXUJeA4BnLzJJBNUBWV0+SXggXIP/rlqUtyNU=; b=CPlvCdZfRKlyhEvRcd+PFh+AJ9
        CM8ppkyhUcdzk+by+ufBOxcjKnhwP+EwuW3Nw3exD53mzrOAlulInLbcAUtxkT0Yd7kAZX7zLAv+H
        J6fYnxog7RxuceyYTEc9muGhhK96mKCpz5E40ZLOYkvt8Iluru90G+zd7/1T7umxJFfWqNbBf3aP0
        gdNReM1RRNCPGN93VIY5pOoosXP6ukd8t86sGGzPZEvlUudq41Sazb71KuGfxncdAlZraYFcKHCnG
        KPzZuyyXHXY/FzIi9G3yrxRarHwN7nKqmL+bQgmHLHJFF88DJ1Ddo6Wo9ADBumNuwL9p7FvvUXxkX
        oF0zMe7A==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <zeha@debian.org>)
        id 1oHnnN-002rcY-V5
        for util-linux@vger.kernel.org; Sat, 30 Jul 2022 14:50:25 +0000
Date:   Sat, 30 Jul 2022 16:50:24 +0200
From:   Chris Hofstaedtler <zeha@debian.org>
To:     util-linux@vger.kernel.org
Subject: uuidd user / DynamicUser?
Message-ID: <20220730145024.gndtik3c24ivlukt@zeha.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Debian-User: zeha
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_NONE,UNPARSEABLE_RELAY autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi,

Debian sets up a uuidd user, for uuidd to run as. We also set the
home directory for this user to /run/uuidd, which is on a tmpfs, so
not ideal.

I was wondering what other distributions do for the home directory?

Also, is anyone using DynamicUser for uuidd.service?

Thanks,
Chris

