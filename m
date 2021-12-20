Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF08A47B2F0
	for <lists+util-linux@lfdr.de>; Mon, 20 Dec 2021 19:36:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233839AbhLTSgE (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 20 Dec 2021 13:36:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233831AbhLTSgE (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 20 Dec 2021 13:36:04 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C185C061574
        for <util-linux@vger.kernel.org>; Mon, 20 Dec 2021 10:36:03 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id v7so14601716wrv.12
        for <util-linux@vger.kernel.org>; Mon, 20 Dec 2021 10:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=UtoF0r4yG8U/T8UOLxn8dacSd49m7zi2Qvhr7fGOaoo=;
        b=W9EklSyA5ouvqkWj3sLbxtLPk7BYfMgSwb170vGmjctuaiMv7Cg00kqE63teeLFuX/
         VmSXvW7PRE9YO7pf00PLfUDq5A3NksMatIRHTxfMi/lR7TwH427CApFLZJirSGbu4j+c
         EGo1Z6hjRjPc4mRapJRn7Vfvn9JHh6KZcb90Hdl5s14LqrWrrgdj6dXFJbisvtvRimWu
         KELAQJJPZqPP05p214bOLbFLe2nndFSKgouzgjc8buSAcPYep8iA1fMUFO6eQB7NXky4
         Sz8FOURkYjmEL9CfOT2WQPUQV0AwgRMXXdWMZrySaxalBIx2ndwym5mNtF/Jf+p0fpCz
         ZlpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=UtoF0r4yG8U/T8UOLxn8dacSd49m7zi2Qvhr7fGOaoo=;
        b=B9vvD8wUoaov9DRq36/nRhB9CKVYsCC2EbWHYtxLht6luo2PdC24zdWTPs3m8sXwVc
         oMXtYCtq4Nwlkw4yP+b/jsDlPJfWjvgJICZejKEWEYOdNx64mURXdOrKGqnhEcWSHPQ0
         aSJYTAyANOQPXPbSrQ/oni7Dhcy/EGZXvMPqJTwayIPhzvcvBfqCtsQktnFfio4pO6bZ
         oLlBKjRT/twi78zh4y9/kyiFlPBc8o99fIX3MTF6hOl2GQ/FNGQ0z+lPTb2xMxBOqE0r
         n6ky1jd+AxpHdxDAdF19GX/Vm/cX68lcmjaiD43Jr7sGiCggZcXqsuHpY++9eHL7LAgw
         Jc5A==
X-Gm-Message-State: AOAM531bxd1+POtOWdoEGDh47shPLYI4NRITCJGTeKYOBDIadXjnEveb
        oLulMmwUfRWtzAztIFRKTt8=
X-Google-Smtp-Source: ABdhPJzVBANoaZwkEmbOCxJuDTr0O19armm1QMlQrx+qegXN3sOk43V7765ciIYNvKaO99Jl2dctLQ==
X-Received: by 2002:a05:6000:1869:: with SMTP id d9mr4277094wri.231.1640025362321;
        Mon, 20 Dec 2021 10:36:02 -0800 (PST)
Received: from [192.168.9.102] ([129.205.112.56])
        by smtp.gmail.com with ESMTPSA id u12sm16190614wrf.60.2021.12.20.10.35.58
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 20 Dec 2021 10:36:01 -0800 (PST)
Message-ID: <61c0cd11.1c69fb81.ba6a8.ffb4@mx.google.com>
From:   Margaret Leung KO May-yee <salisuayuba300@gmail.com>
X-Google-Original-From: Margaret Leung KO May-yee
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: =?utf-8?q?Gesch=C3=A4ftsvorschlag?=
To:     Recipients <Margaret@vger.kernel.org>
Date:   Mon, 20 Dec 2021 19:35:54 +0100
Reply-To: la67737777@gmail.com
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Bin Frau Margaret Leung Ich habe einen Gesch=E4ftsvorschlag f=FCr Sie, erre=
ichen Sie mich unter: la67737777@gmail.com

Margaret Leung
Managing Director of Chong Hing Bank
