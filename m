Return-Path: <util-linux+bounces-1113-lists+util-linux=lfdr.de@vger.kernel.org>
Delivered-To: lists+util-linux@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA25In57wmnqdAQAu9opvQ
	(envelope-from <util-linux+bounces-1113-lists+util-linux=lfdr.de@vger.kernel.org>)
	for <lists+util-linux@lfdr.de>; Tue, 24 Mar 2026 12:54:38 +0100
X-Original-To: lists+util-linux@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04251307B11
	for <lists+util-linux@lfdr.de>; Tue, 24 Mar 2026 12:54:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55A38300828A
	for <lists+util-linux@lfdr.de>; Tue, 24 Mar 2026 11:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301013EFD10;
	Tue, 24 Mar 2026 11:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WGUMz/Pv"
X-Original-To: util-linux@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34673F0A9F
	for <util-linux@vger.kernel.org>; Tue, 24 Mar 2026 11:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774352558; cv=none; b=KPtCwRfbztjQztZyO77XbDECLX64V/67ZuBxZUdlNoim+cjXZXTGgVLAuIHL7pqRF8QXyGo4mcFahrox8RgG7vOa7BlrYir5JPQbqMrNIob4Q61ntmpYRxnXPqsw6ahbim612yUHdRXg4LgiZxDDqMGcUU0wZO5MsXf39C4PLgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774352558; c=relaxed/simple;
	bh=5dbg16gdYN9SXOnEJBTSdGPi1kdmYu1kYb9YpiREDZc=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rZdKp0ueYN2PEVCtZiLjOys3rqpmxzwnQko5HWfYAZIxjlGCSU9e215WCgiAvr/Su1OGJDLoYDrdElyFNEZmdu3I0m3kLl9eeZvSHg34ermbW4PwEqJ0KX+8JpvV9GnDAEqfoGuNM3BbsvlODbGOqANzwEdiYrxSeMFlIOcXjcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WGUMz/Pv; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1774352555;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=+eorVCzALpG42j0MxHWuKDcTTUPuOninGLiRtuDPzqs=;
	b=WGUMz/Pvwr7Wxr7feRs4klmneIGGY8EGp51m3N9epue/W+R2LU4SEb9RVTGtpYWw4f9tkH
	hIW2vCNBc2BV4Zaz6M1mPRN0LUHhGmEr3bO/Rt/y8K5D9mBcoXhUZqLBV86ojR0pldqrtu
	F2AGpw0OIONlOy1awutXyQww6uAx+h8=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-43-SN2PQU5cO1mPAXAIV9erQA-1; Tue,
 24 Mar 2026 07:42:33 -0400
X-MC-Unique: SN2PQU5cO1mPAXAIV9erQA-1
X-Mimecast-MFC-AGG-ID: SN2PQU5cO1mPAXAIV9erQA_1774352553
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1081118002C8
	for <util-linux@vger.kernel.org>; Tue, 24 Mar 2026 11:42:33 +0000 (UTC)
Received: from ws (unknown [10.45.224.36])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3BCF7300019F
	for <util-linux@vger.kernel.org>; Tue, 24 Mar 2026 11:42:31 +0000 (UTC)
Date: Tue, 24 Mar 2026 12:42:27 +0100
From: Karel Zak <kzak@redhat.com>
To: util-linux@vger.kernel.org
Subject: [ANNOUNCE] util-linux v2.42-rc2
Message-ID: <55hhjmbknra3y7t5gqu6cda4npzgbtvatw6vk756kh4wwgc4fr@ynsoqxzsuowy>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1113-lists,util-linux=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kzak@redhat.com,util-linux@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[util-linux];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Queue-Id: 04251307B11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


  The util-linux release v2.42-rc2 is now available at

    http://www.kernel.org/pub/linux/utils/util-linux/v2.42

  Feedback and bug reports, as always, are welcomed.

    Karel

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


