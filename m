Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63196322270
	for <lists+util-linux@lfdr.de>; Mon, 22 Feb 2021 23:58:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232012AbhBVW5x (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 22 Feb 2021 17:57:53 -0500
Received: from info.physics.ubc.ca ([142.103.234.23]:56986 "HELO
        info.physics.ubc.ca" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with SMTP id S232043AbhBVW5w (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 22 Feb 2021 17:57:52 -0500
X-Greylist: delayed 532 seconds by postgrey-1.27 at vger.kernel.org; Mon, 22 Feb 2021 17:57:42 EST
Received: by info.physics.ubc.ca (Postfix, from userid 1000)
        id 99765121D04; Mon, 22 Feb 2021 14:48:10 -0800 (PST)
Date:   Mon, 22 Feb 2021 14:48:10 -0800 (PST)
From:   Bill Unruh <unruh@physics.ubc.ca>
To:     util-linux@vger.kernel.org
Subject: Bug in the "last" command
Message-ID: <alpine.LMD.2.11.2102221444220.4235@physics.ubc.ca>
User-Agent: Alpine 2.11 (LMD 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

The last command seems to have a bug in which an ongoing login is listed as
Description of problem: If I run the command last I get the top line as
unruh    pts/3        ::1              Wed Jul 29 23:33    gone - no logout

I am however still logged in via ssh (on an ssh tunnel) 
when this happens. Other logged in users may have lines like
daniel   pts/3        :0               Tue Jul 28 15:49 - 16:02  (00:12)
daniel   pts/2        :0               Tue Jul 28 15:49   still logged in

But not the latest login.



William G. Unruh __| Canadian Institute for|____ Tel: +1(604)822-3273
Physics&Astronomy _|___ Advanced Research _|____ Fax: +1(604)822-5324
UBC, Vancouver,BC _|_ Program in Cosmology |____ unruh@physics.ubc.ca
Canada V6T 1Z1 ____|____ and Gravity ______|_ www.theory.physics.ubc.ca/
