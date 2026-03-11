Return-Path: <util-linux+bounces-1091-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBw9JcxcsWlHuQIAu9opvQ
	(envelope-from <util-linux+bounces-1091-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Wed, 11 Mar 2026 13:15:08 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5E72637C2
	for <lists+util-linux@lfdr.de>; Wed, 11 Mar 2026 13:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA752302BB91
	for <lists+util-linux@lfdr.de>; Wed, 11 Mar 2026 12:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCBDB3D8133;
	Wed, 11 Mar 2026 12:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XyV/M1Gs"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410A13D8114
	for <util-linux@vger.kernel.org>; Wed, 11 Mar 2026 12:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773231280; cv=none; b=SPAw75i+pnJPxTQe0o2JX1OGKenoewyOp8JIe0thpnXU8Qi4qoSgC9/Cx94CYdjeeIWXm/l6O6QEsE0tLcgGJVWMmRUtst1RdQL6gw2gmYgNFzKMPsZqurN9NUwrzTMRoZ/F6ulMxOX1sxuIuh/cypCaq9iaE6dif7iA2W6/XvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773231280; c=relaxed/simple;
	bh=CGXevE86aLHVqgnzOPJu64Y7NXqEmX0riJjuitSjIUM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t0jvpmbWRnj1GBQRklxfIQh5MIyWxXEv9Pn3+gOOmrgJi9gi/mvbn8PpQfFEC/aYSTHLxj+wUEo76cXvwkfKKt281eg10DzGE6GBkOEkQSOeeubsoHr/YzNES15R2I7/cQvm3QiwF9lGJUzibiDBKNtHjsgTND9y498WUDLrwZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=XyV/M1Gs; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773231274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=E8B+nEzSWBFA7sgFtyFDwmRwqTwuXB2GN8L4DdIsTnU=;
	b=XyV/M1GsNugiigWpIuws+0HDiNwNbOfZaQgmTmF3Iynw2RnfVZyF+oAN9Vk2ons544Px1c
	zsMm86O68gmeo3v7ABEimNPApo36W9snWQxM5m1CGjEI0WSqn9neloJywGqNq0+y73i7hk
	lYc1aVMaMpPoBaxDlc3k7bILp8pbQpo=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-230-0MzqutHnMmuAu9BV9gPigA-1; Wed,
 11 Mar 2026 08:14:31 -0400
X-MC-Unique: 0MzqutHnMmuAu9BV9gPigA-1
X-Mimecast-MFC-AGG-ID: 0MzqutHnMmuAu9BV9gPigA_1773231270
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 029BE19560AA;
	Wed, 11 Mar 2026 12:14:30 +0000 (UTC)
Received: from ws (unknown [10.45.224.202])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D2D3A18002A6;
	Wed, 11 Mar 2026 12:14:28 +0000 (UTC)
Date: Wed, 11 Mar 2026 13:14:25 +0100
From: Karel Zak <kzak@redhat.com>
To: Benno Schulenberg <bensberg@telfort.nl>
Cc: util-linux@vger.kernel.org, Dick Marinus <dick@mrns.nl>
Subject: Re: [PATCH 1/2] copyfilerange: (usage) correct the markup and
 improve the wording
Message-ID: <jg4hhpuwvwuxwkfaobly25qd3rjdlfizcm3jims42zse7m4zue@dqtq3ifmdggn>
References: <20260309160903.15490-1-bensberg@telfort.nl>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309160903.15490-1-bensberg@telfort.nl>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Rspamd-Queue-Id: EC5E72637C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1091-lists,util-linux=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[telfort.nl];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[util-linux];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,karelzak.blogspot.com:url]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 05:09:02PM +0100, Benno Schulenberg wrote:
> The <source>, <destination>, and <range> arguments are required,
> so do not mark them as optional (with the square brackets).
> Also, trim the redundant lines about the source and destination
> files, improve the explanation for the <range> argument, and
> keep the text within 80 columns.
> 
> Furthermore, list the short options first (as is custom), and
> match the indentaion of the -h and -V options to the others.
> 
> CC: Dick Marinus <dick@mrns.nl>
> Signed-off-by: Benno Schulenberg <bensberg@telfort.nl>
> ---
>  misc-utils/copyfilerange.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/misc-utils/copyfilerange.c b/misc-utils/copyfilerange.c
> index 20f0373bd..a72c81cd1 100644
> --- a/misc-utils/copyfilerange.c
> +++ b/misc-utils/copyfilerange.c
> @@ -55,25 +55,23 @@ static void __attribute__((__noreturn__)) usage(void)
>  	FILE *out = stdout;
>  	fputs(USAGE_HEADER, out);
>  	fprintf(out,
> -		_(" %1$s [options] [<source>] [<destination>] [<range>...]\n"),
> +		_(" %1$s [options] <source> <destination> <range>...\n"),
>  		program_invocation_short_name);
>  
>  	fputs(USAGE_SEPARATOR, out);
> -	fputsln(_("Copy file ranges from source to destination file."), out);
> +	fputsln(_("Copy the specified range(s) from source to destination file."), out);
>  
>  	fputs(USAGE_SEPARATOR, out);
> -	fputsln(_(" source                      source filename"), out);
> -	fputsln(_(" destination                 destination filename"), out);
> -	fputsln(_(" range                       source_offset:dest_offset:length, all values are in bytes"), out);
> -	fputsln(_("                             if length is set to 0 as much as available will be copied"), out);
> -	fputsln(_("                             when the offset is omitted the last file position is used"), out);
> +	fputsln(_("Each <range> is of the form <source_offset>:<destination_offset>:<length>,\n"
> +	          "with all values in bytes. If <length> is 0, as much data as available will\n"
> +	          "be copied. When an offset is omitted, the last file position is used."), out);

Hmm... for this purpose, we already have the USAGE_ARGUMENTS section
(usually after the OPTIONS section).

What about:

    fputs(USAGE_ARGUMENTS, out);
    fputsln(_(" <range> is of the form <source_offset>:<destination_offset>:<length>,\n"
              " with all values in bytes. If <length> is 0, as much data as available will\n"
              " be copied. When an offset is omitted, the last file position is used."), out);

  Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


