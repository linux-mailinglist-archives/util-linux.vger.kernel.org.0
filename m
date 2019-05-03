Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4E9FF12D3D
	for <lists+util-linux@lfdr.de>; Fri,  3 May 2019 14:11:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727412AbfECMLC (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Fri, 3 May 2019 08:11:02 -0400
Received: from mail-vk1-f194.google.com ([209.85.221.194]:45388 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727240AbfECMLC (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Fri, 3 May 2019 08:11:02 -0400
Received: by mail-vk1-f194.google.com with SMTP id h127so1307306vkd.12
        for <util-linux@vger.kernel.org>; Fri, 03 May 2019 05:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7EPfuh3wqWjNunrVTrXl5Mg7mVe/Zz2uJJ5OIgeuYU8=;
        b=AR5LhLHkj5XHdBHZc1L+0PGd1NJocWSFMLdNTCxiykzDIOKW8X3HtX4peKHw57ddcR
         OF4Ab5Wz7uemC7qkYUwGONSSbirnWvYB0bIn0y+OkfijrwQ93jA+nah8Wyx/uNPDhIhx
         HuvuYoaUoIdd1cG7xv1c5Y8GMH0JF34RVSpfH9ZvqNZhIgugUHLVxezFIumXj1u1ZOfF
         aW2SadQXhqzIoNTUfRIh5xWjpWRea6gJXkZHk6kvSWDw+qoEwuzMh+UGY5TQMKTAw6AA
         cCr1glY/FjBvcx5k/4g3BcdfoVBkOorhUEF38QGjJwEleBi9lmf07XuLd/LFd5/ER7RI
         JsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7EPfuh3wqWjNunrVTrXl5Mg7mVe/Zz2uJJ5OIgeuYU8=;
        b=iw0zZDreB+b96alGhlbbD+SoI+FExP3HHt66TgzfFl8n9+Z+5xxmPpjik5NKOn8Y4o
         3JfB3M6TCVD3TvtJXG20RWbz7V8wYJa31CqdlhgY8v8TZ9Az14DMJ6bZQy37AIuzbw0r
         3qv+/XH8hvFpb4j16V4/Y5uOsxSm9Y13z3AaqVttqdLUc6UQHJ6g06ncWB2xKBa6p7HB
         K4rrdSzxnN8t8n1kALdCnuZkPYasZ++TJdrSvOfNOg+KSzp9fzuOXrDzHEgsKNh10Qu2
         R9DRs1ZMGap4Og3xP6dtwvk0HpaSqv+c7laM+aqk2YOGBytBKfIkSwRm6/BdbBR89db8
         +EEQ==
X-Gm-Message-State: APjAAAVFXRJ9iD6k+1aFNmQSM74AgrlWxzTdrzIrUCR0V6I03XVuZAWr
        z3yfEDDQfROrKpNRu0NRvDGhxwzewGwPnM1rTQeTHA==
X-Google-Smtp-Source: APXvYqzb5/HpsLiakHJ0bc9868Ido5gE7o1s7YL8YK01S2J//2fKVnRuiFahuYSr6S1ao0hUwySa4BispzBOfCll7N8=
X-Received: by 2002:a1f:7f05:: with SMTP id o5mr5134747vki.91.1556885460996;
 Fri, 03 May 2019 05:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190503082819.23112-1-romain.izard.pro@gmail.com> <20190503104227.ga56ffjkrm2gno7h@ws.net.home>
In-Reply-To: <20190503104227.ga56ffjkrm2gno7h@ws.net.home>
From:   Romain Izard <romain.izard.pro@gmail.com>
Date:   Fri, 3 May 2019 14:10:49 +0200
Message-ID: <CAGkQfmMvgPqAYm2ZD1JDcM+hanm97a8WxL35xkBrFgFRGGUnzQ@mail.gmail.com>
Subject: Re: [PATCH] lib/loopdev.c: Retry LOOP_SET_STATUS64 on EAGAIN
To:     Karel Zak <kzak@redhat.com>
Cc:     util-linux@vger.kernel.org, linux-block@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Le ven. 3 mai 2019 =C3=A0 12:42, Karel Zak <kzak@redhat.com> a =C3=A9crit :
>
> On Fri, May 03, 2019 at 10:28:19AM +0200, Romain Izard wrote:
> > +     do {
> > +             err =3D ioctl(dev_fd, LOOP_SET_STATUS64, &lc->info);
> > +     } while (err && errno =3D=3D EAGAIN);
>
>  Would be better to use any delay in the loop? For example after
>  EAGAIN read/write we use usleep(250000).

As we are waiting for the kernel to do some cleanup, this is a good idea.
It seems to reduce the need for retries in my use case.

I will add this in a v2.

Best regards,
--=20
Romain Izard
