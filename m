Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17FF34F0DCA
	for <lists+util-linux@lfdr.de>; Mon,  4 Apr 2022 05:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239273AbiDDDxY (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Sun, 3 Apr 2022 23:53:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242334AbiDDDxW (ORCPT
        <rfc822;util-linux-ng@vger.kernel.org>);
        Sun, 3 Apr 2022 23:53:22 -0400
Received: from mta-out-04.alice.it (mta-out-04.alice.it [217.169.118.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 64CE33134D
        for <util-linux-ng@vger.kernel.org>; Sun,  3 Apr 2022 20:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alice.it; s=20211207; t=1649044286; 
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        h=Reply-To:From:To:Date:Message-ID:MIME-Version;
        b=wmaAO8xmmq47nfIvOyAPzJeVLdPl892ripVukBEuBD49NGMsTBxSLvBTp826TvJ8MgCj9JwE9sDXJMtGQDOg5swPqC+SZSOAoNvDqQknJIF+KAebloxceJd14uIydpR9DkkC2MVPHeTexm9P/BvAkdy2VhcgRDa14ZM/WsR8P2VmtPB3CmGYl8vXEbGfwx0Ix6BMtn19AcyOc81HlwiS07BjFFANrHAZvuOVqmA48ydrUGh5KULJchjvc0X2S49uem+r3pxJY2VWy+Ajly6/N9lrEYLa0t3Yjreq1yRapdMehvkej241wfvp6NcsBLqq7YgJ3BoC7qVCOuymsNYeUg==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvvddrudejuddgjeeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvffgnffgvefqoffkvfetnffktedpqfgfvfenuceurghilhhouhhtmecufedtudenucfgmhhpthihuchsuhgsjhgvtghtucdluddtmdengfhmphhthicusghougihucdlhedtmdenucfjughrpehrhffvfffkggestddtfedttddttdenucfhrhhomhephggvuchhrghvvgcurghnuchofhhfvghruchtohcuihhnvhgvshhtuchinhcuhihouhhrucgtohhunhhtrhihuchunhguvghrucgruchjohhinhhtuchvvghnthhurhgvuchprghrthhnvghrshhhihhpuchplhgvrghsvgcurhgvphhlhicufhhorhcumhhorhgvucguvghtrghilhhsuceofhgpphgvnhhnrgesrghlihgtvgdrihhtqeenucggtffrrghtthgvrhhnpeehjeetgefhleetiedtkeelfffgjeeugeegleekueffgfegtdekkeeifedvvdffteenucfkphepudejiedrvddvjedrvdegvddrudeltdenucevlhhushhtvghrufhiiigvpeefleejnecurfgrrhgrmhephhgvlhhopegrlhhitggvrdhithdpihhnvghtpedujeeirddvvdejrddvgedvrdduledtpdhmrghilhhfrhhomhepfhgpphgvnhhnrgesrghlihgtvgdrihhtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuhhtihhlqdhlihhnuhigqdhnghesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-RazorGate-Vade-Verdict: clean 60
X-RazorGate-Vade-Classification: clean
Received: from alice.it (176.227.242.190) by mta-out-04.alice.it (5.8.807.04) (authenticated as f_penna@alice.it)
        id 623DC2DC0125D163 for util-linux-ng@vger.kernel.org; Mon, 4 Apr 2022 05:51:23 +0200
Reply-To: dougfield20@inbox.lv
From:   We have an offer to invest in your country under a
         joint venture partnership please reply for more
         details <f_penna@alice.it>
To:     util-linux-ng@vger.kernel.org
Date:   03 Apr 2022 20:51:21 -0700
Message-ID: <20220403205121.5AB9D5AD6EB728A7@alice.it>
MIME-Version: 1.0
X-Spam-Status: Yes, score=7.4 required=5.0 tests=BAYES_50,BODY_EMPTY,
        DKIM_INVALID,DKIM_SIGNED,EMPTY_MESSAGE,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,MISSING_SUBJECT,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_BL,RCVD_IN_MSPIKE_L4,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
        *       low trust
        *      [217.169.118.10 listed in list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5003]
        *  1.7 RCVD_IN_MSPIKE_L4 RBL: Bad reputation (-4)
        *      [217.169.118.10 listed in bl.mailspike.net]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [dougfield20[at]inbox.lv]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [f_penna[at]alice.it]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  0.0 RCVD_IN_MSPIKE_BL Mailspike blacklisted
        *  1.8 MISSING_SUBJECT Missing Subject: header
        *  2.3 EMPTY_MESSAGE Message appears to have no textual parts and no
        *      Subject: text
        *  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
        *  0.0 BODY_EMPTY No body text in message
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

