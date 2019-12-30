Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C5ED412D02A
	for <lists+util-linux@lfdr.de>; Mon, 30 Dec 2019 14:09:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727422AbfL3NJW (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 30 Dec 2019 08:09:22 -0500
Received: from mail-qk1-f170.google.com ([209.85.222.170]:45119 "EHLO
        mail-qk1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727397AbfL3NJW (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 30 Dec 2019 08:09:22 -0500
Received: by mail-qk1-f170.google.com with SMTP id x1so26155530qkl.12
        for <util-linux@vger.kernel.org>; Mon, 30 Dec 2019 05:09:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:user-agent:date:message-id
         :mime-version;
        bh=W/b4jxEmMpiS3BH1/nXq4U2q9KAd5wibi+F+HdlosR0=;
        b=OytrdJchjRe1ZEQBAs7VLUuNodUsmxYchW8nPqacVKv99v/JD3gM0j8UkVteTYL02s
         6z/b/JyfJBprw9EAqNh6e0P5gVa1obiejpNpiWzhJmZ66hCgDigeSdIXv7Z3KsASYzmn
         tQN9tJWL0Jet8D4OgYsm8UDYC/7uZlquaUZU/G07ImCXyvsuwpaUm0Ya8p7Rhjq7UM9R
         UWI8c5/hQh966+QNBzKIetHWUZ0TY7naYSHTAzjgkI64hKPfzZQhji89sEvkYF0qJXzm
         q9QWk6N7aK0qHJMKe7MQEqXSFedPUs30iRv/L5EIAWvA4NDepxvwbTiJuPHhLzc+CDEM
         GIQg==
X-Gm-Message-State: APjAAAW4okxIqsFSyw0XiSyVJNCTf8hK1KI92ioQSY51cINJPf3NNKCP
        k5+zuuKFnJhhICA7/6f6wnuJiabaMSA=
X-Google-Smtp-Source: APXvYqznE0Bba+ZrpsQlKE/5x8LoRny+DYftviJ64PDdz0ogIONG0DZBkqJu3ReCTII7VYvX/SNK8w==
X-Received: by 2002:ae9:e304:: with SMTP id v4mr54320906qkf.399.1577711360646;
        Mon, 30 Dec 2019 05:09:20 -0800 (PST)
Received: from rhea.home.vuxu.org ([2001:19f0:5:56e0:5400:2ff:fe3c:c7d1])
        by smtp.gmail.com with ESMTPSA id z8sm13775382qth.16.2019.12.30.05.09.18
        for <util-linux@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Dec 2019 05:09:19 -0800 (PST)
Received: from localhost (rhea.home.vuxu.org [local])
        by rhea.home.vuxu.org (OpenSMTPD) with ESMTPA id f849714e
        for <util-linux@vger.kernel.org>;
        Mon, 30 Dec 2019 13:09:16 +0000 (UTC)
From:   Leah Neukirchen <leah@vuxu.org>
To:     util-linux@vger.kernel.org
Subject: cal -w and ISO weeks
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
Date:   Mon, 30 Dec 2019 14:09:16 +0100
Message-ID: <87fth2ark3.fsf@vuxu.org>
MIME-Version: 1.0
Content-Type: text/plain
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Hi,

fiddling around with 'cal -w' made me stumble in 2021:

% cal -w 1 2021 
      January 2021     
   Su Mo Tu We Th Fr Sa
 1                 1  2
 2  3  4  5  6  7  8  9
 3 10 11 12 13 14 15 16
 4 17 18 19 20 21 22 23
 5 24 25 26 27 28 29 30
 6 31                  

Obviously these week numbers are not ISO weeks.  The manpage says:

       -w, --week[=number]
              Display week numbers in the calendar (US or ISO-8601).

So the next thing I tried was:

% cal --iso -w 1 2021  
      January 2021     
   Su Mo Tu We Th Fr Sa
 1                 1  2
 2  3  4  5  6  7  8  9
 3 10 11 12 13 14 15 16
 4 17 18 19 20 21 22 23
 5 24 25 26 27 28 29 30
 6 31                  

I actually had to read the OpenBSD man pages to see what's
going on:

     -w      Display week numbers in the month display.  If -m is specified
             the ISO week format is assumed.  The options -j and -w are
             mutually exclusive.

Finally:

% cal -m -w 1 2021      
      January 2021     
   Mo Tu We Th Fr Sa Su
53              1  2  3
 1  4  5  6  7  8  9 10
 2 11 12 13 14 15 16 17
 3 18 19 20 21 22 23 24
 4 25 26 27 28 29 30 31
                       
So, to avoid further confusion, I'd propose to:

1) Reword the description of -w in the man page cal(1).

2) Rethink if --iso shouldn't also imply -m, as implied by ISO-8601.

Thanks,
-- 
Leah Neukirchen  <leah@vuxu.org>  https://leahneukirchen.org/
