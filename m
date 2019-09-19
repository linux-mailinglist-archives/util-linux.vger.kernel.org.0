Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D6AFCB7772
	for <lists+util-linux@lfdr.de>; Thu, 19 Sep 2019 12:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728942AbfISK3D (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 19 Sep 2019 06:29:03 -0400
Received: from mail-sy3aus01hn2021.outbound.protection.outlook.com ([52.103.199.21]:6138
        "EHLO AUS01-SY3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728519AbfISK3D (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Thu, 19 Sep 2019 06:29:03 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ja15WkELpzIjrOqF9uRz4vBS978LS/0TvXfr9uG5ETRQ1yjDhZhK0FV9xGhEtSGztnwCB+jNfllj3MPBB8Q/ak5u5gsQSo4iEA7o2UmsOhAKR41S9MAD5NIH3UWG0+zvi60jzk8nOiPkShIunG29Mx2q7T/B2Cb/gdjpD8HELHT+sqKJ4qHO9WCJk1+jEMUpvf1pPTY6Lkz1mtkhZT3GzGNMT/qN8Jed2IgWil4rIe7j/Gj7OSUuTQlgy6hQb3CnVD26knG7C+dENUv4xTIqlQrAfQIOJ2Av4qYJZiSCF1Zdh9XkDxOQMbQFbFHS//DGCAM5Y9vIMr54tVMiB8nEWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ctOHH2mTYytKOkOB/KQgjBv82LXnbGG7XKgNOOQYhPo=;
 b=jswPy1k1e+chCgWMLXrgeHAAkEtKkKJSsdHQsuNUDhy0+aFc/sqnUNL0ESaYmJTYbQnsl0ziP5HYTlg20OkHHnUsW3QmXDNMNWtP0DXAZHMWNHSB+r7W97spbJF1PaERfAh+53OI5kMWZVHI+qi4y9CwEMw2AaW2VbMCgEL0JlvhjtANNl3zDQXGPQ0gOFUcQ78hEhsV6pQO+KbuvP+AXAlSJATuYWD3UTGb9PmfARev5a90+19nLbJ8uuL+vwe+xE7zWoVWT1LY4rjDMlEM3EEiY5VJVxF7QmoyvpOsRbhyhNgmthQ0bWngxfhHi4sTJP2/ePr9qfiC05dGn/qnrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.uts.edu.au; dmarc=pass action=none
 header.from=student.uts.edu.au; dkim=pass header.d=student.uts.edu.au;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=studentutsedu.onmicrosoft.com; s=selector2-studentutsedu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ctOHH2mTYytKOkOB/KQgjBv82LXnbGG7XKgNOOQYhPo=;
 b=caKLuj3r/jUJFugKhlOjJk45y1GqheoepIbEK/qw5oq2KaTvq4XseDwmgGD//bEw4+50uqTBFacoL2NWiOw45ZqgmeB2aKS0VUvlwTX3o8eSbhbtQ/e5RbSum8HYdTABCvpD1c8bxV7iHdlT22yki6Jw3KjFshUggRLUwKkaDcs=
Received: from SYAPR01MB2464.ausprd01.prod.outlook.com (52.134.183.16) by
 SYAPR01MB3072.ausprd01.prod.outlook.com (52.134.177.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 19 Sep 2019 10:29:00 +0000
Received: from SYAPR01MB2464.ausprd01.prod.outlook.com
 ([fe80::15cd:1f89:942c:3a8c]) by SYAPR01MB2464.ausprd01.prod.outlook.com
 ([fe80::15cd:1f89:942c:3a8c%6]) with mapi id 15.20.2263.028; Thu, 19 Sep 2019
 10:29:00 +0000
From:   <12962092@student.uts.edu.au>
To:     Emma Lam <Emma.Lam-1@student.uts.edu.au>
Subject: Darlehensangebot
Thread-Topic: Darlehensangebot
Thread-Index: AQHVbtUL0DTYdM9XfUeAEhnJiE6Abg==
Date:   Thu, 19 Sep 2019 10:28:58 +0000
Message-ID: <SYAPR01MB2464A451511EEE40D6FD90D3AA890@SYAPR01MB2464.ausprd01.prod.outlook.com>
Reply-To: "chelsealoan4@gmail.com" <chelsealoan4@gmail.com>
Accept-Language: en-AU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0078.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:76::18) To SYAPR01MB2464.ausprd01.prod.outlook.com
 (2603:10c6:1:e::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Emma.Lam-1@student.uts.edu.au; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [154.160.2.147]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7138e4ee-59e8-4d17-8f93-08d73cec2e06
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:SYAPR01MB3072;
x-ms-traffictypediagnostic: SYAPR01MB3072:
x-microsoft-antispam-prvs: <SYAPR01MB3072FEEE6B4540D2936AF3B9F9890@SYAPR01MB3072.ausprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(376002)(366004)(136003)(396003)(39860400002)(189003)(199004)(256004)(99286004)(2171002)(71200400001)(71190400001)(2860700004)(7416002)(25786009)(8936002)(8796002)(6862004)(2906002)(5660300002)(7116003)(66806009)(52536014)(5003540100004)(316002)(786003)(22416003)(3480700005)(4744005)(88552002)(43066004)(66574012)(486006)(6636002)(33656002)(478600001)(476003)(221733001)(7696005)(66066001)(102836004)(74316002)(386003)(6506007)(52116002)(305945005)(14454004)(7736002)(6116002)(3846002)(6436002)(26005)(14444005)(66476007)(66556008)(64756008)(66446008)(8676002)(66946007)(81166006)(81156014)(55016002)(186003)(325944009)(9686003)(81742002);DIR:OUT;SFP:1501;SCL:1;SRVR:SYAPR01MB3072;H:SYAPR01MB2464.ausprd01.prod.outlook.com;FPR:;SPF:None;LANG:de;PTR:InfoNoRecords;MX:1;A:0;
received-spf: None (protection.outlook.com: student.uts.edu.au does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ilcQBY1L49Dk3WaqLRNMFzOAwB2B4SPVJMZUN8n4PLDAC1lZkwSchgjZ6vB6KfgsMMfkxh33oGn42aagGXHMDOnz5GJN1m4pnQBw5E1Pri7ODs0DSKk/Goc9rhK/e/9fvGMv75XSJnupb79pfWvLaRGnirjOTNxrvmrkM/ue5g3AmSTCheqCIu4t9awx8AVSZv61bZfDAAE6ZtozYPVx3J+YAPeYwd4U0NXxz4OZ5+vh3xrTNSZ7vQlTU4XiGdq9AXaHglELD/je/xdW8kDvw6vHzmEV7azcVfc10Pg0oGE7MDDPd+gtwS4tZaCcYL7+5GBdOaWRwvmMsRagdNJunPL9amzAOSQ5cRZpJMTtWDVBYOX/UGGHAlW5PL3HnFyaIhMposbv8ZoU7lhj2IAtipM692EVguNw0BR7pPTGTlc=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8407A5785338B9448786EBEC69117691@ausprd01.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: student.uts.edu.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 7138e4ee-59e8-4d17-8f93-08d73cec2e06
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 10:28:58.1403
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e8911c26-cf9f-4a9c-878e-527807be8791
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ytyXeEIvalwuBe+FuLQUiece9rSLVq63O3C7qk4F4Z67pmRCvardrDuH7FEhkrRXSxYzAu6Siy5FL5ujHeh28xGlN8/dEMRi4p3Ihtc7XOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SYAPR01MB3072
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Sch=F6nen Tag

Ben=F6tigen Sie ein echtes Darlehen online, um Ihre Rechnungen zu sichern u=
nd starten Sie ein
neues Gesch=E4ft? Ben=F6tigen Sie einen pers=F6nlichen Kredit? Wir bieten a=
lle Arten von Darlehen
mit 3% zinssatz und auch mit einem erschwinglichen r=FCckzahlungsbedingunge=
n.

F=FCr weitere Informationen antworten Sie mit den unten stehenden Informati=
onen.

Name:
Land:
Zustand:
Ben=F6tigte Menge:
Dauer:
Telefonnummer:
Monatliches Einkommen:

Bitte beachten Sie, dass auf Kontakt-E-Mail:
chelsealoan4@gmail.com
