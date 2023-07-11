Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73C3774F50A
	for <lists+util-linux@lfdr.de>; Tue, 11 Jul 2023 18:22:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230106AbjGKQWp (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 11 Jul 2023 12:22:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230263AbjGKQWo (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 11 Jul 2023 12:22:44 -0400
X-Greylist: delayed 753 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 11 Jul 2023 09:22:37 PDT
Received: from correo.48k.eu (correo.48k.eu [217.70.190.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 02C30DD
        for <util-linux@vger.kernel.org>; Tue, 11 Jul 2023 09:22:37 -0700 (PDT)
Message-ID: <d7073192-c58d-2592-56d7-d15a837dc97f@soleta.eu>
Date:   Tue, 11 Jul 2023 18:10:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
From:   "Jose M. Guisado" <jguisado@soleta.eu>
Subject: libfdisk python bindings
To:     util-linux@vger.kernel.org
Cc:     kzak@redhat.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_20,RCVD_IN_DNSWL_BLOCKED,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi all,

I am developing a python binding for libfdisk, it is released under
the terms of the LGPL2.1+.

I have uploaded a simple website for the project, it is available at:
https://48k.eu/python-libfdisk/

I am using this for FOSS project to partition clients remotely.
The target computers run a Python client that uses python-libdisk to
partition the disks.

Any feedback is welcome, thanks!

P.S: Karel suggested [1] time ago that I could report progress here,
so here I am :-).

[1] 
https://lore.kernel.org/util-linux/20220411081504.izsddsnb4m3uguf5@ws.net.home/

--
Jose.
