Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 860FF3EDA2A
	for <lists+util-linux@lfdr.de>; Mon, 16 Aug 2021 17:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236898AbhHPPtq (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 16 Aug 2021 11:49:46 -0400
Received: from luckmann.name ([213.239.213.133]:57279 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236882AbhHPPtq (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 16 Aug 2021 11:49:46 -0400
X-Greylist: delayed 306 seconds by postgrey-1.27 at vger.kernel.org; Mon, 16 Aug 2021 11:49:46 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8002.00000000611A87C7.00000982; Mon, 16 Aug 2021 17:44:07 +0200
Date:   Mon, 16 Aug 2021 17:44:07 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     util-linux@vger.kernel.org
Cc:     Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: Errors in util-linux man pages
Message-ID: <20210816154407.GA2383@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-2434-1629128647-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-2434-1629128647-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear util-linux maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including util-linux) as
well for a large variety of target languages.

During their work translators notice different possible issues in the
original (english) man pages. Sometimes this is a straightforward
typo, sometimes a hard to read sentence, sometimes this is a
convention not held up and sometimes we simply do not understand the
original.

We use several distributions as sources and update regularly (at
least every 2 month). This means we are fairly recent (some
distributions like archlinux also update frequently) but might miss
the latest upstream version once in a while, so the error might be
already fixed. We apologize and ask you to close the issue immediately
if this should be the case, but given the huge volume of projects and
the very limited number of volunteers we are not able to double check
each and every issue.

Secondly we translators see the manpages in the neutral po format,
i.e. converted and harmonized, but not the original source (be it man,
groff, xml or other). So we cannot provide a true patch (where
possible), but only an approximation which you need to convert into
your source format.

Finally the issues I'm reporting have accumulated over time and are
not always discovered by me, so sometimes my description of the
problem my be a bit limited - do not hesitate to ask so we can clarify
them.

I'm now reporting the errors for your project. If future reports
should use another channel, please let me know.

I will send the issues in individual mails (like last time), without this=
=20
header. This will be a total of 98 mails.

I'll wait with sending for ~ 1 hour in case you would not like to have
them in those e-mails.

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-2434-1629128647-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmEah8QACgkQQbqlJmgq
5nB6ig/+JXFo+vKsaPuYHOHyXrqahqxqxbB/CYfY6P4YYB4kORg17wPH+T/yoIpG
OQi+NRuBliWdCdpraVyB552Lrny6IZCCWzPx3vgjd9sWuU2sc7F6aOxqkitBWh/n
YhieZonCCNgJzv6yfCDGN1ezy7e7M5TBaf0YDgZP3YL659Dmf9eWm8lsD3ZcwYZs
Id8peTvBusslzL4sA/+W8r3yjMAg/Qj22deohIhLkmH6RZyH6KiWlUzo29nS/ojw
8xKPNGTskBF6+QKLKh3GalFN1DdjuHQOG565ZQSGcBBTE52D8Kw63GEk7c2Oatc6
K8R8QSJJ8YupEwFo2ebpbh/8kto5owOguUIqy+xm6MbkC+1CYHcrbazcGXoY5387
r7wV4KQkVFPaa4v8ysNQCKipwq2/WNdkE1vHOsnLO2NM2ENIh7wfA7GfU0VKN02g
cuulyCFIdX+bglGjei5ChtiXDyk0F5FfaMZJOOLdjC4tZYbyb46GS7Mh2WPDeRrB
KhfpYGQW3JB5rdGWWLMeCUBloy/p9aGWLpl+4ZuD8ImPUwfE1FlHZZHgjaEryrxf
uSJr2Hhk/j3ziVH9XZ2wDoiQkzOrs3MZnDodweAifXVoky8gnrX32jHGj8a5XojM
vAMobElVjSBAYV9UkPPo0QIW3SVoFLnK4scxR+Nwr+q0n6LDpf8=
=9Kef
-----END PGP SIGNATURE-----

--=_luckmann.name-2434-1629128647-0001-2--
