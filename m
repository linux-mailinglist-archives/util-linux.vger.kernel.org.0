Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6355C234D6A
	for <lists+util-linux@lfdr.de>; Sat,  1 Aug 2020 00:07:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725830AbgGaWHM (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 31 Jul 2020 18:07:12 -0400
Received: from info.physics.ubc.ca ([142.103.234.23]:50376 "HELO
        info.physics.ubc.ca" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with SMTP id S1725767AbgGaWHM (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 31 Jul 2020 18:07:12 -0400
X-Greylist: delayed 573 seconds by postgrey-1.27 at vger.kernel.org; Fri, 31 Jul 2020 18:07:02 EDT
Received: by info.physics.ubc.ca (Postfix, from userid 1000)
        id A954212004C; Fri, 31 Jul 2020 14:57:29 -0700 (PDT)
Date:   Fri, 31 Jul 2020 14:57:29 -0700 (PDT)
From:   Bill Unruh <unruh@physics.ubc.ca>
To:     util-linux@vger.kernel.org
Subject: last: incomprehensible note--"gone -- no logout
Message-ID: <alpine.LMD.2.11.2007311448390.10299@physics.ubc.ca>
User-Agent: Alpine 2.11 (LMD 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

The message from last "gone - no logout"  makes no sense. I log onto the machine with ssh,
and that is message I get from last, and I certainly am not gone (I am reading
the message on that login)

Here is an example
unruh    pts/5        ::1              Fri Jul 31 22:51    gone - no logout
unruh    pts/5        ::1              Fri Jul 31 22:49 - 22:51  (00:01)
daniel   pts/4        :0               Fri Jul 31 00:18   still logged in

Note that the second entry is my last login (where when I ran last, it gave me
the "gone - no logout" entry, and the first is the current ssh login.
