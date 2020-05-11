Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F7D21CE90B
	for <lists+util-linux@lfdr.de>; Tue, 12 May 2020 01:28:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725836AbgEKX2c (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 11 May 2020 19:28:32 -0400
Received: from einhorn-mail.in-berlin.de ([217.197.80.20]:53601 "EHLO
        einhorn-mail.in-berlin.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725828AbgEKX2c (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 11 May 2020 19:28:32 -0400
X-Greylist: delayed 873 seconds by postgrey-1.27 at vger.kernel.org; Mon, 11 May 2020 19:28:31 EDT
X-Envelope-From: ml@ft-c.de
Received: from authenticated.user (localhost [127.0.0.1]) by einhorn.in-berlin.de  with ESMTPSA id 04BNDuKm001021
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
        for <util-linux@vger.kernel.org>; Tue, 12 May 2020 01:13:57 +0200
Reply-To: ml@ft-c.de
To:     util-linux@vger.kernel.org
From:   ml@ft-c.de
Subject: rename bug
Message-ID: <06b88d20-4753-bba5-4df6-ea992aca214e@ft-c.de>
Date:   Tue, 12 May 2020 01:13:35 +0200
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hallo

here is a bug in the rename command.
Pleae test it:

The rename command doesn't work from another directory, when there is a 
"^" (beginn-line) in the regular-expression.

# script beginn ----- ----- ----- ----- -----
$ uname -a
Linux ftd2 4.15.0-3-amd64 #1 SMP Debian 4.15.17-1 (2018-04-19) x86_64 
GNU/Linux
$ rename -V
/usr/bin/rename using File::Rename version 1.10


$ mkdir test
$ cd test/
/test$ touch Film-filmtitle1.txt
/test$ cd ..
$ mkdir test2
$ cd test2

/test2$ rename -v -e 's/^Film-//eg' ~/skripte/test/*

/test2$ ls -l  ~/skripte/test/*
-rw-r--r-- 1 ft ft 0 Mai 12 00:48 /...../test/Film-filmtitle1.txt

/test2$ cd ../test

/test$ rename -v -e 's/^Film-//eg' *
Use of uninitialized value in substitution iterator at (eval 8) line 1.
Film-filmtitle1.txt renamed as filmtitle1.txt

/test$ ls -l  *
-rw-r--r-- 1 ft ft 0 Mai 12 00:48 filmtitle1.txt

# script end ----- ----- ----- ----- -----

In the script, the first rename command have no result/output,
the second rename command there is a result.


 From Germany
Franz
