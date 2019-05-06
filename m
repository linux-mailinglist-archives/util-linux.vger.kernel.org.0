Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A9C7914ADC
	for <lists+util-linux@lfdr.de>; Mon,  6 May 2019 15:23:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726303AbfEFNXE (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 6 May 2019 09:23:04 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:54093 "EHLO
        mail-wm1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725994AbfEFNXD (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 6 May 2019 09:23:03 -0400
Received: by mail-wm1-f54.google.com with SMTP id q15so15740374wmf.3
        for <util-linux@vger.kernel.org>; Mon, 06 May 2019 06:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=tDFA64rtx/3t8cfV1trpEBrIIW00rrfmMSvVl+UlW2E=;
        b=YOV730524GO1Vz6nF8aRdwJ8fA7lPqoo8/gS1WH8f/2tPyc4LlGQ7WRnzrInpBYD6J
         PJbFieOsSZNegSWuEtG/48K9jTKo4WXsVAm9/Ihwo+YkBVZBXnUTz5FYkwGpc7eLvKLi
         0uyVW5qqevV8znwFCBFsbIMVuOs4JtYsFpknW4p6SA+AqN4Y/rAb39Ph8JAO4v2QlDLL
         OqvbedIfeBjNccBcGYdikVs0pwXcZoiccrmg9r60MJoGqEkOz+zW26AoIO82VNp4rJib
         3R21yfcG+wdQE9YaZ3LMVAJN0C41P+5PNxbRD9aff23HgqjWnfptDr0jvnX+3HfYjbwh
         DUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tDFA64rtx/3t8cfV1trpEBrIIW00rrfmMSvVl+UlW2E=;
        b=ddJJqbvX7piLC1n/RH/TKtVtaMJ425Ud5DO1CNWCG2LenvrgrVFahTOGDEta5SBEsO
         j7BnDk02yC3KKqGJKq5I2N9sE0UsqTUY0FC3GZ2llINm3dueGuZRp9OgEs8MpES5Q7NA
         W9sBc77X20UlO7as8KFSIj8l8vj6wKpi75D/q5xJ8I4JVB3kw+R/pDYwzTxRUEMPgKK8
         4yW6rVe69JuiPQ87OMspd8z19geQjL+7wF5EPpa5+R2hYt2Ca657YDMrO0iJba6s7cMO
         5YdJwjxGh4KVmBRdwKmBj/AtSCWFJ7QBnrrNYZQS78qZ5zEyve1TCQoH4I92Z1YR9FpX
         Y8fA==
X-Gm-Message-State: APjAAAUELt6PDfa8vbmC2UsiEmAstOAaKwbcEEEiiVqht5KjgA2UA2kk
        8phplcwzSfT5JXAAtc3IVjhzLlblYquVSYEEJvO3sg75Wks=
X-Google-Smtp-Source: APXvYqwfVTkBH5F3Yt3DOW/lEY4GDt2Z36Vnve/ad45JGIXhlIQ0pTVzWBGNkZ+CGeH1n0oDpf3cDBcaVGQ6PEV8K/c=
X-Received: by 2002:a1c:6342:: with SMTP id x63mr16756136wmb.58.1557148981935;
 Mon, 06 May 2019 06:23:01 -0700 (PDT)
MIME-Version: 1.0
From:   "Carlos A. M. dos Santos" <unixmania@gmail.com>
Date:   Mon, 6 May 2019 10:22:51 -0300
Message-ID: <CAJ4jsae=RUFEX2+2+8YG_tspTzqghMgupMfT_adYnG9b_xUVxg@mail.gmail.com>
Subject: Building util-linux libraries and utilities as separated operations
To:     util-linux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hello,

Would it be possible to build/install the libraries first and the
utilities later, using the previously installed libraries? That would
help to solve a chicken-egg problem between lsblk, and libudev, as
described in

    https://bugs.busybox.net/show_bug.cgi?id=11811

---
Carlos Santos <unixmania@gmail.com>
