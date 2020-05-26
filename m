Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF8061AD183
	for <lists+util-linux@lfdr.de>; Thu, 16 Apr 2020 22:52:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727775AbgDPUwR (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Thu, 16 Apr 2020 16:52:17 -0400
Received: from out03.mta.xmission.com ([166.70.13.233]:44442 "EHLO
        out03.mta.xmission.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726725AbgDPUwQ (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Thu, 16 Apr 2020 16:52:16 -0400
Received: from in02.mta.xmission.com ([166.70.13.52])
        by out03.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.90_1)
        (envelope-from <ebiederm@xmission.com>)
        id 1jPBUc-000546-Ji; Thu, 16 Apr 2020 14:52:14 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95] helo=x220.xmission.com)
        by in02.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1jPBUb-0004fi-G5; Thu, 16 Apr 2020 14:52:14 -0600
From:   ebiederm@xmission.com (Eric W. Biederman)
To:     michael-dev@fami-braun.de
Cc:     util-linux@vger.kernel.org
References: <20200415211653.5455-1-michael-dev@fami-braun.de>
Date:   Thu, 16 Apr 2020 15:49:14 -0500
In-Reply-To: <20200415211653.5455-1-michael-dev@fami-braun.de> (michael-dev's
        message of "Wed, 15 Apr 2020 23:16:53 +0200")
Message-ID: <87o8rrdulx.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-SPF: eid=1jPBUb-0004fi-G5;;;mid=<87o8rrdulx.fsf@x220.int.ebiederm.org>;;;hst=in02.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1+7TLsXmH05nD4eJAE/2GkYC+QMV13jz74=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
        DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG autolearn=disabled
        version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4997]
        *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
        * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
        *      [sa06 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa06 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;michael-dev@fami-braun.de
X-Spam-Relay-Country: 
X-Spam-Timing: total 625 ms - load_scoreonly_sql: 0.05 (0.0%),
        signal_user_changed: 12 (2.0%), b_tie_ro: 11 (1.8%), parse: 1.52
        (0.2%), extract_message_metadata: 20 (3.1%), get_uri_detail_list: 3.9
        (0.6%), tests_pri_-1000: 4.5 (0.7%), tests_pri_-950: 1.21 (0.2%),
        tests_pri_-900: 1.00 (0.2%), tests_pri_-90: 103 (16.4%), check_bayes:
        101 (16.1%), b_tokenize: 15 (2.4%), b_tok_get_all: 6 (1.0%),
        b_comp_prob: 2.1 (0.3%), b_tok_touch_all: 74 (11.9%), b_finish: 0.92
        (0.1%), tests_pri_0: 350 (56.0%), check_dkim_signature: 0.86 (0.1%),
        check_dkim_adsp: 2.6 (0.4%), poll_dns_idle: 107 (17.2%), tests_pri_10:
        2.1 (0.3%), tests_pri_500: 126 (20.1%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH] Fix PID namespace persistence
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

michael-dev@fami-braun.de writes:

> From: michael-dev <michael-dev@fami-braun.de>
>
> After unshare(...) is called, /proc/self/ns/pid does not change.
> Instead, only /proc/self/ns/pid_for_children is affected. So bind-mounting /proc/self/ns/pid results in the original namespace getting bind-mounted.
>
> Fix this by instead bind-mounting ns/pid_for_children.

Why all of the extra code motion and change?

Your description sounds like only the first hunk is necessary.  Did
something else get mixed into this change?  Or are all of the hunks
necessary?

Eric


> Signed-off-by: Michael Braun <michael-dev@fami-braun.de>
> ---
>  sys-utils/unshare.c | 66 ++++++++++++++++++++++++++-------------------
>  1 file changed, 38 insertions(+), 28 deletions(-)
>
> diff --git a/sys-utils/unshare.c b/sys-utils/unshare.c
> index 8652ebdaf..c3ba18e32 100644
> --- a/sys-utils/unshare.c
> +++ b/sys-utils/unshare.c
> @@ -63,7 +63,7 @@ static struct namespace_file {
>  	{ .type = CLONE_NEWIPC,   .name = "ns/ipc"  },
>  	{ .type = CLONE_NEWUTS,   .name = "ns/uts"  },
>  	{ .type = CLONE_NEWNET,   .name = "ns/net"  },
> -	{ .type = CLONE_NEWPID,   .name = "ns/pid"  },
> +	{ .type = CLONE_NEWPID,   .name = "ns/pid_for_children"  },
>  	{ .type = CLONE_NEWNS,    .name = "ns/mnt"  },
>  	{ .type = CLONE_NEWTIME,  .name = "ns/time"  },
>  	{ .name = NULL }
> @@ -361,6 +361,7 @@ int main(int argc, char *argv[])
>  	const char *procmnt = NULL;
>  	const char *newroot = NULL;
>  	const char *newdir = NULL;
> +	pid_t pid_bind = 0;
>  	pid_t pid = 0;
>  	int fds[2];
>  	int status;
> @@ -501,13 +502,37 @@ int main(int argc, char *argv[])
>  			"unsharing of a time namespace (-t)"));
>  
>  	if (npersists && (unshare_flags & CLONE_NEWNS))
> -		bind_ns_files_from_child(&pid, fds);
> +		bind_ns_files_from_child(&pid_bind, fds);
>  
>  	if (-1 == unshare(unshare_flags))
>  		err(EXIT_FAILURE, _("unshare failed"));
>  
> -	if (npersists) {
> -		if (pid && (unshare_flags & CLONE_NEWNS)) {
> +	if (force_boottime)
> +		settime(boottime, CLOCK_BOOTTIME);
> +
> +	if (force_monotonic)
> +		settime(monotonic, CLOCK_MONOTONIC);
> +
> +	if (forkit) {
> +		// force child forking before mountspace binding
> +		// so pid_for_children is populated
> +		pid = fork();
> +
> +		switch(pid) {
> +		case -1:
> +			err(EXIT_FAILURE, _("fork failed"));
> +		case 0:	/* child */
> +			if (pid_bind && (unshare_flags & CLONE_NEWNS))
> +				close(fds[1]);
> +			break;
> +		default: /* parent */
> +      break;
> +		}
> +	}
> +
> +	if (npersists && (pid || !forkit)) {
> +		// run in parent
> +		if (pid_bind && (unshare_flags & CLONE_NEWNS)) {
>  			int rc;
>  			char ch = PIPE_SYNC_BYTE;
>  
> @@ -518,7 +543,7 @@ int main(int argc, char *argv[])
>  
>  			/* wait for bind_ns_files_from_child() */
>  			do {
> -				rc = waitpid(pid, &status, 0);
> +				rc = waitpid(pid_bind, &status, 0);
>  				if (rc < 0) {
>  					if (errno == EINTR)
>  						continue;
> @@ -533,29 +558,14 @@ int main(int argc, char *argv[])
>  			bind_ns_files(getpid());
>  	}
>  
> -	if (force_boottime)
> -		settime(boottime, CLOCK_BOOTTIME);
> -
> -	if (force_monotonic)
> -		settime(monotonic, CLOCK_MONOTONIC);
> -
> -	if (forkit) {
> -		pid = fork();
> -
> -		switch(pid) {
> -		case -1:
> -			err(EXIT_FAILURE, _("fork failed"));
> -		case 0:	/* child */
> -			break;
> -		default: /* parent */
> -			if (waitpid(pid, &status, 0) == -1)
> -				err(EXIT_FAILURE, _("waitpid failed"));
> -			if (WIFEXITED(status))
> -				return WEXITSTATUS(status);
> -			else if (WIFSIGNALED(status))
> -				kill(getpid(), WTERMSIG(status));
> -			err(EXIT_FAILURE, _("child exit failed"));
> -		}
> +	if (pid) {
> +		if (waitpid(pid, &status, 0) == -1)
> +			err(EXIT_FAILURE, _("waitpid failed"));
> +		if (WIFEXITED(status))
> +			return WEXITSTATUS(status);
> +		else if (WIFSIGNALED(status))
> +			kill(getpid(), WTERMSIG(status));
> +		err(EXIT_FAILURE, _("child exit failed"));
>  	}
>  
>  	if (kill_child_signo != 0 && prctl(PR_SET_PDEATHSIG, kill_child_signo) < 0)
