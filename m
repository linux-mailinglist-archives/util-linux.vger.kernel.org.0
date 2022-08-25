Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 130585A0ED0
	for <lists+util-linux@lfdr.de>; Thu, 25 Aug 2022 13:16:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234589AbiHYLQ3 (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 25 Aug 2022 07:16:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230196AbiHYLQ2 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 25 Aug 2022 07:16:28 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD5099C202
        for <util-linux@vger.kernel.org>; Thu, 25 Aug 2022 04:16:27 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id v125so22872205oie.0
        for <util-linux@vger.kernel.org>; Thu, 25 Aug 2022 04:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc;
        bh=OoWYdUGgPiMC+ap9RxVVJUJZnzLctn8zvNl29Afb3r0=;
        b=RtnmVNTVTDWyY259IOAoiFQXnFGMy72YXik6g8X2XVhueSNiaTK3SSmCj1zHycchF7
         UoppeBMGruU7d2v2BuBCvKr+NyZzUtIspEgD/WnBrpsZgRXbx9NMQnZGhHar44xKtIgZ
         RMuHXnErHN/9afN7lPsauqMPzPFVrZe498KQ4ReP92N6KdkaTym/s4flonKX0y0/vlrs
         JlhYZKHuIdDkL1mNCQBvujQ4isCb9308R9XKXH3nnEZUWqLzrwkLwW3mDikUumq8TJuU
         0MyLVwdsp8EipZpQHptL6c5AaD2QO8wOMyHtkIk30nw0BfOty7mNaVsFL6Z5UdbCW/lm
         MTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc;
        bh=OoWYdUGgPiMC+ap9RxVVJUJZnzLctn8zvNl29Afb3r0=;
        b=wIdwvH8rWSpuztlzMJ9KSKbweyEzYlF1WXAr2x30FPFOiSKWExcYbqddLE37mtuI0Y
         uZ/QNV6VZkssXgFqp1ikeQmn+tUbbu1Tyex11tQybZOgtZ0okw1ymNx5HfOBKG5pm2/5
         Vsw0S+7q9tIWwukKR5mYYZdopQXYBNi7zN2sgJcyaSIb4swDJi+ThJRB+Qom2hP81rOZ
         pIjYqhDiiGeC5qPj3qeFhbK/KD5z4kpg+WuOfjsOGbe0YgzLABor8PNMErDN+xYm2KeR
         lMCFme0qfUI96KypKfGbz3rED4kRP0nIJT5fPXfAfBSXBAi+JUMFp2xPErUKgvnI3PP+
         ONSQ==
X-Gm-Message-State: ACgBeo2rPyDtVHSy2408yya3F8tYfa9fspG51/Hog7eCMlcLk61a6+Qw
        zqmTmQOO+fg24o8Fe2sT7fvBE+KU4iJH8Vavffg=
X-Google-Smtp-Source: AA6agR6wnxpSZqgo4RZGQL4xSvWpBCGJYnNsW3se8vyF60670B6mjBq4H3WjJX9vJPZujQEY8RNxJmrbFd2dS9AHMOQ=
X-Received: by 2002:a54:4519:0:b0:345:443d:5c3b with SMTP id
 l25-20020a544519000000b00345443d5c3bmr5061776oil.197.1661426187136; Thu, 25
 Aug 2022 04:16:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:5f84:0:b0:459:2675:496f with HTTP; Thu, 25 Aug 2022
 04:16:26 -0700 (PDT)
Reply-To: omrtonyelumelu98@gmail.cm
From:   "Mrs. Kristalina Georgieva" <nwaoze1234567@gmail.com>
Date:   Thu, 25 Aug 2022 12:16:26 +0100
Message-ID: <CAES9pJ+K2kx=VW6PBC4KwEiucTKpyCK8GDnSooKrPZLn1MYXJg@mail.gmail.com>
Subject: hi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=3.8 required=5.0 tests=BAYES_99,BAYES_999,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

5Zu96Zqb6YCa6LKo5Z+66YeRIChJTUYpDQrlm73pmpvlgrXli5nnrqHnkIboqrINCu+8gzE5MDDj
gIFBVi5EVeekvumVtw0KDQpJLk0uRi4g44OH44Kj44Os44Kv44K/44O844Gu5YWs5byP6Zu75a2Q
44Oh44O844OrIOOCouODieODrOOCueOBuOOCiOOBhuOBk+OBneOAguOCr+ODquOCueOCv+ODquOD
vOODiuODu+OCsuOCquODq+OCruOCqOODrw0KDQoNCuimquaEm+OBquOCi+WPl+ebiuiAhe+8gQ0K
DQrmlrDjgZ/jgavku7vlkb3jgZXjgozjgZ/osqHli5nplbflrpjjgajlm73pgKPpgJrosqjlvZPl
sYDjga7ntbHmsrvmqZ/plqLjga/jgIHlm73pgKPmlL/lupzjgavplbfjgYTplpPlgrXli5njgpLo
sqDjgaPjgabjgYTjgZ/mnKroq4vmsYLjga7os4fph5HjgpLoqr/mn7vjgZnjgovjgZPjgajjgpLo
qLHlj6/jgZfjgZ/jgZ/jgoHjgIHmiYDmnInogIXjga/oqZDmrLrjgaflkYrnmbrjgZXjgozjgb7j
gZfjgZ8u5Zu96YCj44Gu5ZCN5YmN44KS5L2/55So44GX44Gf6KmQ5qy65bir44CC6Kq/5p+75Lit
44Gu44K344K544OG44Og44Gu6Zu75a2Q44Oh44O844OrDQrjgqLjg4njg6zjgrnjga7jg4fjg7zj
gr8g44K544OI44Os44O844K4IOODrOOCs+ODvOODieOBq+OCiOOCi+OBqOOAgeOBguOBquOBn+OB
ruaUr+aJleOBhOOBr+OAgeasoeOBruOCq+ODhuOCtOODquOBriAxNTAg5Lq644Gu5Y+X55uK6ICF
44Gu44Oq44K544OI44Gr5ZCr44G+44KM44Gm44GE44G+44GZ44CC5aWR57SE6LOH6YeR44CCDQoN
CuOBguOBquOBn+OBruizh+mHkeOCkuOBoOOBvuOBl+WPluOCi+OBn+OCgeOBq+axmuiBt+OCkueK
r+OBl+OBn+iFkOaVl+OBl+OBn+mKgOihjOiBt+WToeOBr+OAgeOBguOBquOBn+OBruaUr+aJleOB
hOOCkuS4jeW9k+OBq+mBheOCieOBm+OAgeOBguOBquOBn+OBruWBtOOBq+WkmuOBj+OBruiyu+eU
qOOBjOOBi+OBi+OCiuOAgeOBguOBquOBn+OBruaUr+aJleOBhOOBruWPl+OBkeWFpeOCjOOBjOS4
jeW9k+OBq+mBheOCjOOBvuOBl+OBny7lm73pgKPjgajlm73pmpvpgJrosqjln7rph5ENCihJTUYp
IOOBr+OAgeWMl+exs+OAgeWNl+exs+OAgeexs+WbveOAgeODqOODvOODreODg+ODkeOAgeOCouOC
uOOCouOAgeOBiuOCiOOBs+S4lueVjOS4reOBriBBVE0gVmlzYSDjgqvjg7zjg4njgpLkvb/nlKjj
gZfjgaYgMTUwDQrkurrjga7lj5fnm4rogIXjgavjgZnjgbnjgabjga7oo5zlhJ/jgpLmlK/miZXj
gYbjgZPjgajjgpLpgbjmip7jgZfjgb7jgZfjgZ/jgILjgZPjga7jgrDjg63jg7zjg5Djg6vjgarm
lK/miZXjgYTmioDooZPjgYzliKnnlKjlj6/og73jgafjgYLjgovjgZ/jgoHjgafjgZnjgILmtojo
srvogIXjgIHkvIHmpa3jgIHph5Hono3mqZ/plqLjgavjgILmlL/lupzjgYznj77ph5HjgoTlsI/l
iIfmiYvjga7ku6Pjgo/jgorjgavjg4fjgrjjgr/jg6vpgJrosqjjgpLkvb/nlKjjgafjgY3jgovj
gojjgYbjgavjgZfjgb7jgZnjgIINCg0KQVRNIFZpc2Hjgqvjg7zjg4njgpLkvb/nlKjjgZfjgabm
lK/miZXjgYTjgpLooYzjgYbjgojjgYbjgavmiYvphY3jgZfjgb7jgZfjgZ/jgILjgqvjg7zjg4nj
ga/nmbrooYzjgZXjgozjgIHliKnnlKjlj6/og73jgarlroXphY3jgrXjg7zjg5PjgrnjgpLku4vj
gZfjgabnm7TmjqXkvY/miYDjgavpgIHjgonjgozjgb7jgZnjgILjgZTpgKPntaHlvozjgIExLDUw
MCwwMDAuMDANCuexs+ODieODq+OBrumHkemhjeOBjCBBVE0gVmlzYSDjgqvjg7zjg4njgavou6Lp
gIHjgZXjgozjgb7jgZnjgILjgZPjgozjgavjgojjgorjgIHjgYrkvY/jgb7jgYTjga7lm73jga4g
QVRNIOOBi+OCiSAxIOaXpeOBguOBn+OCiuWwkeOBquOBj+OBqOOCgiAxMCwwMDANCuexs+ODieOD
q+OCkuW8leOBjeWHuuOBmeOBk+OBqOOBp+OAgeOBiumHkeOCkuW8leOBjeWHuuOBmeOBk+OBqOOB
jOOBp+OBjeOBvuOBmeOAguOBlOimgeacm+OBq+W/nOOBmOOBpuOAgTEg5pel44GC44Gf44KKIDIw
LDAwMC4wMA0K44OJ44Or44G+44Gn5LiK6ZmQ44KS5byV44GN5LiK44GS44KL44GT44Go44GM44Gn
44GN44G+44GZ44CC44GT44KM44Gr6Zai44GX44Gm44Gv44CB5Zu96Zqb5pSv5omV44GK44KI44Gz
6YCB6YeR5bGA44Gr6YCj57Wh44GX44CB6KaB5rGC44GV44KM44Gf5oOF5aCx44KS5qyh44Gu5pa5
5rOV44Gn5o+Q5L6b44GZ44KL5b+F6KaB44GM44GC44KK44G+44GZ44CCDQoNCjEu44GC44Gq44Gf
44Gu44OV44Or44ON44O844OgLi4uLi4uLi4uDQoyLuOBguOBquOBn+OBruWujOWFqOOBquS9j+aJ
gC4uLi4uLi4uDQozLiDlm73nsY0gLi4uLi4uLi4uLi4uLi4uLi4NCjQu55Sf5bm05pyI5pel44O7
5oCn5Yil4oCm4oCm4oCm4oCmDQo1LuWwgumWgOaApy4uLi4uLi4uDQo2LiDpm7voqbHnlarlj7cg
Li4uLi4uLi4uLg0KNy4g5b6h56S+44Gu44Oh44O844Or44Ki44OJ44Os44K54oCm4oCmDQo4LuWA
i+S6uuOBruODoeODvOODq+OCouODieODrOOCueKApuKApg0KDQoNCuOBk+OBruOCs+ODvOODiSAo
44Oq44Oz44KvOiBDTElFTlQtOTY2LzE2KSDjgpLorZjliKXjgZnjgovjgavjga/jgIHpm7vlrZDj
g6Hjg7zjg6vjga7ku7blkI3jgajjgZfjgabkvb/nlKjjgZfjgIHkuIroqJjjga7mg4XloLHjgpLm
rKHjga7lvpPmpa3lk6Hjgavmj5DkvpvjgZfjgaYgQVRNDQpWaXNhIOOCq+ODvOODieOBrueZuuih
jOOBqOmFjemAgeOCkuS+nemgvOOBl+OBpuOBj+OBoOOBleOBhOOAgg0KDQrpioDooYzmi4XlvZPo
gIXjgYzjgZPjga7mlK/miZXjgYTjgpLov73ot6HjgZfjgIHjg6Hjg4Pjgrvjg7zjgrjjgpLkuqTm
j5vjgZfjgabjgIHos4fph5Hjga7jgZXjgonjgarjgovpgYXlu7bjgoToqqTjgaPjgZ/mlrnlkJHk
u5jjgZHjgpLpmLLjgZDjgZPjgajjgYzjgafjgY3jgovjgojjgYbjgavjgIHmlrDjgZfjgYTnlarl
j7fjgaflgIvkurrjga7pm7vlrZDjg6Hjg7zjg6sNCuOCouODieODrOOCueOCkumWi+OBj+OBk+OB
qOOCkuOBiuWLp+OCgeOBl+OBvuOBmeOAguS7peS4i+OBrumAo+e1oeWFiOaDheWgseOCkuS9v+eU
qOOBl+OBpuOAgeODpuODiuOCpOODhuODg+ODiSDjg5Djg7Pjgq8g44Kq44OWIOOCouODleODquOC
q+OBruOCqOODvOOCuOOCp+ODs+ODiOOBq+S7iuOBmeOBkOOBlOmAo+e1oeOBj+OBoOOBleOBhOOA
gg0KDQrpgKPntaHnqpPlj6PvvJrjg4jjg4vjg7zjg7vjgqjjg6vjg6Hjg6vmsI8NCuijnOWEn+mH
kemAgemHkemDqCBVbml0ZWQgQmFuayBvZiBBZnJpY2Eg6YCj57Wh5YWI44Oh44O844Or44Ki44OJ
44Os44K5OiAsKG1ydG9ueWVsdW1lbHU5OEBnbWFpbC5jb20pDQoNCuOBk+OCjOS7peS4iuOBrumB
heOCjOOCkumBv+OBkeOCi+OBn+OCgeOBq+OAgeOBk+OBruODoeODvOODq+OBuOOBrui/hemAn+OB
quWvvuW/nOOBjOW/heimgeOBp+OBmeOAgg0KDQrmlazlhbcNCuOCr+ODquOCueOCv+ODquODvOOD
iuODu+OCsuOCquODq+OCruOCqOODkOWkq+S6ug0K
