Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49E0F339C7F
	for <lists+util-linux@lfdr.de>; Sat, 13 Mar 2021 08:04:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231383AbhCMHEM convert rfc822-to-8bit (ORCPT
        <rfc822;lists+util-linux@lfdr.de>); Sat, 13 Mar 2021 02:04:12 -0500
Received: from bufferz.csloxinfo.com ([203.146.237.187]:22235 "EHLO
        bufferz9.csloxinfo.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S230309AbhCMHEM (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Sat, 13 Mar 2021 02:04:12 -0500
Received: from mailx1-13.cslox.com (unknown [10.20.140.13])
        by bufferz9.csloxinfo.com (Postfix) with ESMTP id 19167224A2B7;
        Sat, 13 Mar 2021 14:04:02 +0700 (ICT)
IronPort-SDR: 8e7dnQR2J1tEuwqlCGgFQ6Xs13nxIWkKZVGyu9vZxan5rXjXgjMLMK9GaM5fjtuiJElLSei6cU
 xb7azBq6uBAm+MwmTs9Rw5e3Ct4kMpkYk=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A+gchhaz9uwpYZ4jKsiTyKrPwob1zdoIgy1?=
 =?us-ascii?q?knxilNYDZSddGVkN3rsfgA3wT1kSsQXnZIo6HjBICrR3TA+ZlppbQLNbC5Uw?=
 =?us-ascii?q?X8/EeuJodu7YztqgeQeBHW3OhbyKtmbuxCGMT9ZGIase/W6BS1euxQpuWv37?=
 =?us-ascii?q?uvgY7lvhBQZCVLT40l0AtjEAacFSRNJDVuIZYiDpKT6o5mqlObCAwqR/+2DH?=
 =?us-ascii?q?UEQOTPzuej/PmNDHFpOzcd5BCKnXeU7tfBYmGl9y0DWDBCy6pKyxmhryXF4M?=
 =?us-ascii?q?yYwpWG4y6Z6G/J844TotHozdxOCaW35vQoFg=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0D//wAWYkxg/2OS/hsDVxkBAQEBAQE?=
 =?us-ascii?q?8AQEBAQEBAQEBAQEBAgEBAQEBAQEBAQEBFQeBQQEBAQEBAQMBAYE6AgEBAQE?=
 =?us-ascii?q?BATAGEgEBAQEBAQEBARSBTQEBDBkSFxqIPoQoAYccggOBLIF9hmgsB4E5g3E?=
 =?us-ascii?q?LcQMCEIIWgWQzhFtWE4FoCwEBAQEBAQEBAQ4BLAIEAQGBFIMvBQOBeQElPAI?=
 =?us-ascii?q?MAQIDAQELAQEFAwIBBgRxhTQIMkMBAQEBAQEBAQEBAwQFAYVdAQEBBgEBARM?=
 =?us-ascii?q?gEyMQMBQMJAIiAQ4BHgoJNQEBAQEBAQEBgi4ESQEBAQEBgggBAQIuBZ1chzu?=
 =?us-ascii?q?HT4EdARYNDQKDN4FzghQBIwQKgSE3d4E3AgEBAQEBAQEBixiCSYIogUeCMIJ?=
 =?us-ascii?q?EgikSARIBYIMMgisEgUsKgRwuUh0OFVMCKzeBEFMBAQGPSAyLQQGBIFmKPAe?=
 =?us-ascii?q?RSgEGAjGHBIIHjVeFNIJnDyIXgyeKXIVqA4NXDgEmgT2KQ4ZGhAyoD4VtU1A?=
 =?us-ascii?q?MDVpwcIFuL08BAUtQGYUBik4BAo1DIAEBMDgCBgoBAQMJWIVXhHGCICRDZIJ?=
 =?us-ascii?q?3gQ2CHwEB?=
Spam_Positive: LL
X-IronPort-AV: E=Sophos;i="5.81,245,1610384400"; 
   d="scan'208";a="114176138"
Received: from unknown (HELO mail.blithailand.com) ([27.254.146.99])
  by mail-1.csloxinfo.com with ESMTP; 13 Mar 2021 14:04:02 +0700
Received: from localhost (localhost [127.0.0.1])
        by mail.blithailand.com (Postfix) with ESMTP id 4862D9EE22A;
        Sat, 13 Mar 2021 13:44:46 +0700 (+07)
Received: from mail.blithailand.com ([127.0.0.1])
        by localhost (mail.blithailand.com [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id VNrBwRC5LelJ; Sat, 13 Mar 2021 13:44:46 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
        by mail.blithailand.com (Postfix) with ESMTP id DCD849EE22B;
        Sat, 13 Mar 2021 13:44:45 +0700 (+07)
X-Virus-Scanned: amavisd-new at blithailand.com
Received: from mail.blithailand.com ([127.0.0.1])
        by localhost (mail.blithailand.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id qzlyGU3lPhwk; Sat, 13 Mar 2021 13:44:45 +0700 (+07)
Received: from reverse-dns.chicago (unknown [109.195.183.248])
        by mail.blithailand.com (Postfix) with ESMTPA id 586579EE22A;
        Sat, 13 Mar 2021 13:44:30 +0700 (+07)
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Description: Mail message body
Subject: Help    
To:     Recipients <angelacampbell349@aol.com>
From:   angelacampbell349@aol.com
Date:   Fri, 12 Mar 2021 22:44:23 -0800
Reply-To: campbellangela827@gmail.com
Message-Id: <20210313064431.586579EE22A@mail.blithailand.com>
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Good day.

I am sorry for interrupting your day, with due respect trust and humility, I write to you this proposal, which I believe would be of great interest to you. I am looking for a reliable and capable partner that will assist my family and I to transfer funds to his personal or company account for investment purposes because of my health..

I am Mrs. Angela Campbell, A German citizen and wife to Late Mr. Mike Campbell, who was a Commercial Farmer and cocoa merchant in Bindura and Harare, the economic city of Zimbabwe.

My husband was among the people that were murdered in cold blood by the President Robert Mugabe Administration during the land dispute that just happened in Zimbabwe wholly affected the white farmers and this resulted to the killing and mob action by Zimbabwean war veterans and some lunatics in the society. In fact, a lot of people were killed because of this land reformed Act.

Please for further details, kindly email me with your direct contact informations to my private email address: campbellangela91@outlook.com

Full Name:|Home Address|Telephone Number|Mobile Number|Date of Birth| Occupation:.

Please do notify me immediately you receive this proposal.

Thanks and God bless you
Mrs. Angela Campbell and (Family).
