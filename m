Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 982B139D006
	for <lists+util-linux@lfdr.de>; Sun,  6 Jun 2021 18:37:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbhFFQjC (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 6 Jun 2021 12:39:02 -0400
Received: from dagestad.fr ([212.227.198.115]:47122 "EHLO mail.dagestad.fr"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230104AbhFFQjA (ORCPT <rfc822;util-linux@vger.kernel.org>);
        Sun, 6 Jun 2021 12:39:00 -0400
X-Greylist: delayed 503 seconds by postgrey-1.27 at vger.kernel.org; Sun, 06 Jun 2021 12:39:00 EDT
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=dagestad.fr; s=mail;
        t=1622996896; bh=jGffjhLPKZ7WZOzAO6v4Cu2l75zOrkw/EPabO1HM3JA=;
        h=From:To:Cc:Subject:Date;
        b=eqH1F9iPySoJ/6AF/Obafc6/Byww0tJNNF0OtxJYUoMf0NEZnUnutfzVfOa2w0JTL
         ff2pL1bupDaKqFvToAgXSkRx30qXwcNwoY+UfHiiCtDsTbVzgUPrK2m63PsmE2mEbY
         uAftTPRByDGJNhNtRMLNxjcc1JZY0d2OtkQIFxEdSSjmo2fHx2C6BWsORo3A0yAqxi
         D6gF1NTbS7t1Gh7NdRvQOhyp0YbpnVPWY5+h7QZCeleplIVgiHizBAWyY73wtRBtR4
         06vrEUDh4BExws4j+TSpjumAmF9bxgaxpwa/xyVHMGK6ITYLNlKeNHrfiZBZDuYfEf
         EQBlxh2kdKuhg==
From:   Nicolai Dagestad <nicolai@dagestad.fr>
To:     util-linux@vger.kernel.org
Cc:     Nicolai Dagestad <nicolai@dagestad.fr>
Subject: [PATCH] rfkill: Set scols table name to make the json output valid
Date:   Sun,  6 Jun 2021 18:28:35 +0200
Message-Id: <20210606162835.131020-1-nicolai@dagestad.fr>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Signed-off-by: Nicolai Dagestad <nicolai@dagestad.fr>

---

Hi, I just noticed that the json input for rfkill is invalid.
The array member of the top-level object, should be named but it wasn't.
I am not familiar with the codease so I just followed what I saw in lscpu,
if another name would be prefered I can change it.

 sys-utils/rfkill.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sys-utils/rfkill.c b/sys-utils/rfkill.c
index 0e740e122..41b933415 100644
--- a/sys-utils/rfkill.c
+++ b/sys-utils/rfkill.c
@@ -465,6 +465,7 @@ static void rfkill_list_init(struct control *ctrl)
 		err(EXIT_FAILURE, _("failed to allocate output table"));
 
 	scols_table_enable_json(ctrl->tb, ctrl->json);
+	scols_table_set_name(ctrl->tb, "rfkill");
 	scols_table_enable_noheadings(ctrl->tb, ctrl->no_headings);
 	scols_table_enable_raw(ctrl->tb, ctrl->raw);
 
-- 
2.31.1

