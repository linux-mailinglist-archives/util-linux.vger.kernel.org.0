Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 175DB7C672D
	for <lists+util-linux@lfdr.de>; Thu, 12 Oct 2023 09:57:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347096AbjJLHXL (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 12 Oct 2023 03:23:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343583AbjJLHXK (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 12 Oct 2023 03:23:10 -0400
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01olkn2095.outbound.protection.outlook.com [40.92.98.95])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BBDF90
        for <util-linux@vger.kernel.org>; Thu, 12 Oct 2023 00:23:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIbr/0xuPz6ZpPgzzHufi7XLMKYxdueFiwXKR/3cTP/Qb97Lccg0vfH19FtwPUgKPL1OlJIgjU4hutpsN6B8IYZAc5JIIVGJCpq5ETIFl45aFB5PKXsxfIGA+dnRkPi8B0pMbKoN3RRVgcYH5DQmRauzmLoUIb10S9NoCzu2MVKqaKZTJL5npcS9FBspJnfY+L0vXJK2qj/uZDZ+4wICO+uzYz861F2hkt6Bf8YAQJd6HXzAgP5LiQ6VFzrI5g2NYB1nz54MU0fi8pi6EXwOW5T/1S7cMZocuzOj9FGlSJYK3/2BFXQSQq8TvEOOjnjurUZoRRDt7KwIZzjij0LxjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tj6+RhINqI2G4almNAEtBxni6Rx6HEckJh1OmuAPXbo=;
 b=iYqSr0gJ/6ZfL2fKn8Lr7RKzBm04wS0I+45HSXe+Z9VmIV9mkJXDek/KgchZ3h6tlA8poBMWPVuRECIw6QSpbJsdAqVljO/axDFFtiMotiQktFJyn9tg9mZN1B7/Ma6xXda+23jd+0wvzIhA4myB4eDHGfwBfZDWAS9k1JNH9oHU9YUiKZ+GhEGl6xVSJurvKw1K9U3re2oEzY8xsD3T9azF/fW3p4v4Htw4Nmd8O6AJyL0G9RyuY9URVt1icqSGO8VXmAZMxfHAYRC0rtNS/r6duaTIYB4o+VWZzkGrTJT9gBwzBvogXM7Q1PHJT7CARwMW8P8zJMl5eVb3uRsVDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tj6+RhINqI2G4almNAEtBxni6Rx6HEckJh1OmuAPXbo=;
 b=rccYTiZF/KcLh+AFJ2iQZEqFCRsT/XDCdg8x4ekUm4fJ4Ap0JEFUMYhDepYT1rZtqx0P58/AVdGP/zrRchdXoU/Y0kVAgoO6VHhUcscUPOIx/yy/EgByyhNj/zlecCPMO9Llmso9mc++KcA/dYboNxYVaRZwViTf7ReTbOk+lH6ejFDI+hxAla5Nbv78KtoMRJsEbd6fvTGMlVaeHQrfLbF3a0TsWNM/hz/QJBgQihVeqiPSOV5ynmRAoTBL3y0iUY1nYxFMYgoybLPu3dWPzxMGA+gtnyjuWEn5KS/7SSVuQ8JFdk4AIVnXMrca3XZSbU2Vqq+vod3RsO1p1IXDSw==
Received: from TYCPR01MB9507.jpnprd01.prod.outlook.com (2603:1096:400:195::9)
 by OS0PR01MB5300.jpnprd01.prod.outlook.com (2603:1096:604:a3::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Thu, 12 Oct
 2023 07:23:04 +0000
Received: from TYCPR01MB9507.jpnprd01.prod.outlook.com
 ([fe80::3e75:99d4:dac4:beb]) by TYCPR01MB9507.jpnprd01.prod.outlook.com
 ([fe80::3e75:99d4:dac4:beb%6]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 07:23:04 +0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Re: Empowerment Grant
To:     Recipients <bigfootdelivery@outlook.com>
From:   "IN FO" <bigfootdelivery@outlook.com>
Date:   Thu, 12 Oct 2023 12:52:40 +0530
Reply-To: info@imf-grant.org
X-TMN:  [euIyfXolVEPknQn8uI8a5r+xZ5s8pvJg]
X-ClientProxiedBy: VI1P190CA0049.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::7) To TYCPR01MB9507.jpnprd01.prod.outlook.com
 (2603:1096:400:195::9)
Message-ID: <TYCPR01MB950795A170A581CAD05DC6A3BED3A@TYCPR01MB9507.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB9507:EE_|OS0PR01MB5300:EE_
X-MS-Office365-Filtering-Correlation-Id: e26f206d-7f3d-4ed3-2095-08dbcaf411ca
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8PS2PjkwBhZVDrfQ5ouGMexoUFcSP7En58i7zxbRkpi5yj10GdKdXbJzuFOuxIgu9Igh7eauPotwIhtRHrnIjOkOl9ZcTUUaRcspj7opM73Wcu6vq7XiRIhwZvRN2ZHBwbBes07LnYuNvnV9hZUegXIwaDYHEYUfUIeGcB0savy8Zyn5qOavCQDp3i5lM9XJlc6jVNcBFX1wP2ksYsz2gaoxl9NXx8RiX2ZOGeke2EI+hE/V88xZhFBzNE7hHAjy8A4DFbvygVM+Bj3SmKwn9PgAMIumYop2HGnO2eKSkUbli3B36Y6uTNSlFgLSw/I4axjGz4uSCsHWKm1neZLM7RSlpPuHs3oMO5sc0zSVamjv9I3TX9AhIMmkMiT752Bh6O3DACRKjIcX+hw1DArzxgNLIUIQfJTrBtHn2mbnfntjk6fp8L4VTB7Ie+hEND5bLqGGlH3HIoUV6qt+gSrqwMWGK+X8qek5eAqQgXiZNG1DR6CQWnUNdEvWjnE8JyoURcm9zqC4rlT4iT52a0hArBv5Q3+tJ8uiEHP84x0HVfmxh3jpGtdgTVu0ZuNur1UizkBa6tCse/0H2onmP1G+4jRjPOdm9qLS0lvEwTYNH+OhWcktyjYtwo0Arq5v6lsT
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Vf3tanvZb82gVxuxx/XV7thQ57y7ix5f1UoFt2ENrO1bgX/uqEdWVtI1Pg?=
 =?iso-8859-1?Q?u01/QZegKutwevz87a5+EbJBLBftbYPZwWavD8KuBbErZk9//YVVgmL46u?=
 =?iso-8859-1?Q?iCiictNW6OhK4tnQI9qDFewdkWNYoBBXr4UFmS3679v+gk/ywB8uxqQyjy?=
 =?iso-8859-1?Q?vT9NacGjo33RpVWzLOTMCTEx6c06G6qTWMXqHJS24vWBXlpb0XLmAw56g6?=
 =?iso-8859-1?Q?DRdkDp4S9E53IbSqktDq1/0LuZL26RBma3TjNFIZG0oO//4n3ZPw/L7vvp?=
 =?iso-8859-1?Q?VDlBiyPmH410oRQxWWkJuPa1DluG9UKEEP08EsC3ruBY6RwXpGj9NGtO2F?=
 =?iso-8859-1?Q?0ahguReWraOsn8UGblXtCvImGR2PZ7taAFenePHa2t6Kg0VsCN6VsZm7Xx?=
 =?iso-8859-1?Q?r/bmTzuQuCHdr5gkrXIKqbJVk5A4Gp/col3y1KBcENKh+vkIOC8rLOf21Q?=
 =?iso-8859-1?Q?7rm6SN4QcVuH5OpcrHWPSmu9Az3l2hylk0GMISuVkvjU+gQWgdWaK6acj9?=
 =?iso-8859-1?Q?m8lL253MxVBbsdByQMjqTabMdAer+gjQeGRRxaePVOjX/sf0+vbaCNJBDr?=
 =?iso-8859-1?Q?B652VGWpXXdVKSOe2ROfsrF9WaRfR6w9HS3j1sFG6pxPBIjITygiVmIN5+?=
 =?iso-8859-1?Q?F8t8FlrP7qRhMofN/Vg2zdH4wMJI4BREgeJpK/YgKrXaB+xh21ReduHh3s?=
 =?iso-8859-1?Q?UPrI7HEq/lx8ljS8bH+4LnkiDrwMAnL521ecw4r6ault4fFuBxLvRwFkt1?=
 =?iso-8859-1?Q?l12/cX+XbBws5atVx08UFS163m3NHSokyuWRuRd9sVJfa1cjTDIfmG10LL?=
 =?iso-8859-1?Q?sEl27CGVugwbtl+SfNYaRXN60+YvXTqPljvy927cT4hyyyks/wTMo64p5x?=
 =?iso-8859-1?Q?rMP6QuZiP/ukKr74Sw6mC6tf8pUReTHu2Rp7H9/nXB2qdyMnIzS+YdfJ2W?=
 =?iso-8859-1?Q?ze9D2DFBPokDlBeztl0dE9PYPS9Yp2Hj9jBmG+JBxdeWPda/4a19znZanK?=
 =?iso-8859-1?Q?t1x8pn3Cr3bVsiX3tcV8iXQj0ohvpyD8oj8/o+UwQStdR20au8ZedFDxD5?=
 =?iso-8859-1?Q?9tvZ10h1Hxj+vcBNKMCuKrO6g61OdldFWhVbTl2ql21gJfz8dNqHkl6iev?=
 =?iso-8859-1?Q?1EeBPDZR9g4wn/W+wgENm651C+KGNt7RHCliAmEwakLxCA/+RJTxVNXejb?=
 =?iso-8859-1?Q?hBs6j92quimCpTt2+LrQqhDBqV/pUNPfldLfasSuDL/KMwwub0v1wEWBpo?=
 =?iso-8859-1?Q?pEiTKrrJkZP6FMkwAuZtxRpDGqsmXq5pdNUhVbhwo=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e26f206d-7f3d-4ed3-2095-08dbcaf411ca
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB9507.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 07:23:04.0801
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS0PR01MB5300
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

 =20
Final Notice:=20

Congratulations!!! You are among the 50 beneficiaries of 2023 IMF-UN-World =
Bank Grant. Reconfirm if this email id is active for more details

Regards,
Mrs. Oliva Pathe
Communication Secretary
