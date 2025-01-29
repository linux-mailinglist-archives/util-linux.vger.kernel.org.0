Return-Path: <util-linux+bounces-427-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6552FA21D24
	for <lists+util-linux@lfdr.de>; Wed, 29 Jan 2025 13:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB5B0188657B
	for <lists+util-linux@lfdr.de>; Wed, 29 Jan 2025 12:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24D7372;
	Wed, 29 Jan 2025 12:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="T+uVmmPM"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C736D
	for <util-linux@vger.kernel.org>; Wed, 29 Jan 2025 12:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738153949; cv=none; b=UBXa6J5fqKO95K1pyVpKdJSOEDwTe5AWsIbWWsZBUHvmeW551RmdQPAkSN0KBwLFzSNQ2GGZHHyoD44+LUiVzwFPXqKMTA6NGdZKltWnUGOU36W7QauZiK8JK+kDQkQyXLjg5eNWjDBiOeOgSnaBaDeAXC/4f63kIX4klUsAl1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738153949; c=relaxed/simple;
	bh=Oq3KaSJqbNB5dgq6p9NXwbK1yFL3eDudSXvMlZZ/OMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XweoRiWpP0lEQWsLPKUq2Jw29ZVmfyfbZlVQiYEq0ftdmpgkl7AtFH4xG2z7WzTnRENBOMQ8OakwlLA4/P9JUn3LsV5Z9KUxwzaMBpyEIUNQvhs9OsOgJEbe7+NesYl2iTg40Ql5CtnCqWrVNcj7SVIx6pJWKnISazxz02h7+KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=T+uVmmPM; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738153947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rDa/WUqfQ1ijcnsXmaVH7dfI3kJoCyo6xz/kXg8+OFg=;
	b=T+uVmmPMph8ccilJrBPAQD02GKvo2DnKFlC0LYOKYOxjViVS8ANtalgzSgejYwwU1SREuB
	Sx01szzh+txCsYI5OQnpMfwCiT3Lf1r/I4FqzAWnXdZynWbHo6VFoK9sNUUnEUISDR2rH0
	GBkkzPS5KOAT0B6aXsxirswhesXHpmg=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-504-eeYszQWSNd2_jPwBvF5MbA-1; Wed,
 29 Jan 2025 07:32:25 -0500
X-MC-Unique: eeYszQWSNd2_jPwBvF5MbA-1
X-Mimecast-MFC-AGG-ID: eeYszQWSNd2_jPwBvF5MbA
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AD2751955DDD;
	Wed, 29 Jan 2025 12:32:24 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.106])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ACAB918008C0;
	Wed, 29 Jan 2025 12:32:23 +0000 (UTC)
Date: Wed, 29 Jan 2025 13:32:20 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org
Subject: Re: [PATCH] logger: do not show arguments of --socket-errors as
 optional in --help
Message-ID: <vp3yphm7y73xe4t3clnykrsz3wxvq3mkvmpjybdonz7ypoj3qo@id5gpz6wq4rp>
References: <20250127110825.7219-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250127110825.7219-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93

On Mon, Jan 27, 2025 at 12:08:25PM GMT, Benno Schulenberg wrote:
>  misc-utils/logger.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

 Applied, thanks.

> 
> diff --git a/misc-utils/logger.c b/misc-utils/logger.c
> index f696287d7..bcdff0614 100644
> --- a/misc-utils/logger.c
> +++ b/misc-utils/logger.c
> @@ -1101,7 +1101,7 @@ static void __attribute__((__noreturn__)) usage(void)
>  	fputs(_("     --sd-param <data>    rfc5424 structured data name=value\n"), out);
>  	fputs(_("     --msgid <msgid>      set rfc5424 message id field\n"), out);
>  	fputs(_(" -u, --socket <socket>    write to this Unix socket\n"), out);
> -	fputs(_("     --socket-errors[=<on|off|auto>]\n"
> +	fputs(_("     --socket-errors on|off|auto\n"
>  		"                          print connection errors when using Unix sockets\n"), out);

I don't have a strong opinion about it, but in other places we see
something like:

   --socket-errors <mode>   print connection errors when using Unix sockets (on, off or auto)


Note: I have also fixed the man page where we had [=mode] as well.

    Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


