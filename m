Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 94CE445A7A
	for <lists+util-linux@lfdr.de>; Fri, 14 Jun 2019 12:35:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726693AbfFNKfi (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 14 Jun 2019 06:35:38 -0400
Received: from mga03.intel.com ([134.134.136.65]:26634 "EHLO mga03.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726545AbfFNKfi (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Fri, 14 Jun 2019 06:35:38 -0400
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Jun 2019 03:35:37 -0700
X-ExtLoop1: 1
Received: from ajakowsk-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.252.15.131])
  by fmsmga006.fm.intel.com with ESMTP; 14 Jun 2019 03:35:36 -0700
Subject: Re: [RFC] utility for SED management
To:     Karel Zak <kzak@redhat.com>
Cc:     "util-linux@vger.kernel.org" <util-linux@vger.kernel.org>
References: <548EA37F71F6AC4BB746F459732504FF7F1810E3@FMSMSX119.amr.corp.intel.com>
 <20190612134005.cb7m2qhgf2aolrf6@ws.net.home>
 <548EA37F71F6AC4BB746F459732504FF7F184907@FMSMSX119.amr.corp.intel.com>
 <20190614074828.iqgomebc6gilprkn@ws.net.home>
 <608c1dad-09a0-8bb9-bc55-d01e136bc0b5@intel.com>
 <20190614100446.2fw2b6ve7ixbsodu@ws.net.home>
From:   Andrzej Jakowski <andrzej.jakowski@intel.com>
Message-ID: <cea33553-7f43-818a-8c68-a7b5cf2ac4d3@intel.com>
Date:   Fri, 14 Jun 2019 12:35:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190614100446.2fw2b6ve7ixbsodu@ws.net.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On 6/14/19 12:04 PM, Karel Zak wrote:
> BTW, I foundhttps://github.com/Drive-Trust-Alliance/sedutil, this is
> probably obsolete, right? (Oh, ... C++;-).

Yes, it looks abandoned.
