Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AA335B1C09
	for <lists+util-linux@lfdr.de>; Thu,  8 Sep 2022 13:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229778AbiIHL7j (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 8 Sep 2022 07:59:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231446AbiIHL7g (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Thu, 8 Sep 2022 07:59:36 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 264FD13E99
        for <util-linux-ng@vger.kernel.org>; Thu,  8 Sep 2022 04:59:31 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id bj12so37405067ejb.13
        for <util-linux-ng@vger.kernel.org>; Thu, 08 Sep 2022 04:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date;
        bh=61JNgHFLNVCOHtS3GBlVT+sTDzg02TjYElOUCZQYEf8=;
        b=nB1U8+Jog4WCE7sFdJaXO2/1rlDyo7pWtY/pI6lVnBeaHS1UBwQHni6gq7uJ4plWIf
         fVOA9ja3eMa33/0SqAWCVmg00874LfLMlcGPnxEaxPme07WefAU2nUjrGsZciUjsGUUJ
         l+4AjTP33CRNjuyUdTCW/ISka+CZsfCAiBvIRpvcel0enJnUJ/UWkMIjE5KZtm0DgA0e
         +SYimDlhPNUukzOLZ6FIKBPWSQmvi063k52YAwECiMAizy6bhQ1t7su+v3L0BpI1uODJ
         emKaeiVdBt1y2kL6iBUn4EMvTgdmp1TCzTEvIkYlbmP2q7if9zU7iCQTvFMgTQ6YhwYm
         SQ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=61JNgHFLNVCOHtS3GBlVT+sTDzg02TjYElOUCZQYEf8=;
        b=bg/H0bACDnAuuIri6jS/MhjH+WTILHjHXemRxUBKlotBedWFfn3a8cpIqS4gkONHQP
         NOLA2LhwvPFLINNt0nDO+CyHp6PBJhIwLgIg5TDQL9YPpUi+onIej7iq6VQ/A1Sblaai
         LnG6w53XTcyVu4uousg9qouUqhU2r2FFHOwn9LSSwnJ7Jlfe79Vi/FXPyYIfwrjsDrNl
         sNglgWfRVTJf0Sz0QvUU69lrmIPsyuCnq1VYNcLYZKYl9a4TjuHpB8bkL5UyUAx0XD+l
         xSweRU/eEt7p42sUAnUddSgzu9pki1HRDiIsHFN7PkyTWwFUDXVWnPVm3vfxTsY+iNbb
         LlTw==
X-Gm-Message-State: ACgBeo02EkEm46d/1r7EnCjoG3CGQrnMRESIfFUhLNsr18q6tY1ztDFo
        rMRrD5+anoQqbNs8syhQYVvkW7dQSucGecVefVQ=
X-Google-Smtp-Source: AA6agR4OiVh/lv4gHX/GPXzUCFRO+0Jz8Y0AZHr8Tr6lmTG4SIJ+ef9Jy1G3FZUa53ZsJlcy7Q82pq7or3WMTmOJZkM=
X-Received: by 2002:a17:907:3f24:b0:777:a10f:f155 with SMTP id
 hq36-20020a1709073f2400b00777a10ff155mr897904ejc.466.1662638369719; Thu, 08
 Sep 2022 04:59:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:749d:b0:743:2e24:e8cd with HTTP; Thu, 8 Sep 2022
 04:59:29 -0700 (PDT)
Reply-To: mrtonyelumelu98@gmail.com
From:   "Mrs. Cristalina Georgieva" <nastyanastya88889@gmail.com>
Date:   Thu, 8 Sep 2022 12:59:29 +0100
Message-ID: <CADsX60DNHMCuyx5B_OPsKp4iy5iBS3CSkB1Og6Qu04+wazGbyA@mail.gmail.com>
Subject: hi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

2LXZhtiv2YjZgiDYp9mE2YbZgtivINin2YTYr9mI2YTZiiAoSS5NLkYpDQrYtNi52KjYqSDYpdiv
2KfYsdipINin2YTYr9mK2YjZhiDYp9mE2K/ZiNmE2YrYqSDYjA0KIyAxOTAwINiMINi02KfYsdi5
INin2YTYsdim2YrYsw0KDQrZhdix2K3YqNmL2Kcg2KjZg9mFINmB2Yog2LnZhtmI2KfZhiDYp9mE
2KjYsdmK2K8g2KfZhNil2YTZg9iq2LHZiNmG2Yog2KfZhNix2LPZhdmKINmE2YTZhdiv2YrYsSBJ
Lk0uRi4g2YPYsdmK2LPYqtin2YTZitmG2Kcg2KzZiNix2KzZitmB2KcNCg0KDQrYudiy2YrYstmK
INin2YTZhdiz2KrZgdmK2K8hDQoNCtmE2YLYryDYs9mF2K0g2YTZhtinINmI2LLZitixINin2YTY
rtiy2KfZhtipINin2YTZhdi52YrZhiDYrdiv2YrYq9mL2Kcg2YjYp9mE2YfZitim2Kkg2KfZhNit
2KfZg9mF2Kkg2YTZhNiz2YTYt9ipINin2YTZhtmC2K/ZitipDQrZhNmE2KPZhdmFINin2YTZhdiq
2K3Yr9ipINio2YHYrdi1INin2YTYo9mF2YjYp9mEINin2YTYqtmKINmE2YUg2KrYqtmFINin2YTZ
hdi32KfZhNio2Kkg2KjZh9inINmI2KfZhNiq2Yog2YTYt9in2YTZhdinINmD2KfZhtiqDQrZhdiv
2YrZhtipINmE2K3Zg9mI2YXYqSDYp9mE2KPZhdmFINin2YTZhdiq2K3Yr9ipINiMINmE2LDZhNmD
INiq2YUg2KfYqtmH2KfZhSDZhdin2YTZg9mK2YfYpyDYqNin2YTYp9it2KrZitin2YQuDQrYp9mE
2YXYrdiq2KfZhNmI2YYg2KfZhNiw2YrZhiDZitiz2KrYrtiv2YXZiNmGINin2LPZhSDYp9mE2KPZ
hdmFINin2YTZhdiq2K3Yr9ipINiMINmI2YHZgtmL2Kcg2YTYs9is2YQg2KrYrtiy2YrZhiDYp9mE
2KjZitin2YbYp9iqDQrZhdi5INi52YbZiNin2YYg2KfZhNio2LHZitivINin2YTYpdmE2YPYqtix
2YjZhtmKINmE2YbYuNin2YXZhtinINij2KvZhtin2KEg2KfZhNiq2K3ZgtmK2YIg2KfZhNiw2Yog
2KPYrNix2YrZhtin2Ycg2Iwg2YHYpdmGDQrYr9mB2LnYqtmDINmF2K/Ysdis2Kkg2YHZiiDZgtin
2KbZhdipINiq2LbZhSAxNTAg2YXYs9iq2YHZitiv2YvYpyDZgdmKINin2YTZgdim2KfYqiDYp9mE
2KrYp9mE2YrYqTog2LXZhtiv2YjZgiDZitin2YbYtdmK2KgNCti62YrYsSDZhdmP2LPZhNmO2ZHZ
hSAvINi12YbYr9mI2YIg2YrYp9mG2LXZitioINi62YrYsSDZhdiv2YHZiNi5IC8g2YjYsdin2KvY
qSDZhtmC2YQg2LrZitixINmF2YPYqtmF2YTYqSAvINij2YXZiNin2YQNCtin2YTYudmC2K8uDQoN
CtmC2KfZhSDZhdiz2KTZiNmE2Ygg2KfZhNio2YbZgyDYp9mE2YHYp9iz2K8g2Iwg2KfZhNiw2YrZ
hiDYp9ix2KrZg9io2YjYpyDYp9mE2YHYs9in2K8g2YXZhiDYo9is2YQg2KfZhNin2K3YqtmK2KfZ
hCDYudmE2YkNCtij2YXZiNin2YTZgyDYjCDYqNiq2KPYrtmK2LEg2K/Zgdi52YMg2KjYtNmD2YQg
2LrZitixINmF2LnZgtmI2YQg2Iwg2YXZhdinINij2K/ZiSDYpdmE2Ykg2KrYrdmF2YTZgyDYp9mE
2YPYq9mK2LEg2YXZhg0K2KfZhNiq2YPYp9mE2YrZgSDZiNiq2KPYrtmK2LEg2LrZitixINmF2LnZ
gtmI2YQg2YHZiiDZgtio2YjZhCDZhdiv2YHZiNi52KfYqtmDLiDYp9iu2KrYp9ix2Kog2KfZhNij
2YXZhSDYp9mE2YXYqtit2K/YqQ0K2YjYtdmG2K/ZiNmCINin2YTZhtmC2K8g2KfZhNiv2YjZhNmK
IChJTUYpINiv2YHYuSDYrNmF2YrYuSDYp9mE2KrYudmI2YrYttin2Kog2YTZgCAxNTAg2YXYs9iq
2YHZitiv2YvYpyDYqNin2LPYqtiu2K/Yp9mFDQrYqNi32KfZgtin2KogVmlzYSBBVE0g2YXZhiDY
o9mF2LHZitmD2Kcg2KfZhNi02YXYp9mE2YrYqSDZiNij2YXYsdmK2YPYpyDYp9mE2KzZhtmI2KjZ
itipINmI2KfZhNmI2YTYp9mK2KfYqiDYp9mE2YXYqtit2K/YqQ0K2YjYo9mI2LHZiNio2Kcg2YjY
otiz2YrYpyDZiNit2YjZhCDYp9mE2LnYp9mE2YUg2Iwg2K3ZitirINiq2KrZiNmB2LEg2KrZgtmG
2YrYqSDYp9mE2K/Zgdi5INin2YTYudin2YTZhdmK2Kkg2YfYsNmHDQrZhNmE2YXYs9iq2YfZhNmD
2YrZhiDZiNin2YTYtNix2YPYp9iqINmI2KfZhNmF2KTYs9iz2KfYqiDYp9mE2YXYp9mE2YrYqS4g
2YjZitiz2YXYrSDZhNmE2K3Zg9mI2YXYp9iqINio2KfYs9iq2K7Yr9in2YUg2KfZhNi52YXZhNin
2KoNCtin2YTYsdmC2YXZitipINio2K/ZhNin2Ysg2YXZhiDYp9mE2YbZgtivINmI2KfZhNi02YrZ
g9in2KouDQoNCtmE2YLYryDZgtmF2YbYpyDYqNin2YTYqtix2KrZitioINmE2LPYr9in2K8g2YXY
r9mB2YjYudin2KrZgyDYqNin2LPYqtiu2K/Yp9mFINio2LfYp9mC2KkgVmlzYSBBVE0g2YjYs9mK
2KrZhSDYpdi12K/Yp9ix2YfYpw0K2YTZgyDZiNil2LHYs9in2YTZh9inINmF2KjYp9i02LHYqdmL
INil2YTZiSDYudmG2YjYp9mG2YMg2LnYqNixINij2Yog2K7Yr9mF2KfYqiDYqNix2YrYryDYs9ix
2YrYuSDZhdiq2KfYrdipLiDYqNi52K8NCtin2YTYp9iq2LXYp9mEINio2YbYpyDYjCDYs9mK2KrZ
hSDYqtit2YjZitmEINmF2KjZhNi6IDHYjDUwMNiMMDAwLjAwINiv2YjZhNin2LEg2KPZhdix2YrZ
g9mKINil2YTZiSDYqNi32KfZgtipIFZpc2ENCkFUTSDYjCDZiNin2YTYqtmKINiz2KrYs9mF2K0g
2YTZgyDYqNiz2K3YqCDYo9mF2YjYp9mE2YMg2LnZhiDYt9ix2YrZgiDYs9it2Kgg2YXYpyDZhNin
INmK2YLZhCDYudmGIDEw2IwwMDAg2K/ZiNmE2KfYsQ0K2KPZhdix2YrZg9mKINmB2Yog2KfZhNmK
2YjZhSDZhdmGINij2Yog2YXYp9mD2YrZhtipINi12LHYp9mBINii2YTZiiDZgdmKINio2YTYr9mD
LiDYqNmG2KfYodmLINi52YTZiSDYt9mE2KjZgyDYjCDZitmF2YPZhtmDDQrYstmK2KfYr9ipINin
2YTYrdivINil2YTZiSAyMNiMMDAwLjAwINiv2YjZhNin2LEg2YHZiiDYp9mE2YrZiNmFLiDZgdmK
INmH2LDYpyDYp9mE2LXYr9ivINiMINmK2KzYqCDYudmE2YrZgw0K2KfZhNin2KrYtdin2YQg2KjY
pdiv2KfYsdipINin2YTZhdiv2YHZiNi52KfYqiDZiNin2YTYqtit2YjZitmE2KfYqiDYp9mE2K/Z
iNmE2YrYqSDZiNiq2YLYr9mK2YUg2KfZhNmF2LnZhNmI2YXYp9iqINin2YTZhdi32YTZiNio2KkN
CtmF2YYg2K7ZhNin2YQ6DQoNCjEuINin2LPZhdmDINin2YTZg9in2YXZhCAuLi4uLi4uLi4uLi4u
Lg0KMi4g2LnZhtmI2KfZhtmDINin2YTZg9in2YXZhCAuLi4NCjMuINin2YTYrNmG2LPZitipIC4u
Li4uLi4uLi4uLi4uLi4NCjQuINiq2KfYsdmK2K4g2KfZhNmF2YrZhNin2K8gLyDYp9mE2KzZhtiz
IC4uLi4uLi4uLg0KNS4g2KfZhNiq2K7Ytdi1IC4uLg0KNi4g2LHZgtmFINin2YTZh9in2KrZgSAu
Li4uLi4uLi4NCjcuINi52YbZiNin2YYg2KfZhNio2LHZitivINin2YTYpdmE2YPYqtix2YjZhtmK
INmE2LTYsdmD2KrZgyAuLi4uLi4NCjguINi52YbZiNin2YYg2KfZhNio2LHZitivINin2YTYpdmE
2YPYqtix2YjZhtmKINin2YTYtNiu2LXZiiAuLi4uLi4NCg0KDQrZhNiq2K3Yr9mK2K8g2YfYsNin
INin2YTYsdmF2LIgKNin2YTYsdin2KjYtzogQ0xJRU5ULTk2Ni8xNikg2Iwg2KfYs9iq2K7Yr9mF
2Ycg2YPZhdmI2LbZiNi5INmE2YTYqNix2YrYrw0K2KfZhNil2YTZg9iq2LHZiNmG2Yog2KfZhNiu
2KfYtSDYqNmDINmI2K3Yp9mI2YQg2KrZgtiv2YrZhSDYp9mE2YXYudmE2YjZhdin2Kog2KfZhNmF
2LDZg9mI2LHYqSDYo9i52YTYp9mHINil2YTZiSDYp9mE2YXZiNi42YHZitmGDQrYp9mE2KrYp9mE
2YrZitmGINmE2KXYtdiv2KfYsSDZiNiq2LPZhNmK2YUg2KjYt9in2YLYqSBWaXNhIEFUTSDYmw0K
DQrZhtmI2LXZitmDINio2YHYqtitINi52YbZiNin2YYg2KjYsdmK2K8g2KXZhNmD2KrYsdmI2YbZ
iiDYtNiu2LXZiiDYqNix2YLZhSDYrNiv2YrYryDZhNmE2LPZhdin2K0g2YTZiNmD2YrZhCDYp9mE
2KjZhtmDINio2KrYqtio2LkNCtmH2LDZhyDYp9mE2YXYr9mB2YjYudin2Kog2YjYqtio2KfYr9mE
INin2YTYsdiz2KfYptmEINmE2YXZhti5INin2YTZhdiy2YrYryDZhdmGINin2YTYqtij2K7Zitix
INij2Ygg2KfZhNiq2YjYrNmK2Ycg2KfZhNiu2KfYt9imDQrZhNij2YXZiNin2YTZgy4g2KfYqti1
2YQg2KjZiNmD2YrZhCDYp9mE2KjZhtmDINin2YTYpdmB2LHZitmC2Yog2KfZhNmF2KrYrdivINin
2YTYotmGINio2KfYs9iq2K7Yr9in2YUg2YXYudmE2YjZhdin2KoNCtin2YTYp9iq2LXYp9mEINij
2K/Zhtin2Yc6DQoNCtin2YTYtNiu2LUg2KfZhNmF2LPYpNmI2YQ6INin2YTYs9mK2K8g2KrZiNmG
2Yog2KXZhNmI2YXZitmE2YgNCtil2K/Yp9ix2Kkg2KrYrdmI2YrZhCDYo9mF2YjYp9mEINin2YTY
qti52YjZiti22KfYqiDYjCDYrNmH2Kkg2KfZhNin2KrYtdin2YQg2KjYp9mE2KjYsdmK2K8g2KfZ
hNil2YTZg9iq2LHZiNmG2Yog2YTYqNmG2YMNCtil2YHYsdmK2YLZitinINin2YTZhdiq2K3Yrzog
KG1ydG9ueWVsdW1lbHU5OEBnbWFpbC5jb20pDQoNCtmG2K3Yqtin2Kwg2KXZhNmJINix2K8g2LPY
sdmK2Lkg2LnZhNmJINmH2LDYpyDYp9mE2KjYsdmK2K8g2KfZhNil2YTZg9iq2LHZiNmG2Yog2YTY
qtis2YbYqCDYp9mE2YXYstmK2K8g2YXZhiDYp9mE2KrYo9iu2YrYsS4NCg0K2LXYr9mK2YLZgyDY
p9mE2YXYrtmE2LUNCtin2YTYs9mR2YrYr9ipLiDZg9ix2YrYs9iq2KfZhNmK2YbYpyDYrNmI2LHY
rNmK2YHYpw0K
