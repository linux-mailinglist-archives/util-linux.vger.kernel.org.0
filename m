Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A178146A4C1
	for <lists+util-linux@lfdr.de>; Mon,  6 Dec 2021 19:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243627AbhLFSlS (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 6 Dec 2021 13:41:18 -0500
Received: from mail-co1nam11hn2239.outbound.protection.outlook.com ([52.100.173.239]:2913
        "EHLO NAM11-CO1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S245266AbhLFSlR (ORCPT <rfc822;util-linux-ng@vger.kernel.org>);
        Mon, 6 Dec 2021 13:41:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q5W9sI9Djrzz9tO7yrk9ZmA8UJiowLYS2V2690tulotCQcUCUYTBtD4z7ZfmL+KcivjvGe3I3itRv9YEeVkRp8gozkCXVWlb9g9OIoxr4l7mbWUQwgjf2egamN7eyAtnii19Li0k3fBeKvJdd0JlFjWNNVgQxoMoBq7AhNBgIUrBYNNeGd29FyFhapaEL8Xyx6Jc98k7K5DqXU19PbhcT9UqTtj3qBZxyQVFDsV4qpJXwddKEue2bkp/ilUmUipGDSIz7/wCtq0Bwqe3H9ycqSoAwk0yzTy2mNPz9idw5q//4Lmxmg0GhMcsRc5FhD/7THoBAQzzk9jc+2LmvEQaJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NTkULZ5UHExQp4+lt+mjKcEqTWLs4cv4821EJcQtSYE=;
 b=byslnms7FBY84Zbv+Q/BOsa7k7B33Bztox/jHdLz39YtEwXoK7Llv/Q0/afKHWIKIVnraapEYcLH1pQ4NPUkLF8wC7XkPWi/8OSH0Na2oBhGvT7LDVLFLo63diVxvryiC1XK8Ajq9NuJT0Iohkzp56DvPK9R83Gzbo1LrIkT4Zlw9XsY7PL4XF1poCpt1wvM47Zd07MtnBJhuP5E/a6U9bky+8X2C3a94c2NhEsQG8xKJVre6obORu5R/1UXnrAROXVSQbXlbROBhgyzrz69mvot3ixCWrUCkYGBIXVqkF21Msy++fq2xHkAep6knjxjyDHNK27mLB2Ic04Uj9/Csg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 146.201.107.145) smtp.rcpttodomain=ryfiej.com smtp.mailfrom=msn.com;
 dmarc=fail (p=none sp=quarantine pct=100) action=none header.from=msn.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fsu.onmicrosoft.com;
 s=selector2-fsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTkULZ5UHExQp4+lt+mjKcEqTWLs4cv4821EJcQtSYE=;
 b=InVbJaD/DvBz6X5OVToFV0JTCmQcj8tzZsIDs5X+K1JDLAgIDe7KhmgXTDBjs1p0wqinqGVgxyYFW4T8E5tY4XOFWC4Ml/nNHqXM2Mkb7L9n46fIHcZvue7o9i9Y+1NQCHCRBtnf9ggqPniwx2FZuXAxtZ7go6TksH1AOCK0J5w=
Received: from MW4P223CA0027.NAMP223.PROD.OUTLOOK.COM (2603:10b6:303:80::32)
 by CO6P220MB0500.NAMP220.PROD.OUTLOOK.COM (2603:10b6:5:359::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.20; Mon, 6 Dec
 2021 18:37:41 +0000
Received: from MW2NAM04FT005.eop-NAM04.prod.protection.outlook.com
 (2603:10b6:303:80:cafe::55) by MW4P223CA0027.outlook.office365.com
 (2603:10b6:303:80::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.17 via Frontend
 Transport; Mon, 6 Dec 2021 18:37:41 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 146.201.107.145) smtp.mailfrom=msn.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=msn.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 msn.com discourages use of 146.201.107.145 as permitted sender)
Received: from mailrelay03.its.fsu.edu (146.201.107.145) by
 MW2NAM04FT005.mail.protection.outlook.com (10.13.30.122) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.13 via Frontend Transport; Mon, 6 Dec 2021 18:37:41 +0000
Received: from [10.0.0.200] (ani.stat.fsu.edu [128.186.4.119])
        by mailrelay03.its.fsu.edu (Postfix) with ESMTP id 408CE951B4;
        Mon,  6 Dec 2021 13:37:05 -0500 (EST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Re: From Fred!
To:     Recipients <fred128@msn.com>
From:   "Fred Gamba." <fred128@msn.com>
Date:   Mon, 06 Dec 2021 19:36:21 +0100
Reply-To: fred_gamba@yahoo.co.jp
Message-ID: <a8b2e732-f9dc-4b3b-98b6-6ecd5ee33d0a@MW2NAM04FT005.eop-NAM04.prod.protection.outlook.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6121a85a-385e-45d6-d27a-08d9b8e77c72
X-MS-TrafficTypeDiagnostic: CO6P220MB0500:EE_
X-Microsoft-Antispam-PRVS: <CO6P220MB0500BA02A617CD734755ACAEEB6D9@CO6P220MB0500.NAMP220.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 0
X-Forefront-Antispam-Report: CIP:146.201.107.145;CTRY:US;LANG:en;SCL:5;SRV:;IPV:CAL;SFV:SPM;H:mailrelay03.its.fsu.edu;PTR:mailrelay03.its.fsu.edu;CAT:OSPM;SFS:(4636009)(84050400002)(46966006)(40470700001)(31686004)(6666004)(356005)(47076005)(7596003)(956004)(2906002)(508600001)(6862004)(8676002)(31696002)(26005)(6200100001)(5660300002)(83380400001)(82202003)(82310400004)(40460700001)(7116003)(786003)(316002)(2860700004)(86362001)(336012)(6266002)(8936002)(35950700001)(70206006)(3480700007)(7406005)(7366002)(70586007)(7416002)(9686003)(480584002);DIR:OUT;SFP:1501;
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUx1alpSS3BBUHlCckdsMitRUWNSTkJEUnRnYmQ4enpPT3ROVHBDVWZoZnln?=
 =?utf-8?B?dndJcHF5MGZKeU03cnBIenVuNXdWajIxaEJzMEVCQTM0UU5wMkpsQnVGcjZy?=
 =?utf-8?B?aXF6a0I4NzhxYlJOTm5VZnNKUXFldlBvdVlUVkYvbWV1YWxRc0sxRThZcHVx?=
 =?utf-8?B?Mzk3LzlQNGJBZldIY05HOU1DOHdJWHNtcG83TEFQbkl1cFl2TjZyNGUvbU9a?=
 =?utf-8?B?cUgyMFZHRHA2Y0pabDl0NGNWQ2dBQ0FQODFaMXJabUxSVlU5N0VaT3JRamxK?=
 =?utf-8?B?V1hENjEybmZkNDNuT3ZKNTFGSm4yN091VitLeDZRWnBEbmEvcU1uei8yQWxQ?=
 =?utf-8?B?TkFUamhZMWh2eW92dWZDQ3ROU3lMV25SK2sydXVQVDRCd1hXUmZmWHI0MXV6?=
 =?utf-8?B?ZHJXbGs1S3g5VVRFYS9tM29ZTHpLekdibE5Wek5YejRtZFd0U3QzTnZzWlE3?=
 =?utf-8?B?ZWFmMkpLSDRvWkcvOUZOWG01K2FhSVN0M1N0RTNnd2pNS21jcytQZW5Ia05T?=
 =?utf-8?B?MHZsWmFCQ2xlUVc5b0xsUlRObE5LZnU0QUhhVVNicHIyYmdhMnV6NXcyTWQv?=
 =?utf-8?B?SHJhUFhxVXgxcm5pT1l2cVY2dnozUGh0d1dJZWVDN3k4MEJMOUVaRUpwK2Mr?=
 =?utf-8?B?d0hobVlWdnF3a1o0VHoxY1FUZ29jemJ6d1EwWHh0NVUzZ0ZiZ09ja3lJbWt3?=
 =?utf-8?B?NDRMQ0xuTjhDQkFKajZFb3g0OUtsSEoveXJBRG5NZTdIK3BGVGVoZEdHbUZV?=
 =?utf-8?B?bWM4QmFRU0NqcjFSTHhCUXg2UldhcjlZaWd0L1R6R2NFaFliemxHZFNPS2s4?=
 =?utf-8?B?MlZ0VjVvRndaek9mZmRkendCUUZ3ck9PSXIzRGxSVFduUnd0TFg4U09ldXJa?=
 =?utf-8?B?bUhnMGFqUk9ORFhoMERmM0xnVVNzemNuTlBtaUl0S2s5Z1ZscWJKbHV5UkxK?=
 =?utf-8?B?b0wzTlZqUldNcnR6UDgxYVoxTVg1d3Z2QkQzWVRJcGRCczJDWUdKd0NPb09R?=
 =?utf-8?B?dG5BTHFPb2ZTaldiL2NuRE45WmZWVHo2OGVwTjNSUHhyTU1ZYlBGUUgrVTI1?=
 =?utf-8?B?aHM2c1FqQzBCSTJqZThRK0UyZE5EN0FNNy8zL2JOUnNIWVJ5emI4b0h5R1NX?=
 =?utf-8?B?UkJnU3pWRncyY3NuZzlSQjlIS3Zrdnlpc2ZHbzdwa0tuQzk0bUMySTQ3SHJ1?=
 =?utf-8?B?S1hxVmhmdjBoVkRGOHdEbUoyVnNGYWxPcWtEWWs5UFFOWStQU29RWmI5RnJm?=
 =?utf-8?B?aW5acnpCaHg4WWw1L3JqL2JvZHdhUjNab0pERVZFZ0dReHhWUi9jcWZEL1M1?=
 =?utf-8?B?c0hkOVNObmpVMU1uT1BacEtaTklkZW9iOUFhbEdOait4SGZXTEVrS0VNVlpl?=
 =?utf-8?B?citHS0VXRW1ldzNmeTF3YTdyTFJhRDJMNjlVaFRwRVo4RkM1eS9BbTZQR1RC?=
 =?utf-8?Q?xumzxN70?=
X-OriginatorOrg: fsu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2021 18:37:41.2148
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6121a85a-385e-45d6-d27a-08d9b8e77c72
X-MS-Exchange-CrossTenant-Id: a36450eb-db06-42a7-8d1b-026719f701e3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a36450eb-db06-42a7-8d1b-026719f701e3;Ip=[146.201.107.145];Helo=[mailrelay03.its.fsu.edu]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM04FT005.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6P220MB0500
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello,

I decided to write you this proposal in good faith, believing that you will=
 not betray me. I have been in search of someone with the same last name of=
 our late customer and close friend of mine (Mr. Richard), heence I contact=
ed you Because both of you bear the same surname and coincidentally from th=
e same country, and I was pushed to contact you and see how best we can ass=
ist each other. Meanwhile I am Mr. Fred Gamba, a reputable banker here in A=
ccra Ghana.

On the 15 January 2009, the young millionaire (Mr. Richard) a citizen of yo=
ur country and Crude Oil dealer made a fixed deposit with my bank for 60 ca=
lendar months, valued at US $ 6,500,000.00 (Six Million, Five Hundred Thous=
and US Dollars) and The mature date for this deposit contract was on 15th o=
f January, 2015. But sadly he was among the death victims in the 03 March 2=
011, Earthquake disaster in Japan that killed over 20,000 people including =
him. Because he was in Japan on a business trip and that was how he met his=
 end.

My bank management is yet to know about his death, but I knew about it beca=
use he was my friend and I am his Account Relationship Officer, and he did =
not mention any Next of Kin / Heir when the account was opened, because he =
was not married and no children. Last week my Bank Management reminded me a=
gain requested that Mr. Richard should give instructions on what to do abou=
t his funds, if to renew the contract or not.

I know this will happen and that is why I have been looking for a means to =
handle the situation, because if my Bank Directors happens to know that he =
is dead and do not have any Heir, they will take the funds for their person=
al use, That is why I am seeking your co-operation to present you as the Ne=
xt of Kin / Heir to the account, since you bear same last name with the dec=
eased customer.

There is no risk involved; the transaction will be executed under a legitim=
ate arrangement that will protect you from any breach of law okay. So It's =
better that we claim the money, than allowing the Bank Directors to take it=
, they are rich already. I am not a greedy person, so I am suggesting we sh=
are the funds in this ratio, 50% 50, ie equal.

Let me know your mind on this and please do treat this information highly c=
onfidential.

I will review further information to you as soon as I receive your
positive response.

Have a nice day and I anticipating your communication.

With Regards,
Fred Gamba.
