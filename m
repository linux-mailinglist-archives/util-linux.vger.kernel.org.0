Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFA32497DA6
	for <lists+util-linux@lfdr.de>; Mon, 24 Jan 2022 12:13:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237237AbiAXLN3 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 24 Jan 2022 06:13:29 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:44593 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237240AbiAXLN2 (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 24 Jan 2022 06:13:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1643022807;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=BKPWfD2nrm9bw/TsxWz5cvjNFlLigjxmmE53j7IGtF8=;
        b=LG1q0qgc7siwLiXHa2m7VuSRpMUIyX45WUElhQgB5n5AxEnAYnnbWtrkysaBOdAzT4moa+
        SwF6Tw78rYG4Fp6qROSWa5PHxHhiN++uvHpL+bSgLv9TZSdimWntMIhzwkU+0u16Yz85ax
        unG9TO4q1GbSTdXproUMgAQdePYJiXw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-29-38h2PACzNTmtPrC9xBCz8w-1; Mon, 24 Jan 2022 06:13:22 -0500
X-MC-Unique: 38h2PACzNTmtPrC9xBCz8w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CFB61926DA2;
        Mon, 24 Jan 2022 11:13:21 +0000 (UTC)
Received: from ws.net.home (ovpn-112-8.ams2.redhat.com [10.36.112.8])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E1847AB51;
        Mon, 24 Jan 2022 11:13:20 +0000 (UTC)
Date:   Mon, 24 Jan 2022 12:13:17 +0100
From:   Karel Zak <kzak@redhat.com>
To:     linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
        util-linux@vger.kernel.org
Subject: [ANNOUNCE] util-linux stable realase v2.37.3
Message-ID: <20220124111317.uebrrtdwo6c2ed52@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org


The util-linux release v2.37.3 is available at
 
  http://www.kernel.org/pub/linux/utils/util-linux/v2.37/
 
Feedback and bug reports, as always, are welcomed.
 
   Karel 


util-linux 2.37.3 Release Notes
===============================

This release fixes two security mount(8) and umount(8) issues:

CVE-2021-3996
    Improper UID check in libmount allows an unprivileged user to unmount FUSE
    filesystems of users with similar UID.

CVE-2021-3995
    This issue is related to parsing the /proc/self/mountinfo file allows an
    unprivileged user to unmount other user's filesystems that are either
    world-writable themselves or mounted in a world-writable directory.


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

