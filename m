Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EDF1587A40
	for <lists+util-linux@lfdr.de>; Tue,  2 Aug 2022 12:03:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232762AbiHBKDN (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 2 Aug 2022 06:03:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232695AbiHBKDM (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 2 Aug 2022 06:03:12 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 010251836C
        for <util-linux@vger.kernel.org>; Tue,  2 Aug 2022 03:03:11 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 8-20020a05600c024800b003a2fe343db1so6744555wmj.1
        for <util-linux@vger.kernel.org>; Tue, 02 Aug 2022 03:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=dbBggVxP7bEv3Z0Ysk0vmpz9+VrPJEqJwhw18ZlmNLMpzRHtEOfwxFoF/MLPYccbD2
         XezIQLSjCjyrJvzt+iCFB+OgAD3JO+AXIxE4kW0lE/Ca1WaduJ/OXI8UT4mscfy9Xe5R
         Ux5gsbWvMZPK8iCIaXPHJPKT0zxrU5jJ9yurIXdmaY3Azx/DatiU0fRwDcOJTqcdfMVH
         QTgBaa3LM8H+4vpQjVGViVxkYOf1uWgjgdNT2aLwQsJa24eg2S1maxrQrcYPqUFgMtxc
         bmmXIYRDlYZ1CgjvhsjXuHJT6aKsdt6VeUuoL9sXUjkeNKBQh4ixtJXiQsYorKCZtbLG
         qgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=xU1EKg0PKylpryu5bbhfUfB8aIhPbPgx0ePZEWY36/9trCDk+/wAqG3f3u3k5YQEAr
         7Hgo5cATZOuI59SkWx1xEb4CzdH3YWnaMAXCzyFmVg8Xvjz6mf5z1DqWjdCiU25r/CgR
         c5aVxVHTUAAvId9/8ZaqR9aMvtNPUTz7K5QIa8cgSOQ5Fdb8VzDk9rPlRGONCZb0m7dr
         6xlVl3HbJnHrU+CdHRIAgvOLt42K7/AU7QqaXehySeChn+SWsgbJXEsrLNdIiUdbPjJo
         uWLhum1nmli+2GNHMeGb9lj5S9e1M4R1zRv0tqsU2RBDnJ7jSHDlWyQD5k3AvbKRtrfY
         ANaA==
X-Gm-Message-State: AJIora98UXVpV4Uyij3YzHAOtVRB4QrrgT+kdH7QbDPm1FTDm0OY3iFW
        a+Nw6hQ7LKntGDBpq5/PVYWnjfd9RAVCSw4dqV4=
X-Google-Smtp-Source: AGRyM1sKvs7FzPIcioRfodfQZqYh1hz7uMaemag+JTphwwTkjIJ313wvJhYyQFj6ZuLnjKEGRL6kgFqP4B9KWWRvG3Q=
X-Received: by 2002:a05:600c:2287:b0:3a3:5333:8bce with SMTP id
 7-20020a05600c228700b003a353338bcemr14130602wmf.153.1659434590394; Tue, 02
 Aug 2022 03:03:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:600c:2848:0:0:0:0 with HTTP; Tue, 2 Aug 2022 03:03:09
 -0700 (PDT)
Reply-To: mohammedsaeeda619@gmail.com
From:   mohammed saeed <mahmod.varou@gmail.com>
Date:   Tue, 2 Aug 2022 03:03:09 -0700
Message-ID: <CACFs86Ens64YCpJ+t3JSnNTZjWepeNiOB1se1mqa=cPQrnTp8A@mail.gmail.com>
Subject: Proposal
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Salam alaikum,

I am the investment officer of UAE based investment company who are
ready to fund projects outside UAE, in the form of debt finance. We
grant loan to both Corporate and private entities at a low interest
rate of 2% ROI per annum. The terms are very flexible and
interesting.Kindly revert back if you have projects that needs funding
for further discussion and negotiation.

Thanks

investment officer
