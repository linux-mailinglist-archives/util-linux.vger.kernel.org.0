Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4993BECDB
	for <lists+util-linux@lfdr.de>; Thu, 26 Sep 2019 09:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731707AbfIZHuR (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 26 Sep 2019 03:50:17 -0400
Received: from sonic316-13.consmr.mail.bf2.yahoo.com ([74.6.130.123]:42371
        "EHLO sonic316-13.consmr.mail.bf2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729340AbfIZHuR (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Thu, 26 Sep 2019 03:50:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1569484215; bh=YzWWG+/9RPY8U0VkmR6N5Gk17aLV6Gsybz6nO0noKaw=; h=Date:From:Reply-To:Subject:From:Subject; b=d9G/S296gQjIuazMTvzofYRp1pi63vPhs62hMaKDnBDYrA7Iff++lW8H89Zlnw7qgXbC7TRQBctROkc+F2wgH+92FjR6ykzEBDRyCenOa45lokeWmQA62S+xl4N48b1bTDwv8JWoDt5Bf2e9xjmkNoMe0TTpHTy/2QUwz4oNDjpiaDGfIXGjg+7ajcwwxTyGtfrzQZwb+WkT5QrTV07By/WJRiAr9zlqsr6KwzNcO6I6wExgU7f6gSEYB/0n6fOYz20yAF6DzfOwD599RBnZbUvwu/S5hPmBFpvMo0JTjv4sw5kkCaBEhFM/V2QuglejJCmgpQyuG/c48yGqNRtCCg==
X-YMail-OSG: .IAshcQVM1kFGNuqLDNWbS17llaHzvqiXt0XvlYGZcenrevsMfwSLW4o08W6ZL3
 elM66wN0PUn4B3NWPo.bbESUpI.AT0Cofz_tPjPfBDdLqdueAbrxUDFNpfXYGO_iSas92MXYc_Wf
 kP8GgN8oZi5EGk__Eufn1mFa835hvoteFSZ_Hw93KI6LCzgEA4daogrN7ldY289Yqwfh8_l9SnRb
 u4e7tDAeKO41O3YTIDBMg8Ha6ls210yaDUQdaW1PCeiHiAeWHRrad243LZ5BP8E9ihuxhzA9mlas
 6Ncn7yLY4HS8QotZAUr2x.5iSV4f3q19dA5FatdTCLbbFtmfZkDKzyVZ.mRPkKI.xdVxndJEZduk
 SbLWi.bfisg71vihp8pTl8bfCaaUkSjacYK8QmJQyj_69nPw75lIxVvTT.Fh_cAdODZKkNVfIQTj
 xxH1tkBtQCTogPzyyUClbG7GRkzpK83IP9iEJoWbaxxo2gUanlzpadS7boLUsYe8HepH5_Tv9OqR
 qo.kkY1wqNYfXnsoEQepjYDjApb3tFgZVOaUM1CeW7YSJzOpZmKKv.VjeoVS6gjgwODO8al_wnMN
 ZpztkrPUzwLU32m9gG2wavV1I3XkoE.LGqv7ndpPVfpxbLOKyXDzlZzw1M7u51sZZTAgRnS3p6.n
 nSXMzDkmUtpi8AjmnmC6uKWbYBAZA5Ooz31qEtPY0UkOhZI1YCHJcFAe9lQd4oey_JZXZgey2MEO
 LrME5dz_h._4n0LWx3DlyH1xGptkcDSYleCiSIjMFhbHXpaxgUbhZHsotY233TBt6lpYzbIljD6v
 4kFOXm0A_A4L7gCpRhID4eark3JQFLvkjVI0n8Bxn9wND7BAvtEtsz7cIO2WwpsypV9BBvCbcR.j
 YBsmd.omFQlHoCqgN_dSveg8Bpci_eTjV8XohilWIDP1e3Zheu5X3.e6B1.mUY.h9bwMHA002yB3
 Xrog5JLp7mZDKEGcjxwBwuCdw4HpqAAyJwPPVjY94jc7vYReUK6VRA94ijp32pK6LtYh2vdqzoy6
 _oJB2y2Ned5O2NDpwR2ESGRO4ihNfGrAWuto5rEDJAfdbpPlv3uq9JCCAMwsvkYtkoKgoHaVZYBj
 71zmcY_ZwJoG_AUDz4J9D.rwZxqv4IuJ.75D4Vqi_Ep1Ui4r6lMYFFI7dqV.Yfb72akoPX_wDKfs
 aVlCQxcVRNZW4HGnvXmH4d96MaruMXIUJnBifhs32vbPU._iGRrkn0r7gcz2sznOdrbQjzrkMFx6
 iHaMztbe_LeQOjcUPXDECFeNvJHN.kV3evnam918N2Up6ILdeRp6dWHg-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.bf2.yahoo.com with HTTP; Thu, 26 Sep 2019 07:50:15 +0000
Date:   Thu, 26 Sep 2019 07:50:14 +0000 (UTC)
From:   Clake <jude.clake23@gmail.com>
Reply-To: jude.clake23@gmail.com
Message-ID: <1642206837.8839406.1569484214805@mail.yahoo.com>
Subject: Dear Friend,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
To:     unlisted-recipients:; (no To-header on input)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org


Dear=C2=A0Friend,

I=C2=A0am=C2=A0Mr=C2=A0Jude=C2=A0Clacke,=C2=A0the=C2=A0director=C2=A0of=C2=
=A0the=C2=A0accounts=C2=A0&=C2=A0auditing=C2=A0dept=C2=A0.at=C2=A0the=C2=A0=
Bank=C2=A0OF=C2=A0Africa=C2=A0Ouagadougou-west=C2=A0Africa.=C2=A0(B=C2=A0O=
=C2=A0A)=C2=A0With=C2=A0due=C2=A0respect,=C2=A0I=C2=A0have=C2=A0decided=C2=
=A0to=C2=A0contact=C2=A0you=C2=A0on=C2=A0a=C2=A0business=C2=A0transaction=
=C2=A0that=C2=A0will=C2=A0be=C2=A0beneficial=C2=A0to=C2=A0both=C2=A0of=C2=
=A0us.

At=C2=A0the=C2=A0bank's=C2=A0last=C2=A0accounts/auditing=C2=A0evaluations,=
=C2=A0my=C2=A0staff=C2=A0came=C2=A0across=C2=A0an=C2=A0old=C2=A0account=C2=
=A0which=C2=A0was=C2=A0being=C2=A0maintained=C2=A0by=C2=A0a=C2=A0foreign=C2=
=A0client=C2=A0who=C2=A0we=C2=A0learnt=C2=A0was=C2=A0among=C2=A0the=C2=A0de=
ceased=C2=A0passengers=C2=A0of=C2=A0motor=C2=A0accident.

Since=C2=A0his=C2=A0death,=C2=A0even=C2=A0the=C2=A0members=C2=A0of=C2=A0his=
=C2=A0family=C2=A0haven't=C2=A0applied=C2=A0for=C2=A0claims=C2=A0over=C2=A0=
this=C2=A0fund=C2=A0and=C2=A0it=C2=A0has=C2=A0been=C2=A0in=C2=A0the=C2=A0sa=
fe=C2=A0deposit=C2=A0account=C2=A0until=C2=A0I=C2=A0discovered=C2=A0that=C2=
=A0it=C2=A0cannot=C2=A0be=C2=A0claimed=C2=A0since=C2=A0our=C2=A0client=C2=
=A0is=C2=A0a=C2=A0foreign=C2=A0national=C2=A0and=C2=A0we=C2=A0are=C2=A0sure=
=C2=A0that=C2=A0he=C2=A0has=C2=A0no=C2=A0next=C2=A0of=C2=A0kin=C2=A0here=C2=
=A0to=C2=A0file=C2=A0claims=C2=A0over=C2=A0the=C2=A0money.=C2=A0As=C2=A0the=
=C2=A0director=C2=A0of=C2=A0the=C2=A0department,=C2=A0this=C2=A0discovery=
=C2=A0was=C2=A0brought=C2=A0to=C2=A0my=C2=A0office=C2=A0so=C2=A0as=C2=A0to=
=C2=A0decide=C2=A0what=C2=A0is=C2=A0to=C2=A0be=C2=A0done.=C2=A0I=C2=A0decid=
ed=C2=A0to=C2=A0seek=C2=A0ways=C2=A0through=C2=A0which=C2=A0to=C2=A0transfe=
r=C2=A0this=C2=A0money=C2=A0out=C2=A0of=C2=A0the=C2=A0bank=C2=A0and=C2=A0ou=
t=C2=A0of=C2=A0the=C2=A0country=C2=A0too.

The=C2=A0total=C2=A0amount=C2=A0in=C2=A0the=C2=A0account=C2=A0is=C2=A0thirt=
y=C2=A0three=C2=A0million=C2=A0five=C2=A0hundred=C2=A0thousand=C2=A0dollars=
=C2=A0(USD=C2=A033,500,000.00).with=C2=A0my=C2=A0positions=C2=A0as=C2=A0sta=
ffs=C2=A0of=C2=A0the=C2=A0bank,=C2=A0I=C2=A0am=C2=A0handicapped=C2=A0becaus=
e=C2=A0I=C2=A0cannot=C2=A0operate=C2=A0foreign=C2=A0accounts=C2=A0and=C2=A0=
cannot=C2=A0lay=C2=A0bonafide=C2=A0claim=C2=A0over=C2=A0this=C2=A0money.=C2=
=A0The=C2=A0client=C2=A0was=C2=A0a=C2=A0foreign=C2=A0national=C2=A0and=C2=
=A0you=C2=A0will=C2=A0only=C2=A0be=C2=A0asked=C2=A0to=C2=A0act=C2=A0as=C2=
=A0his=C2=A0next=C2=A0of=C2=A0kin=C2=A0and=C2=A0I=C2=A0will=C2=A0supply=C2=
=A0you=C2=A0with=C2=A0all=C2=A0the=C2=A0necessary=C2=A0information=C2=A0and=
=C2=A0bank=C2=A0data=C2=A0to=C2=A0assist=C2=A0you=C2=A0in=C2=A0being=C2=A0a=
ble=C2=A0to=C2=A0transfer=C2=A0this=C2=A0money=C2=A0to=C2=A0any=C2=A0bank=
=C2=A0of=C2=A0your=C2=A0choice=C2=A0where=C2=A0this=C2=A0money=C2=A0could=
=C2=A0be=C2=A0transferred=C2=A0into.

I=C2=A0want=C2=A0to=C2=A0assure=C2=A0you=C2=A0that=C2=A0this=C2=A0transacti=
on=C2=A0is=C2=A0absolutely=C2=A0risk=C2=A0free=C2=A0since=C2=A0I=C2=A0work=
=C2=A0in=C2=A0this=C2=A0bank=C2=A0that=C2=A0is=C2=A0why=C2=A0you=C2=A0shoul=
d=C2=A0be=C2=A0confident=C2=A0in=C2=A0the=C2=A0success=C2=A0of=C2=A0this=C2=
=A0transaction=C2=A0because=C2=A0you=C2=A0will=C2=A0be=C2=A0updated=C2=A0wi=
th=C2=A0information=C2=A0as=C2=A0at=C2=A0when=C2=A0desired.

I=C2=A0will=C2=A0wish=C2=A0you=C2=A0to=C2=A0keep=C2=A0this=C2=A0transaction=
=C2=A0secret=C2=A0and=C2=A0confidential=C2=A0as=C2=A0I=C2=A0am=C2=A0hoping=
=C2=A0to=C2=A0retire=C2=A0with=C2=A0my=C2=A0share=C2=A0of=C2=A0this=C2=A0mo=
ney=C2=A0at=C2=A0the=C2=A0end=C2=A0of=C2=A0transaction=C2=A0which=C2=A0will=
=C2=A0be=C2=A0when=C2=A0this=C2=A0money=C2=A0is=C2=A0safety=C2=A0in=C2=A0yo=
ur=C2=A0account.=C2=A0I=C2=A0will=C2=A0then=C2=A0come=C2=A0over=C2=A0to=C2=
=A0your=C2=A0country=C2=A0for=C2=A0sharing=C2=A0according=C2=A0to=C2=A0the=
=C2=A0previously=C2=A0agreed=C2=A0percentages.=C2=A0You=C2=A0might=C2=A0eve=
n=C2=A0have=C2=A0to=C2=A0advise=C2=A0me=C2=A0on=C2=A0possibilities=C2=A0of=
=C2=A0investment=C2=A0in=C2=A0your=C2=A0country=C2=A0or=C2=A0elsewhere=C2=
=A0of=C2=A0our=C2=A0choice.=C2=A0May=C2=A0God=C2=A0help=C2=A0you=C2=A0to=C2=
=A0help=C2=A0me=C2=A0to=C2=A0a=C2=A0restive=C2=A0retirement,=C2=A0Amen.

Please=C2=A0for=C2=A0further=C2=A0information=C2=A0and=C2=A0enquiries=C2=A0=
feel=C2=A0free=C2=A0to=C2=A0contact=C2=A0me=C2=A0back=C2=A0immediately=C2=
=A0for=C2=A0more=C2=A0explanation=C2=A0and=C2=A0better=C2=A0understanding=
=C2=A0through=C2=A0this=C2=A0email=C2=A0address=C2=A0(jude.clake23@gmail.co=
m)

I=C2=A0am=C2=A0waiting=C2=A0for=C2=A0your=C2=A0urgent=C2=A0response!!!
Thanks=C2=A0and=C2=A0remain=C2=A0blessed.
Mr=C2=A0Jude=C2=A0Clacke
