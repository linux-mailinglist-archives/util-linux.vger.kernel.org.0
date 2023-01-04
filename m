Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1736865D40E
	for <lists+util-linux@lfdr.de>; Wed,  4 Jan 2023 14:23:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229642AbjADNWp (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Wed, 4 Jan 2023 08:22:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239522AbjADNVn (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Wed, 4 Jan 2023 08:21:43 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DF61395DC
        for <util-linux@vger.kernel.org>; Wed,  4 Jan 2023 05:21:10 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id ge16so32425491pjb.5
        for <util-linux@vger.kernel.org>; Wed, 04 Jan 2023 05:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g2m/uNsCm/OsAUZxAnJOSdXXDa9Gh4wg88n4VPL2lMU=;
        b=Nq/JlR9mQ29hCRqGzzHK1gDU+tSuaglSLv0O4L2Y4P6eT6uG85NcbwJPu8BpaRZv36
         HL8YucW4lnclHko4tqY6g9L6il/A6/Isb1AjU/OAFAaK76WpLJSXq00PR55+rBDgEpbC
         g/Lh29+fqeLajuLnS/aKZGH5i/+P3bxQEFYxdicMg0MHejIRCg3tAo4Ucb0h0QcI6uoa
         8PDbYeCumq9qcv4A/kncKS1qpM0tB5C1OVyBDMbDZtwBo+j8LfBhOgWkP1MgriFFOYGj
         wL5T/mfKb216x3VZBYXrwfHKjDJoE170heevkbUSWkB33uttIELnkrAvixMsvZ/Lx3UE
         ni0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2m/uNsCm/OsAUZxAnJOSdXXDa9Gh4wg88n4VPL2lMU=;
        b=MW9K/gIGHTxV4KTS5lXDu0PjVSU8iKxYWkTYfZy4SSQoFY9XcT66Yw1OaWGE/JAf/e
         lE46t+VhxxPYlhz9ZDDn0NwYq7h6EtGJ49YViBxrxj6jAc+TbQzPa65+4t4l6VA7Xem4
         UrvN/xVdctWvGUUOiVSPnidvQxrdPV8g/PZnLr6h6QfYco4yXD7m3QXkKhScqgqr/wth
         Clws0m121S3M7UmKDizIKS4JjSvN/pvVEIke787Zaa5HJUZNfLE6NDa6LmCrsyi60/CA
         0s/HFhdilO7eD80k0bwnscXidglC/s0Xt9ogcyy+RgZLfMWJ+mOE/rg35OCCV93s7z1Y
         UCXA==
X-Gm-Message-State: AFqh2krgy067gq7rj8S4ZkLrY4yD6CnsyJIVT1RXYBQ4WCIlGf5D5NgO
        Z9lLdX/JT31QwSM0o+fNpsaX5Gi9A1QibnovNUDq9z0LtvA=
X-Google-Smtp-Source: AMrXdXt/T704gpf2Vdu5n5Ih9m6z41+6DBjF5vwhSyr4Cx493p7qjwKOUvtu/gQh5uCY9KWBbAQQtqxQq/MfMaLE9Xg=
X-Received: by 2002:a05:6870:4d1c:b0:150:a323:616c with SMTP id
 pn28-20020a0568704d1c00b00150a323616cmr934295oab.241.1672838458952; Wed, 04
 Jan 2023 05:20:58 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6838:3d9d:0:0:0:0 with HTTP; Wed, 4 Jan 2023 05:20:58
 -0800 (PST)
Reply-To: Gregdenzell9@gmail.com
From:   Greg Denzell <attorneytibbemarktg@gmail.com>
Date:   Wed, 4 Jan 2023 13:20:58 +0000
Message-ID: <CABELFhWbcfH6yHfiZ8EG0bhvArut5iGqKNZQDEVAdKup69o4jQ@mail.gmail.com>
Subject: Seasons Greetings!
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Seasons Greetings!

This will remind you again that I have not yet received your reply to
my last message to you.
