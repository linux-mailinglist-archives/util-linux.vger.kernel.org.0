Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6A242153F5B
	for <lists+util-linux@lfdr.de>; Thu,  6 Feb 2020 08:47:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727917AbgBFHrl (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 6 Feb 2020 02:47:41 -0500
Received: from smtp3.tjgo.jus.br ([45.71.214.101]:37764 "EHLO mx2.tjgo.jus.br"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727987AbgBFHrl (ORCPT <rfc822;util-linux-ng@vger.kernel.org>);
        Thu, 6 Feb 2020 02:47:41 -0500
X-Greylist: delayed 672 seconds by postgrey-1.27 at vger.kernel.org; Thu, 06 Feb 2020 02:47:39 EST
Received: from sv-email-p02.tjgo.jus.br (sv-email-p02.tjgo.jus.br [45.71.214.97])
        by mx2.tjgo.jus.br (Postfix) with ESMTPS id 0819216853D;
        Thu,  6 Feb 2020 04:36:15 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
        by sv-email-p02.tjgo.ldc (Postfix) with ESMTP id 7F6BE63EE6;
        Thu,  6 Feb 2020 04:36:13 -0300 (-03)
Received: from sv-email-p02.tjgo.jus.br ([127.0.0.1])
        by localhost (sv-email-p02.tjgo.ldc [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id FOskmj8WW-fA; Thu,  6 Feb 2020 04:36:13 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
        by sv-email-p02.tjgo.ldc (Postfix) with ESMTP id 2B092638C2;
        Thu,  6 Feb 2020 04:36:10 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 sv-email-p02.tjgo.ldc 2B092638C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tjgo.jus.br;
        s=DB6EB6C0-19CB-11E9-B608-74AECE7D716B; t=1580974570;
        bh=rAAC+89dQJN94OO5dgai3uz7CZ6whHR4SSA5qlsIk4c=;
        h=Date:From:Message-ID:MIME-Version;
        b=CDQE6q5fUceIgIJfesbYW4lYejUJ8b4JfwxbPyMxJz1ghtgDA175ug3RPkDoe0ifC
         5Ilw/jUzF5Pw3Y9uerJ5g9S9/xOwIss2nOLQ9zDHjBHDXWJkKwOTC6TZ4YQOZxrYkO
         1HQAOVQvkGxKAcvLS29KksfjfEt9gu1vUj3CIohIkJqgj8qhBt8BSJwsunju5RNUQq
         Hx1FZojnTrUFlCPsn5+c507wtcsKUvBz0zztqkioDZDEdMoABWjF/p+hEBdZ1DitUk
         bUf+VneSKvz7Aan63QjNJhXW73yOLXNYY178+gXo8Xgncv9PXplj4pPk3m2b88SZ+w
         yWqf+cxtU3aUA==
X-Virus-Scanned: amavisd-new at sv-email-p02.tjgo.ldc
Received: from sv-email-p02.tjgo.jus.br ([127.0.0.1])
        by localhost (sv-email-p02.tjgo.ldc [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id wI-rv4fEftRM; Thu,  6 Feb 2020 04:36:10 -0300 (-03)
Received: from sv-email-p00.tjgo.ldc (sv-email-p00.tjgo.ldc [45.71.214.95])
        by sv-email-p02.tjgo.ldc (Postfix) with ESMTP id E3CA162397;
        Thu,  6 Feb 2020 04:36:01 -0300 (-03)
Date:   Thu, 6 Feb 2020 04:36:01 -0300 (BRT)
From:   Viviane Jose Pereira <vjpereira@tjgo.jus.br>
Reply-To: Guo Ningning <guoninh2@gmail.com>
Message-ID: <57354115.1019140.1580974561846.JavaMail.zimbra@tjgo.jus.br>
Subject: Re:
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [199.249.230.119]
X-Mailer: Zimbra 8.8.15_GA_3829 (zclient/8.8.15_GA_3829)
Thread-Index: tECuYWIYHefUNGkWwnsgNIL4bkx6Pg==
Thread-Topic: 
X-HSC-Mail_Inspector-From: vjpereira@tjgo.jus.br
X-HSC-Mail_Inspector-IP: 45.71.214.97
X-HSC-Mail_Inspector-Point: 1
X-HSC-Mail_Inspector-ID: 0819216853D.ADB03
X-HSC-Brasil-HSC_MailInspector: Mensagem OK
X-HSC-Brasil-HSC_MailInspector-SpamCheck: Nao e SPAM,
        HSC MailInspector (cached, Pontuacao=0.267, requerido 6,
        BAYES_00 -3.00, DKIM_VALID_AU -0.10, HELO_NO_DOMAIN 0.00,
        MISSING_HEADERS 1.02, RDNS_NONE 0.79, REPLYTO_WITHOUT_TO_CC 1.55)
X-HSC-Brasil-HSC_MailInspector-From: vjpereira@tjgo.jus.br
X-Spam-Status: No
To:     unlisted-recipients:; (no To-header on input)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org



--=20
Hallo,=20

ich entschuldige mich f=C3=BCr die St=C3=B6rung Ihrer Privatsph=C3=A4re, bi=
tte lassen Sie mich damit beginnen, mich vorzustellen, ich bin Miss Guo Nin=
gning, Executive Vice President Banking Division.Agricultural Bank of China=
, Beijing, China. Ich nehme Kontakt mit Ihnen aufbez=C3=BCglich einer =C3=
=A4u=C3=9Ferst dringenden und vertraulichen Angelegenheit.

Wenn Sie mir die Gelegenheit dazu geben w=C3=BCrden, werde ich Ihnen bei Ih=
rer Antwort Einzelheiten mitteilen.F=C3=BCr weitere Informationen wenden Si=
e sich bitte an: guoninh2@gmail.com

Mit freundlichen Gr=C3=BC=C3=9Fen,Guo Ningning
