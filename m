Return-Path: <util-linux+bounces-822-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF132B03D63
	for <lists+util-linux@lfdr.de>; Mon, 14 Jul 2025 13:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 160183BCD0C
	for <lists+util-linux@lfdr.de>; Mon, 14 Jul 2025 11:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7FC1531C8;
	Mon, 14 Jul 2025 11:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GaAkfzZJ"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC85E80B
	for <util-linux@vger.kernel.org>; Mon, 14 Jul 2025 11:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752492544; cv=none; b=RKyMWIn7F9lnH3uNO6PVOfhsDSvG1DHMvo7pLWZfEW6JSkN38Mepu0+G8dvRVlHDkvkUNG2Wiz6TvgnTEcJiYVYsa6fjbMAubWWzk9m6unEQb8EJWSB65d4TfzxrIiaNVsUKQIiWJjngStGOpX0O239R/YtyUYbKlv40p+al7uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752492544; c=relaxed/simple;
	bh=o+7kc0UR4HscHwHMLRnrCD7z8khB+5NCpxGP0WzZfCI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ctC2pfhdpZFnTh1hoAzP5ABG7hOXc5+UUORpTdLAESVFtKQKvRfvgO75Zyouzd6fXe94SAPymFXOWCV2cc2/FnOCOsncmTYFPJ1YXf21LwC38XTSvYaFjMiInVJTSQZtlkMD/Lh679u4bMcju8bLQ+PVCMRM795K3h1sBc+Um9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GaAkfzZJ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752492541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EPAXOenYsho+ygofJ72pZmDOM9wttlTmcanq5h7wZhA=;
	b=GaAkfzZJ565s4TFXGrnoElQvkh9jkOyvoFh0yGy51V17HrBW/4UoeH8DYEqJruZdbnKBRE
	ZXMf0MKn4R89woDvq1iZNmoRaLKIZZtuJilE6KxmTJILHCT8U009I9gINecei7cl11+cjd
	deS5DhH1Lkim9+1Q8l8EFJJLf6W9k2s=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-651-aOMdHRVJPR-iF7ylTns6QA-1; Mon,
 14 Jul 2025 07:28:58 -0400
X-MC-Unique: aOMdHRVJPR-iF7ylTns6QA-1
X-Mimecast-MFC-AGG-ID: aOMdHRVJPR-iF7ylTns6QA_1752492537
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 637E618001D1;
	Mon, 14 Jul 2025 11:28:57 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.225])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2ECF218002B5;
	Mon, 14 Jul 2025 11:28:55 +0000 (UTC)
Date: Mon, 14 Jul 2025 13:28:52 +0200
From: Karel Zak <kzak@redhat.com>
To: Madadi Vineeth Reddy <vineethr@linux.ibm.com>
Cc: Benno Schulenberg <bensberg@telfort.nl>, util-linux@vger.kernel.org
Subject: Re: [PATCH 4/4 V2] chrt: do not try to interpret any other option as
 a PID either
Message-ID: <ceu2o6v4tz6g2hvt7olpg2v2viomyv22xm2jgodv4h4rzr4x3m@pmunyjscofn5>
References: <20250703144752.29971-1-bensberg@telfort.nl>
 <20250703144752.29971-4-bensberg@telfort.nl>
 <547205fc-ae34-4ac4-a7d9-d32e65b5c3cb@linux.ibm.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <547205fc-ae34-4ac4-a7d9-d32e65b5c3cb@linux.ibm.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

On Sun, Jul 06, 2025 at 11:39:44AM +0530, Madadi Vineeth Reddy wrote:
> On 03/07/25 20:17, Benno Schulenberg wrote:
> > When doing, for example, `chrt --pid --max`, it would report:
> > 
> >   chrt: invalid PID argument: '--max'
> > 
> > This mistakenly gave the impression that the PID argument has to follow
> > directly after the --pid option.
> > 
> > Avoid this by delaying the parsing of a PID until after all options have
> > been parsed.  Temporarily set 'ctl->pid' to zero to indicate that a PID
> > needs to be read.
> > 
> > After this change, `chrt --pid --max` will simply report the minimum and
> > maximum valid priorities.  And `chrt --pid -v`:
> 
> According to help text,
> chrt [options] --pid <priority> <pid>
> 
> I’m still not sure about allowing the --max option after --pid.
> I’ll leave it to Karel to decide what’s best here.

My point of view (may be wrong, sched-utils CLI is odd). The core of  
the chrt command line can be described as:

   chrt <options> [<prio>] <process>

where <process> is

    1) new process by exec()
    2) already running process

The default is 1), --pid enables the 2) and in this case  
<process> is PID.

The --pid is just an option to switch between the cases. There is no  
argument for the option; it informs how to interpret the <process>.

The ideal would be to use "--" before <process>.

It means that arbitrary options could be after --pid, including --max.

Does it make sense?

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


