Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E88AF4ECC5E
	for <lists+util-linux@lfdr.de>; Wed, 30 Mar 2022 20:36:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350305AbiC3SiT (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 30 Mar 2022 14:38:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351767AbiC3Sd7 (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 30 Mar 2022 14:33:59 -0400
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com [IPv6:2607:f8b0:4864:20::a30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2587A3DA63
        for <util-linux@vger.kernel.org>; Wed, 30 Mar 2022 11:31:50 -0700 (PDT)
Received: by mail-vk1-xa30.google.com with SMTP id j204so12055761vkj.8
        for <util-linux@vger.kernel.org>; Wed, 30 Mar 2022 11:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=BUnAD3xqyyj2lm0zvOZVtbyxWcA123m5vBtT7P90vEA=;
        b=GkMXHKMMAc0Pb9K+9L9BfsmpZacVmxFzSkSRpU4bhDDDmQblBK8t+CBbMTvUyAdP+L
         +yUQU9/cWBdLt5d1BrwUWidou+WKjR2n+lLsdYUjuXigaQd0CtfyAcOx+rwU2+a6w7qY
         LpiZZHiYnj01bclvkTqc0EM0b/VzaNODRMPCY6sZNvIbM/I85E/QPyZL0AdsExWmlIxn
         uANa4s/myemMSWjjUOXapojzdWboMJeI0WyNV3aRCq8e29lGJ0wq9Cwy/bD3VHDMa07n
         VWaQeFhdU9hSQyxNxjnzSRBSyP01ER9yuJvmZU0/dU51HG/Sycjea0N7ymG90nexjfc7
         X2yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=BUnAD3xqyyj2lm0zvOZVtbyxWcA123m5vBtT7P90vEA=;
        b=xk7H/KNlPxrWO6hgteCB1rlipb8W/OLneBzvN51aava3FLayMBMtgiDc15SES9GOKk
         jEbBJxsmt/kbdGkip0sjVUp5JKPHLvwIREV9drl4UJKmIOcQwk5kxj1QzYAVoTLhPZGb
         /1yj6NEBqWggDSfZSFrU/G+pKSo+RMH2tAisXGPDwZqBRk3M5VUXaOFO6F7At53CD5R0
         VHxVaXbeIALGRz5cTM/TNh5qRhA6VUzI3WmRzR6SzbfH4U+3MSZV+dB6nFAbq+d6/4Q9
         v/+Fk/96kLfc7MP6AqSxRg/YkIKTAJ3iXsNGhYaGyF6p4PoYgRvTwncdDNzdmQnu4mLA
         8Y0g==
X-Gm-Message-State: AOAM533kxK3314RwKNt1iElr5WdHFEIIYAlggJfZS3FFQ7HUtfMOZVwt
        lSbgPlhCY6IwOa1zt2ejpcnGELQtRILD4G57III=
X-Google-Smtp-Source: ABdhPJwICVOy4BdElNPShUpswkGEY0QAnwO4ifeC1baKrJGRn2+r3V4h6zlfboTzRsoiCViDQJ/ANSOAFdS76oNwBsA=
X-Received: by 2002:a05:6122:508:b0:342:e9cd:3177 with SMTP id
 x8-20020a056122050800b00342e9cd3177mr448560vko.40.1648665107637; Wed, 30 Mar
 2022 11:31:47 -0700 (PDT)
MIME-Version: 1.0
Reply-To: isabellasayouba0@gmail.com
Sender: misourha.w@gmail.com
Received: by 2002:ab4:1688:0:b0:2d8:c765:8b51 with HTTP; Wed, 30 Mar 2022
 11:31:46 -0700 (PDT)
From:   Mrs Isabella Sayouba <isabellasayouba0@gmail.com>
Date:   Wed, 30 Mar 2022 18:31:46 +0000
X-Google-Sender-Auth: v8KQaDYin6BHU4j3ZIZLE2O0Tu8
Message-ID: <CAB65psRbwQZ-xGssfmiP2O18oqk7AkSXNPrOjO2y1gfqC+1-ww@mail.gmail.com>
Subject: =?UTF-8?B?44GC44GE44GV44Gk44CC?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

44GC44GE44GV44Gk44CCDQoNCua2meOCkua1geOBl+OBquOBjOOCieOBk+OBruODoeODvOODq+OC
kuabuOOBhOOBpuOBhOOBvuOBmeOAguengeOBruebruOBq+OBr+Wkp+OBjeOBquaCsuOBl+OBv+OB
jOOBguOCiuOBvuOBmeOAguengeOBruWQjeWJjeOBr+OCpOOCtuODmeODqeODu+OCteODqOOCpuOD
kOOBleOCk+OBp+OBmeOAguODgeODpeODi+OCuOOCouWHuui6q+OBp+OAgeODluODq+OCreODiuOD
leOCoeOCveOBrueXhemZouOBi+OCiemAo+e1oeOCkuWPluOCiuOBvuOBmeOAguengeOBr+OBguOB
quOBn+OBq+W/g+OCkumWi+OBhOOBpuaEn+WLleOBl+OBn+OBruOBp+OAgeOBguOBquOBn+OBq+ip
seOBmeS7peWkluOBq+mBuOaKnuiCouOBr+OBguOCiuOBvuOBm+OCk+OAguengeOBr+OAgTIwMTHl
ubTjgavkuqHjgY/jgarjgovliY3jgavjg5bjg6vjgq3jg4rjg5XjgqHjgr3jga7jg4Hjg6Xjg4vj
grjjgqLlpKfkvb/jgag55bm06ZaT5YON44GE44Gm44GE44GfU2F5b3ViYUJyb3du5rCP44Go57WQ
5ama44GX44G+44GX44Gf44CC5a2Q5L6b44Gq44GX44GnMTHlubTplpPntZDlqZrjgZfjgZ/jgIIN
Cg0K5b2844Gv44Gf44Gj44GfNeaXpemWk+e2muOBhOOBn+efreOBhOeXheawl+OBruW+jOOBp+at
u+OBq+OBvuOBl+OBn+OAguW9vOOBruatu+W+jOOAgeengeOBr+WGjeWpmuOBl+OBquOBhOOBk+OB
qOOBq+axuuOCgeOBvuOBl+OBn+OAguS6oeOBj+OBquOBo+OBn+Wkq+OBjOeUn+OBjeOBpuOBhOOB
n+OBqOOBjeOAgeW9vOOBr+e3j+mhjTg1MOS4h+ODieODq+OCkumgkOOBkeOBvuOBl+OBn+OAgg0K
77yIODAw5LiHNTAwMOODieODq++8ieilv+OCouODleODquOCq+OBruODluODq+OCreODiuODleOC
oeOCveOBrummlumDveODr+OCrOODieOCpeOCsOODvOOBrumKgOihjOOBp+OAguePvuWcqOOAgeOB
k+OBruOBiumHkeOBr+OBvuOBoOmKgOihjOOBq+OBguOCiuOBvuOBmeOAguW9vOOBr+OBk+OBruOB
iumHkeOCkuODluODq+OCreODiuODleOCoeOCveOBrumJsealreOBi+OCieOBrumHkeOBrui8uOWH
uuOBq+WIqeeUqOOBp+OBjeOCi+OCiOOBhuOBq+OBl+OBvuOBl+OBn+OAgg0KDQrmnIDov5HjgIHn
p4Hjga7ljLvogIXjga/np4HjgYznmYzjgajohLPljZLkuK3jga7llY/poYzjga7jgZ/jgoHjgas3
44O25pyI6ZaT44Gv57aa44GL44Gq44GE44Gg44KN44GG44Go56eB44Gr6KiA44GE44G+44GX44Gf
44CC56eB44KS5pyA44KC5oKp44G+44Gb44Gm44GE44KL44Gu44Gv6ISz5Y2S5Lit44Gu55eF5rCX
44Gn44GZ44CC56eB44Gu54q25oWL44KS55+l44Gj44Gf44Gu44Gn44CB56eB44Gv44GT44Gu44GK
6YeR44KS44GC44Gq44Gf44Gr5rih44GX44Gm44CB5oG144G+44KM44Gq44GE5Lq644CF44Gu5LiW
6Kmx44KS44GZ44KL44GT44Go44Gr44GX44G+44GX44Gf44CC44GC44Gq44Gf44Gv44GT44Gu44GK
6YeR44KS56eB44GM44GT44GT44Gn5oyH56S644GZ44KL5pa55rOV44Gn5Yip55So44GZ44KL44Gn
44GX44KH44GG44CC56eB44Gv44GC44Gq44Gf44Gr44GC44Gq44Gf44Gu5YCL5Lq655qE44Gq5L2/
55So44Gu44Gf44KB44Gr57eP44GK6YeR44GuMzDjg5Hjg7zjgrvjg7Pjg4jjgpLlj5bjgaPjgabm
rLLjgZfjgYTjgafjgZnjgILjgYrph5Hjga43MO+8heOBr+engeOBruWQjeWJjeOBp+WtpOWFkOmZ
ouOCkuW7uuOBpuOAgemAmuOCiuOBruiyp+OBl+OBhOS6uuOAheOCkuWKqeOBkeOCi+OBn+OCgeOB
q+S9v+OBhuOBp+OBl+OCh+OBhuOAguengeOBr+WtpOWFkOOBqOOBl+OBpuiCsuOBoeOBvuOBl+OB
n+OBjOOAgeelnuOBruWutuOCkue2reaMgeOBmeOCi+OBn+OCgeOBoOOBkeOBq+OAgeWutuaXj+OB
q+OBr+iqsOOCguOBhOOBvuOBm+OCk+OAguOBk+OBrueXheawl+OBjOengeOCkuOBqOOBpuOCguiL
puOBl+OCgeOBn+OBruOBp+OAgeelnuOBjOengeOBrue9quOCkui1puOBl+OAgealveWckuOBp+en
geOBrumtguOCkuWPl+OBkeWFpeOCjOOCi+OCiOOBhuOBq+OBk+OCjOOCkuOBl+OBpuOBhOOCi+OB
ruOBp+OBmeOAgg0KDQrov5Tkv6HjgpLlj5fjgZHlj5bjgormrKHnrKzjgIHjg5bjg6vjgq3jg4rj
g5XjgqHjgr3jga7pioDooYzjga7pgKPntaHlhYjjgpLjgYrnn6XjgonjgZvjgZfjgb7jgZnjgILj
gb7jgZ/jgIHpioDooYzjga7nj77lnKjjga7lj5flj5bkurrjgafjgYLjgovjgZPjgajjgpLoqLzm
mI7jgZnjgovmqKnpmZDmm7jjgpLnmbrooYzjgZnjgovjgojjgYbpioDooYzplbfjgavmjIfnpLrj
gZfjgb7jgZnjgILnp4HjgYzjgZPjgZPjgafov7DjgbnjgZ/jgojjgYbjgavjgYLjgarjgZ/jgYzj
gZ3jgozjgavlv5zjgZjjgabooYzli5XjgZnjgovjgZPjgajjgpLnp4Hjgavkv53oqLzjgZfjgabj
gY/jgaDjgZXjgYTjgIINCg0K44Kk44K244OZ44Op44O744K144Oo44Km44OQ5aSr5Lq644GL44KJ
44CCDQo=
