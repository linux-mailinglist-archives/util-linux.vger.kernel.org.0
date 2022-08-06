Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 025EA58B384
	for <lists+util-linux@lfdr.de>; Sat,  6 Aug 2022 05:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233139AbiHFDYy convert rfc822-to-8bit (ORCPT
        <rfc822;lists+util-linux@lfdr.de>); Fri, 5 Aug 2022 23:24:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbiHFDYw (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 5 Aug 2022 23:24:52 -0400
X-Greylist: delayed 63 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 05 Aug 2022 20:24:50 PDT
Received: from lvs-smtpgate2.nz.fh-koeln.de (lvs-smtpgate2.nz.FH-Koeln.DE [139.6.1.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E37E4A1AB
        for <util-linux@vger.kernel.org>; Fri,  5 Aug 2022 20:24:50 -0700 (PDT)
Message-Id: <56f71c$16u8j6@smtp.intranet.fh-koeln.de>
X-IPAS-Result: =?us-ascii?q?A2D//wBK3u1i/9LeBotaHAEBASsLBgEBBAQBAQIBAQcBA?=
 =?us-ascii?q?RWBTwIBGggBgRYCAQEBAUwBAQEBgROBLAEBK4ROg0+ITyODIAGBKYJ1ixaBY?=
 =?us-ascii?q?wUCgiuMWQsBAQEBAQEBAQEJEgIlCQQBAYUEAVMBAQEBB4QfJjcGDgECBAEBA?=
 =?us-ascii?q?QEDAgMBAQEBAQEDAQEIAQEBAQYEgRyFLzkNXwEBAYEMNAEBAYQQAQEBBgEBA?=
 =?us-ascii?q?StrIAIZDQJJFkcBAQEBgkZFAQEBgiUBATMTojuHYYExgQGCKYEmAYELgikFg?=
 =?us-ascii?q?nKBFyoCAQEBAQEBh22QXIEPAQKFGB0TglIEmCkCAho4AzQRHjcLA10ICRcSI?=
 =?us-ascii?q?AIEERoLBgMWPgkCBA4DQAgNAxEEAw8YCRIIEAQGAzEMJQsDFAwBBgMGBQMBA?=
 =?us-ascii?q?xsDFAMFJAcDHA8jDQ0EHx0DAwUlAwICGwcCAgMCBhUGAgJOOQgECAQrJA8FA?=
 =?us-ascii?q?gcvBQQvAh4EBQYRCAIWAgYEBAQEFgIQCAIIJxcHEzMZAQVZEAkhHAkfEAUGE?=
 =?us-ascii?q?wMgbwVFDygzNTwrHxsKYCcLKicEFQMEBAMCBhMDAyICEC4xAxUGKRMSLQkqd?=
 =?us-ascii?q?QkCAyJuAwMEKC4DCUAHCSYsPQUFRz4PlnmCEIE4AjCHC41Cg2UFilagWwcDg?=
 =?us-ascii?q?1GBRAKTfowogkaSdA4EkX0JhW+EdowSp1iBd4F/cIFuCSWBG1EZD5ISil90A?=
 =?us-ascii?q?jkCBgEKAQEDCYxlgQqBGAEB?=
IronPort-Data: A9a23:yvghL6L4j/+MjBOgFE+RNpIlxSXFcZb7ZxGr2PjKsXjdYENS0zVSn
 zAcWmnQO6rbZTajKo9/ad6w/BxX6sKEmINrTAId+CA2RRqmiyZk6fd1jKvUF3nPRiEWZBs/t
 63yUvGZcIZuCCe0Si6FatDJtWN72byDWo3yAevFPjEZbQJ/QU/Nszo68wIEqtcAbeaRUlvlV
 eza/pW31G+Ng1ZcLm8S4qSfnxJj1NyaVOQw5wFWiVhj5TcyplFNZH4tDfjZw0jQHuG4KtWHq
 9Prl9lVyI95EyAFUbtJmp6jGqEDryW70QKm0hK6UID66vROS7BbPqsTbJIhhUlrZzqhkNlh1
 Ytjk8CLaCw1NYLuiOFNehlgKnQrVUFG0OevzXmXlOW4lhDoKD3y2/MoAkFzPooV/uAxDWwmG
 f4wcWtcKE7F3bjshujiEoGAhex6RCXvFIYWsXJtyyPYALA6XIzfR6ji7tYexi12jcdLdRrbT
 5ZBOWEwM0+cC/FJEnNGWa4Yl7y3vyfmaTh+pkiF+YNtuVGGmWSd15C3aYGMIYzbLSlPpW6ar
 2Tu9nzwCREXctuFxlKt+XWqmubEgQv5WY9UGqfQ3uVjhVy73WUWCAAMVB29rOXRolC6Ut5eL
 k0OvCYnq6My+UqoScfVUBixoXrCtRkZM/JVGvEowBuQwLuR5w+fCS4DVDEpQME6tctzQT0sy
 0+hgdzkH3psvaeTRHbb8a2bxRupMC09LWgJaDENV00D7sWLiIUyhR/JVdtLAqOzgpv+HjSY6
 zmArCkWiLAajMpN3KK+lXjFnimwr4LARB8d6QDeX2bj5QR8DKaoYYPu5F3B5PBBdt6xQ1ybt
 X5Yh8WV7KYFCpTlvDKMQ/kKBvey4POCPyzdqVhiA4Ys7Tfr+2PLVZxd+y1WIEZ3P4AKY1fBa
 VLIpQJX6ZNUPHyCYqp+Yob3AMMvpYDjFd3hW/zVaNRJeZlteSeI+ShvYQib2GWFuEEmkaA2N
 MfLWcmpBHceT69gyVKeRucGjeMt7i87zGLXA5v8ynyP17mXYG+cT+1YaASmYeUw7afCqwLQm
 /5DOtCWxg93X+j3Yy2R+okWRXgFKHE6Abj/sMFPMOWEJ2Jb9HoJE6WLm+l4I8p7h6IQmvbOu
 H+9H0xfxV75w3HKQemXVpx9QLzmTYshg1RnBg0HIV2H+WgmMa+v1J5KIvPbYoIbGPxfIe9cF
 qdYKpveX6sWFlwr6BxANcin/dMKmACD21PSb3vNjC0XIsYIeuDfxjPzVifCnMXkJgGwscwxp
 bDIOujzHMJdGFoK4Cr+TvW101P5h3gcnu83YEbTPsFTcUHt+eBXx83NYhwfep9kxe3rnGfy6
 upvKU5wSCmki9ZdHCP1ra6FtZy1NOB1A1BXGWLWhZ7va3SLoTD/m9QZCbrSFdw4aI8S0Pr8D
 Qmy566nWMDrYH4Q79UU/0tDkvNut4q+/de2MCw5RSmUNDxH9Y+M0lHchJIW7f0crlOokQe7R
 16U8dlXIv2HP9n+G14MIgU+aOmfx5kpdsr6spwIzYSTzHEfwYdrpm0IYkXX2XUDfeErWG7nq
 M940PMrB8WEokJCGr67Yup8rgxg8lRov30bi6wn
IronPort-HdrOrdr: A9a23:FdU/CqoYoQdspEI12l7uuMgaV5o8eYIsimQD101hICG8u6Sj+/
 xG+8536faUsl0ssR4b+exoVJPgfZq+z/RICOAqVN+ftW/dyQiVxEQI1/qG/9SKIULDH4Bmu5
 uICJIOauHNMQ==
X-IronPort-Anti-Spam-Filtered: true
THK-HEADER: Antispam--identified_spam--outgoing_filter
Received: from p222210.vpn-dyn.fh-koeln.de (HELO MAC15F3.vpn.fh-koeln.de) ([139.6.222.210])
  by smtp.intranet.fh-koeln.de with ESMTP/TLS/DHE-RSA-AES128-SHA; 06 Aug 2022 05:23:44 +0200
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Description: Mail message body
Subject: Charity Donation
To:     You <mackenzie.tuttle@ca.rr.com>
From:   "MacKenzie Scott" <mackenzie.tuttle@ca.rr.com>
Date:   Sat, 06 Aug 2022 04:23:40 +0100
Reply-To: mackenzie-tuttle@californiamail.com
X-Priority: 1 (High)
Sensitivity: Company-Confidential
X-Spam-Status: No, score=1.3 required=5.0 tests=BAYES_50,
        FREEMAIL_FORGED_REPLYTO,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi,
  My name is MacKenzie Scott Tuttle; I'm a philanthropist and founder of one of the largest private foundations in the world. I'm on a mission to give it all away as I believe in ‘giving while living.’ I always had the idea that never changed in my mind — that wealth should be used to help each other, which has made me decide to donate to you. Kindly acknowledge this message and I will get back to you with more details.

Visit the web page to know more about me: https://www.nytimes.com/2022/04/10/business/mackenzie-scott-charity.html

Regards,
MacKenzie Scott Tuttle.
