Return-Path: <util-linux+bounces-162-lists+util-linux=lfdr.de@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DA989CD4E
	for <lists+util-linux@lfdr.de>; Mon,  8 Apr 2024 23:17:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C5611F21C67
	for <lists+util-linux@lfdr.de>; Mon,  8 Apr 2024 21:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70AF5147C6B;
	Mon,  8 Apr 2024 21:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raymakers.nl header.i=@raymakers.nl header.b="JfTbEeev"
X-Original-To: util-linux@vger.kernel.org
Received: from outbound.soverin.net (outbound.soverin.net [185.233.34.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3FE7482
	for <util-linux@vger.kernel.org>; Mon,  8 Apr 2024 21:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.233.34.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712611046; cv=none; b=a2wq5bW/9Xue47deC+izEJOzYYJEWIpiQ7hJ1iajorXqo2LswJ0phg653+uvuiKp2s+LhMVE1j4loQp67Z5Aa0qr85LW0PCmDDNxYj82Sxd35KAOZFB6DLUPIwaasujuFVQUbwfa1XZLanTcomgLU5p/7EobvskiPI6pHXxYR4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712611046; c=relaxed/simple;
	bh=+LqyXEkiW5cZnSh6s7RWm+SIDQi6YmPYPzo1xl6bFdg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BL0nL7OcJnk4SfyqIgsXVGMoq/ECw50TqN7sdIOJn569syom5zlj4aGdvJqMRDMUiy/3zIQD+1IqYWhqdkVI1YpNF0DJ8jTvKlY1FdTXDYcrwSxGhKj5VaPtg7KiajtCOKQdf4CN/28OrEooAyjMM5d6469X+iNhtVsmnL99ACs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raymakers.nl; spf=pass smtp.mailfrom=raymakers.nl; dkim=pass (2048-bit key) header.d=raymakers.nl header.i=@raymakers.nl header.b=JfTbEeev; arc=none smtp.client-ip=185.233.34.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raymakers.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raymakers.nl
Received: from smtp.soverin.net (c04cst-smtp-sov02.int.sover.in [10.10.4.100])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by outbound.soverin.net (Postfix) with ESMTPS id 4VD23W5K8cz3p;
	Mon,  8 Apr 2024 21:17:11 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [10.10.4.100]) by soverin.net (Postfix) with ESMTPSA id 4VD23W0lhZzNr;
	Mon,  8 Apr 2024 21:17:11 +0000 (UTC)
Authentication-Results: smtp.soverin.net;
	dkim=pass (2048-bit key; unprotected) header.d=raymakers.nl header.i=@raymakers.nl header.a=rsa-sha256 header.s=soverin1 header.b=JfTbEeev;
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raymakers.nl;
	s=soverin1; t=1712611031;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JK4iV4R1mzBrL2A5p7EwY6B2c5kgrOSWZ8hP5nqKx/Y=;
	b=JfTbEeevFVlmv87E0It1t285Wu00v+Tet0Q510yWNjlyFjVN+ZlpXnbmGaBjFUH7zMImIp
	1kGruZWFu/TzlyZ8qmtic0AxGuCVn+5M9z+8qWJwqAvNyqWBqGMxDaS2WGt9Zf7esrKkjI
	A+9aM7p6AGKB7waKmVHOwL6PRRh1LQfcLFod1KIMjfToHrSatLdiK1nnLmPX1V1y1WC0at
	enmU656PeOd2ve7hfPGzQrCCsh0nvUJlMKkAYsbvsxz0RIgUUY7HYqNuENwdZ9A5hyl2YU
	n8DvuAsuFslfSoD49Z3C/kgto/j0ho1B9VY4PBFjsFMi0XTCNBFu91wuAfWesg==
From: Thijs Raymakers <thijs@raymakers.nl>
To: thomas@t-8ch.de,
	pauld@redhat.com
Cc: kzak@redhat.com,
	util-linux@vger.kernel.org,
	Thijs Raymakers <thijs@raymakers.nl>
Subject: [PATCH v5] coresched: Manage core scheduling cookies for tasks
Date: Mon,  8 Apr 2024 23:16:54 +0200
Message-ID: <20240408211655.124186-1-thijs@raymakers.nl>
In-Reply-To: <20240405141407.GA224852@lorien.usersys.redhat.com>
References: <20240405141407.GA224852@lorien.usersys.redhat.com>
Precedence: bulk
X-Mailing-List: util-linux@vger.kernel.org
List-Id: <util-linux.vger.kernel.org>
List-Subscribe: <mailto:util-linux+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:util-linux+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Co-authored-by: Phil Auld <pauld@redhat.com>
Signed-off-by: Thijs Raymakers <thijs@raymakers.nl>
Signed-off-by: Phil Auld <pauld@redhat.com>
---

Hi Thomas and Phil,

Op 05-04-2024 om 4:14 p.m. schreef Phil Auld:
> On Fri, Apr 05, 2024 at 08:26:08AM +0200 Thomas Weißschuh wrote:
>> On 2024-04-05 00:03:57+0200, Thijs Raymakers wrote:
>>> Therefore, I've changed to code to explicitly check for kernel support
>>> beforehand. This change also removes the need for the `check_prctl`
>>> macro.
>>
>> Thanks, would it make sense to expose this check via the CLI?
>> That could then used by the tests to skip themselves if the system does
>> not provide core scheduling on old kernels or qemu-user.
>>
> 
> I don't think so. It's checking by doing an operation so just do a "get"
> if you really want to check first. An explicit check would just be that
> anyway. 

I agree with Phil, I don't think it would be necessary. I've added the check
to the tests that allows them to be skipped if core scheduling is not
available (such as on older kernels like you mentioned). This check just 
runs `coresched`, which will do the check implicitly.

Op 05-04-2024 om 8:26 a.m. schreef Thomas Weißschuh:
> General codestyle is to leave out braces around single-statement blocks.
> (I mentioned this before, if you want to keep them please mention it)

Ah, I guess something went wrong there on my side. I have changed the braces
where applicable. 

(as a sidenote, I personally try to avoid leaving out the braces around
single-statement blocks, since it makes it slightly easier to introduce
logic bugs like the infamous goto fail bug from 2014)

Op 05-04-2024 om 8:26 a.m. schreef Thomas Weißschuh:
> These can be plain strcmp().

Changed!

Op 05-04-2024 om 4:14 p.m. schreef Phil Auld:
> On Fri, Apr 05, 2024 at 08:26:08AM +0200 Thomas Weißschuh wrote:
>> On 2024-04-05 00:03:57+0200, Thijs Raymakers wrote:
>>> +	if (!is_core_sched_supported()) {
>>> +		errx(ENOTSUP, _("Does your kernel support CONFIG_SCHED_CORE?"));
>>
>> Afaik errnos are not guaranteed to have the same numeric value
>> everywhere. If you want to signal something special, use your own
>> constant (and document it in the manpage).
>
> I don't think we should make up an errno but use one that already exists.
> 
> If not ENOPTSUP we can just leave it as EINVAL I suppose. That should be
> the same everywhere. 

I don't think there is a reason to differentiate the error code
between "failing because the kernel doesn't support it" and "any other
fatal failure". I've changed it to just return EXIT_FAILURE (1) in case
there is no support, since all other errors do that as well. The
displayed error message can be used to differentiate the errors.

Op 05-04-2024 om 8:26 a.m. schreef Thomas Weißschuh:
> On 2024-04-05 00:03:57+0200, Thijs Raymakers wrote:
>> +			if (cookie) {
>> +				printf(_("%s: cookie of pid %d is 0x%lx\n"),
>> +				       program_invocation_short_name, args.pid,
>> +				       cookie);
> program_invocation_short_name seems unnecessary.

Fair point, I've removed it.

Op 05-04-2024 om 4:14 p.m. schreef Phil Auld:
>Op 05-04-2024 om 8:26 a.m. schreef Thomas Weißschuh:
>> On 2024-04-05 00:03:57+0200, Thijs Raymakers wrote:
>>> +			} else {
>>> +				errx(ENODATA,
>>> +				     _("pid %d doesn't have a core scheduling cookie"),
>>> +				     args.pid);
>>
>> Is this really a failure case?
>> I would make the print only on --verbose and otherwise succeed without
>> output.
>
> Agree. This is not an error. 

I've merged the two cases into one. A core scheduling cookie of 0 is
indeed not an error, as it is still a valid value.

Op 05-04-2024 om 8:26 a.m. schreef Thomas Weißschuh:
> On 2024-04-05 00:03:57+0200, Thijs Raymakers wrote:
>> +			}
>> +		} else {
>> +			usage();
> Why not print the current cookie here?

I initially wrote it like this to make it more obvious what the command
does on first use because it will just show the help page, and thus saves
you from typing "coresched -h".

However, I do realise that this design makes it more inconvenient
to get the current cookie. To get the cookie of the current process you
now need to do something like "coresched -p $$", which isn't very
intuitive to use.
This has been changed and "coresched" will now print the cookie
of the current process.

Op 05-04-2024 om 8:26 a.m. schreef Thomas Weißschuh:
> On 2024-04-05 00:03:57+0200, Thijs Raymakers wrote:
>> +$TS_CMD_CORESCHED -p $$ 3>&2 2>&1 1>&3 | sed "s/$$/OWN_PID/g" >> "$TS_OUTPUT"
>
> This test fails if the process starting it already has a cookie set.
> Also in that case the output is printed past the redirections.

Indeed, this test does fail if the process does already have a cookie.
Since there is no way to clear the cookie of the process, this test
doesn't make a lot of sense anyway. I've removed it.

Op 05-04-2024 om 8:26 a.m. schreef Thomas Weißschuh:
> On 2024-04-05 00:03:57+0200, Thijs Raymakers wrote:
>> +$TS_CMD_CORESCHED -n -- /bin/bash -c "$TS_CMD_CORESCHED -p \$\$" \
>
> When coresched without arguments prints the current value this bash
> trickery can be removed.

I've removed it from the spawn-child-with-new-cookie test.

I want to thank you both the comments, an interdiff with changes compared
to the the previous version is listed below.

Thijs


Interdiff against v4:
  diff --git a/schedutils/coresched.1.adoc b/schedutils/coresched.1.adoc
  index 34bc352a8..c83fcdf91 100644
  --- a/schedutils/coresched.1.adoc
  +++ b/schedutils/coresched.1.adoc
  @@ -37,7 +37,7 @@ Assign a new cookie to an existing PID or to execute _command_ with a new cookie
   *-c*, *--copy*::
   Copy the cookie from an existing PID to another PID, or execute _command_ with that copied cookie.
   
  -If no function is specified, it will retrieve and print the cookie of a task.
  +If no function is specified, it will print the cookie of the current task, or of the task specified with the *-p* option.
   
   == OPTIONS
   *-p*, *--pid* _PID_::
  @@ -62,6 +62,9 @@ Display help text and exit.
   Print version and exit.
   
   == EXAMPLES
  +Get the core scheduling cookie of the {command} task itself, usually inherited from its parent{colon}::
  +*{command}*
  +
   Get the core scheduling cookie of a task with PID _123_{colon}::
   *{command} -p* _123_
   
  @@ -87,7 +90,12 @@ See the section "Ptrace access mode checking" in *ptrace*(2) for more informatio
   == RETURN VALUE
   On success, *{command}* returns 0.
   If *{command}* fails, it will print an error and return 1.
  -If core scheduling is not supported with your kernel (e.g. because *CONFIG_SCHED_CORE*=n), then it will return 95 (*ENOTSUP*).
  +
  +If a _command_ is being executed, the return value of *{command}* will be the return value of _command_.
  +
  +== NOTES
  +*{command}* requires core scheduling support in the kernel.
  +This can be enabled via the *CONFIG_SCHED_CORE* kernel config option.
   
   == AUTHORS
   mailto:thijs@raymakers.nl[Thijs Raymakers],
  diff --git a/schedutils/coresched.c b/schedutils/coresched.c
  index 3d9392b1a..03b50cd5e 100644
  --- a/schedutils/coresched.c
  +++ b/schedutils/coresched.c
  @@ -112,40 +112,38 @@ static void __attribute__((__noreturn__)) usage(void)
   	exit(EXIT_SUCCESS);
   }
   
  -#define bad_usage(FMT...) \
  -	warnx(FMT);       \
  -	errtryhelp(EXIT_FAILURE);
  +#define bad_usage(FMT...)                 \
  +	do {                              \
  +		warnx(FMT);               \
  +		errtryhelp(EXIT_FAILURE); \
  +	} while (0)
   
   static sched_core_cookie core_sched_get_cookie(pid_t pid)
   {
   	sched_core_cookie cookie = 0;
   	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_GET, pid,
  -		  PR_SCHED_CORE_SCOPE_THREAD, &cookie)) {
  +		  PR_SCHED_CORE_SCOPE_THREAD, &cookie))
   		err(EXIT_FAILURE, _("Failed to get cookie from PID %d"), pid);
  -	}
   	return cookie;
   }
   
   static void core_sched_create_cookie(pid_t pid, sched_core_scope type)
   {
  -	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_CREATE, pid, type, 0)) {
  +	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_CREATE, pid, type, 0))
   		err(EXIT_FAILURE, _("Failed to create cookie for PID %d"), pid);
  -	}
   }
   
   static void core_sched_pull_cookie(pid_t from)
   {
   	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_SHARE_FROM, from,
  -		  PR_SCHED_CORE_SCOPE_THREAD, 0)) {
  +		  PR_SCHED_CORE_SCOPE_THREAD, 0))
   		err(EXIT_FAILURE, _("Failed to pull cookie from PID %d"), from);
  -	}
   }
   
   static void core_sched_push_cookie(pid_t to, sched_core_scope type)
   {
  -	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_SHARE_TO, to, type, 0)) {
  +	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_SHARE_TO, to, type, 0))
   		err(EXIT_FAILURE, _("Failed to push cookie to PID %d"), to);
  -	}
   }
   
   static void core_sched_copy_cookie(pid_t from, pid_t to,
  @@ -191,9 +189,8 @@ static void core_sched_exec_with_cookie(struct args *args, char **argv)
   		core_sched_get_and_print_cookie(pid);
   	}
   
  -	if (execvp(argv[0], argv)) {
  +	if (execvp(argv[0], argv))
   		errexec(argv[0]);
  -	}
   }
   
   // If PR_SCHED_CORE is not recognized, or not supported on this system,
  @@ -204,21 +201,20 @@ static bool is_core_sched_supported(void)
   {
   	sched_core_cookie cookie = 0;
   	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_GET, getpid(),
  -		  PR_SCHED_CORE_SCOPE_THREAD, &cookie)) {
  -		if (errno == EINVAL) {
  +		  PR_SCHED_CORE_SCOPE_THREAD, &cookie))
  +		if (errno == EINVAL)
   			return false;
  -		}
  -	}
  +
   	return true;
   }
   
   static sched_core_scope parse_core_sched_type(char *str)
   {
  -	if (!strncmp(str, "pid", 4))
  +	if (!strcmp(str, "pid"))
   		return PR_SCHED_CORE_SCOPE_THREAD;
  -	else if (!strncmp(str, "tgid", 5))
  +	else if (!strcmp(str, "tgid"))
   		return PR_SCHED_CORE_SCOPE_THREAD_GROUP;
  -	else if (!strncmp(str, "pgid", 5))
  +	else if (!strcmp(str, "pgid"))
   		return PR_SCHED_CORE_SCOPE_PROCESS_GROUP;
   
   	bad_usage(_("'%s' is an invalid option. Must be one of pid/tgid/pgid"),
  @@ -281,9 +277,8 @@ static void parse_arguments(int argc, char **argv, struct args *args)
   		}
   	}
   
  -	if (args->cmd == SCHED_CORE_CMD_COPY && !args->pid) {
  +	if (args->cmd == SCHED_CORE_CMD_COPY && !args->pid)
   		bad_usage(_("--copy: requires a -p/--pid"));
  -	}
   
   	// More arguments have been passed, which means that the user wants to run
   	// another program with a core scheduling cookie.
  @@ -293,34 +288,30 @@ static void parse_arguments(int argc, char **argv, struct args *args)
   			bad_usage(_("Unknown command"));
   			break;
   		case SCHED_CORE_CMD_NEW:
  -			if (args->pid) {
  +			if (args->pid)
   				bad_usage(_(
   					"--new: cannot accept both a -p/--pid and a command"));
  -			} else {
  +			else
   				args->exec_argv_offset = optind;
  -			}
   			break;
   		case SCHED_CORE_CMD_COPY:
  -			if (args->dest) {
  +			if (args->dest)
   				bad_usage(_(
   					"--copy: cannot accept both a destination PID "
  -					"-d/--dest and a command"))
  -			} else {
  +					"-d/--dest and a command"));
  +			else
   				args->exec_argv_offset = optind;
  -			}
   			break;
   		}
   	}
   
   	if (argc <= optind) {
  -		if (args->cmd == SCHED_CORE_CMD_NEW && !args->pid) {
  +		if (args->cmd == SCHED_CORE_CMD_NEW && !args->pid)
   			bad_usage(_(
   				"--new: requires either a -p/--pid or a command"));
  -		}
  -		if (args->cmd == SCHED_CORE_CMD_COPY && !args->dest) {
  +		if (args->cmd == SCHED_CORE_CMD_COPY && !args->dest)
   			bad_usage(_(
   				"--copy: requires either a -d/--dest or a command"));
  -		}
   	}
   }
   
  @@ -337,28 +328,18 @@ int main(int argc, char **argv)
   
   	parse_arguments(argc, argv, &args);
   
  -	if (!is_core_sched_supported()) {
  -		errx(ENOTSUP, _("Does your kernel support CONFIG_SCHED_CORE?"));
  -	}
  +	if (!is_core_sched_supported())
  +		errx(EXIT_FAILURE,
  +		     _("Does your kernel support CONFIG_SCHED_CORE?"));
   
   	sched_core_cookie cookie;
  +	pid_t pid;
   
   	switch (args.cmd) {
   	case SCHED_CORE_CMD_GET:
  -		if (args.pid) {
  -			cookie = core_sched_get_cookie(args.pid);
  -			if (cookie) {
  -				printf(_("%s: cookie of pid %d is 0x%lx\n"),
  -				       program_invocation_short_name, args.pid,
  -				       cookie);
  -			} else {
  -				errx(ENODATA,
  -				     _("pid %d doesn't have a core scheduling cookie"),
  -				     args.pid);
  -			}
  -		} else {
  -			usage();
  -		}
  +		pid = args.pid ? args.pid : getpid();
  +		cookie = core_sched_get_cookie(pid);
  +		printf(_("cookie of pid %d is 0x%lx\n"), pid, cookie);
   		break;
   	case SCHED_CORE_CMD_NEW:
   		if (args.pid) {
  diff --git a/tests/expected/schedutils/coresched-change-cookie-of-parent b/tests/expected/schedutils/coresched-change-cookie-of-parent
  index 97ab7ea23..d08118c02 100644
  --- a/tests/expected/schedutils/coresched-change-cookie-of-parent
  +++ b/tests/expected/schedutils/coresched-change-cookie-of-parent
  @@ -1 +1 @@
  -coresched: cookie of pid OWN_PID is DIFFERENT_COOKIE
  +cookie of pid OWN_PID is DIFFERENT_COOKIE
  diff --git a/tests/expected/schedutils/coresched-get-own-pid-no-cookie b/tests/expected/schedutils/coresched-get-own-pid-no-cookie
  deleted file mode 100644
  index 7f64a98b3..000000000
  --- a/tests/expected/schedutils/coresched-get-own-pid-no-cookie
  +++ /dev/null
  @@ -1 +0,0 @@
  -coresched: pid OWN_PID doesn't have a core scheduling cookie
  diff --git a/tests/expected/schedutils/coresched-get-own-pid-with-cookie b/tests/expected/schedutils/coresched-get-own-pid-with-cookie
  index 556e31a65..3d7f08040 100644
  --- a/tests/expected/schedutils/coresched-get-own-pid-with-cookie
  +++ b/tests/expected/schedutils/coresched-get-own-pid-with-cookie
  @@ -1 +1 @@
  -coresched: cookie of pid OWN_PID is COOKIE
  +cookie of pid OWN_PID is COOKIE
  diff --git a/tests/expected/schedutils/coresched-set-cookie-own-pid b/tests/expected/schedutils/coresched-set-cookie-own-pid.err
  similarity index 100%
  rename from tests/expected/schedutils/coresched-set-cookie-own-pid
  rename to tests/expected/schedutils/coresched-set-cookie-own-pid.err
  diff --git a/tests/ts/schedutils/coresched b/tests/ts/schedutils/coresched
  index 5381a56f2..ed96d89de 100755
  --- a/tests/ts/schedutils/coresched
  +++ b/tests/ts/schedutils/coresched
  @@ -13,6 +13,14 @@ TS_DESC="coresched"
   ts_init "$*"
   
   ts_check_test_command "$TS_CMD_CORESCHED"
  +ts_check_test_command "tee"
  +ts_check_test_command "sed"
  +
  +# If there is no kernel support, skip the test suite
  +CORESCHED_TEST_KERNEL_SUPPORT_CMD=$($TS_CMD_CORESCHED 2>&1)
  +if [[ $CORESCHED_TEST_KERNEL_SUPPORT_CMD == *"CONFIG_SCHED_CORE"* ]]; then
  +  ts_skip "Kernel has no CONFIG_SCHED_CORE support"
  +fi
   
   # The output of coresched contains PIDs and core scheduling cookies, both of which should be
   # assumed to be random values as we have no control over them. The tests replace these values
  @@ -22,23 +30,22 @@ ts_check_test_command "$TS_CMD_CORESCHED"
   # - Any other cookie is replaced by `DIFFERENT_COOKIE`
   # The behavior of coresched does not depend on the exact values of these cookies, so using
   # placeholder values does not change the behavior tests.
  -ts_init_subtest "get-own-pid-no-cookie"
  -$TS_CMD_CORESCHED -p $$ 3>&2 2>&1 1>&3 | sed "s/$$/OWN_PID/g" >> "$TS_OUTPUT"
  -ts_finalize_subtest
  -
   ts_init_subtest "set-cookie-own-pid"
  -CORESCHED_OUTPUT=$($TS_CMD_CORESCHED -v -n -p $$ 3>&2 2>&1 1>&3 | sed "s/$$/OWN_PID/g")
  +CORESCHED_OUTPUT=$( ($TS_CMD_CORESCHED -v -n -p $$ | tee -a "$TS_OUTPUT") 3>&1 1>&2 2>&3 | sed "s/$$/OWN_PID/g")
   CORESCHED_COOKIE=$(echo "$CORESCHED_OUTPUT" | sed 's/^.*\(0x.*$\)/\1/g')
  +if [ -z "$CORESCHED_COOKIE" ]; then
  +  ts_failed "empty value for CORESCHED_COOKIE "
  +fi
   CORESCHED_OUTPUT=$(echo "$CORESCHED_OUTPUT" | sed "s/$CORESCHED_COOKIE/COOKIE/g")
  -echo "$CORESCHED_OUTPUT" >> "$TS_OUTPUT"
  +echo "$CORESCHED_OUTPUT" >> "$TS_ERRLOG"
   ts_finalize_subtest
   
   ts_init_subtest "get-own-pid-with-cookie"
  -$TS_CMD_CORESCHED -p $$ | sed "s/$$/OWN_PID/g" | sed "s/$CORESCHED_COOKIE/COOKIE/g" >> "$TS_OUTPUT"
  +$TS_CMD_CORESCHED -p $$ 2>> "$TS_ERRLOG" | sed "s/$$/OWN_PID/g" | sed "s/$CORESCHED_COOKIE/COOKIE/g" >> "$TS_OUTPUT"
   ts_finalize_subtest
   
   ts_init_subtest "spawn-child-with-new-cookie"
  -$TS_CMD_CORESCHED -n -- /bin/bash -c "$TS_CMD_CORESCHED -p \$\$" \
  +$TS_CMD_CORESCHED -n -- "$TS_CMD_CORESCHED" 2>> "$TS_ERRLOG" \
     | sed 's/^.*\(0x.*$\)/\1/g' \
     | sed "s/$CORESCHED_COOKIE/SAME_COOKIE/g" \
     | sed "s/0x.*$/DIFFERENT_COOKIE/g" >> "$TS_OUTPUT"
  @@ -46,7 +53,7 @@ ts_finalize_subtest
   
   ts_init_subtest "change-cookie-of-parent"
   $TS_CMD_CORESCHED -n -- /bin/bash -c "$TS_CMD_CORESCHED -c -p \$\$ -d $$"
  -$TS_CMD_CORESCHED -p $$ \
  +$TS_CMD_CORESCHED -p $$ 2>> "$TS_ERRLOG" \
     | sed "s/$$/OWN_PID/g" \
     | sed "s/$CORESCHED_COOKIE/COOKIE/g" \
     | sed "s/0x.*$/DIFFERENT_COOKIE/g" >> "$TS_OUTPUT"

 .gitignore                                    |   1 +
 bash-completion/coresched                     |   0
 configure.ac                                  |  12 +-
 meson.build                                   |  16 +-
 meson_options.txt                             |   2 +-
 schedutils/Makemodule.am                      |   8 +
 schedutils/coresched.1.adoc                   | 124 ++++++
 schedutils/coresched.c                        | 361 ++++++++++++++++++
 tests/commands.sh                             |   1 +
 .../coresched-change-cookie-of-parent         |   1 +
 .../coresched-get-own-pid-with-cookie         |   1 +
 .../coresched-set-cookie-own-pid.err          |   1 +
 .../coresched-spawn-child-with-new-cookie     |   1 +
 tests/ts/schedutils/coresched                 |  62 +++
 14 files changed, 585 insertions(+), 6 deletions(-)
 create mode 100644 bash-completion/coresched
 create mode 100644 schedutils/coresched.1.adoc
 create mode 100644 schedutils/coresched.c
 create mode 100644 tests/expected/schedutils/coresched-change-cookie-of-parent
 create mode 100644 tests/expected/schedutils/coresched-get-own-pid-with-cookie
 create mode 100644 tests/expected/schedutils/coresched-set-cookie-own-pid.err
 create mode 100644 tests/expected/schedutils/coresched-spawn-child-with-new-cookie
 create mode 100755 tests/ts/schedutils/coresched

diff --git a/.gitignore b/.gitignore
index 6ecbfa7fe..316f3cdcc 100644
--- a/.gitignore
+++ b/.gitignore
@@ -94,6 +94,7 @@ ylwrap
 /colcrt
 /colrm
 /column
+/coresched
 /ctrlaltdel
 /delpart
 /dmesg
diff --git a/bash-completion/coresched b/bash-completion/coresched
new file mode 100644
index 000000000..e69de29bb
diff --git a/configure.ac b/configure.ac
index ab7c98636..3a189a075 100644
--- a/configure.ac
+++ b/configure.ac
@@ -2500,9 +2500,9 @@ UL_REQUIRES_HAVE([setterm], [ncursesw, ncurses], [ncursesw or ncurses library])
 AM_CONDITIONAL([BUILD_SETTERM], [test "x$build_setterm" = xyes])
 
 # build_schedutils= is just configure-only variable to control
-# ionice, taskset and chrt
+# ionice, taskset, coresched and chrt
 AC_ARG_ENABLE([schedutils],
-  AS_HELP_STRING([--disable-schedutils], [do not build chrt, ionice, taskset]),
+  AS_HELP_STRING([--disable-schedutils], [do not build chrt, ionice, taskset, coresched]),
   [], [UL_DEFAULT_ENABLE([schedutils], [check])]
 )
 
@@ -2545,6 +2545,14 @@ UL_REQUIRES_SYSCALL_CHECK([taskset],
 AM_CONDITIONAL([BUILD_TASKSET], [test "x$build_taskset" = xyes])
 
 
+UL_ENABLE_ALIAS([coresched], [schedutils])
+UL_BUILD_INIT([coresched])
+UL_REQUIRES_SYSCALL_CHECK([coresched],
+	[UL_CHECK_SYSCALL([prctl])],
+	[prctl])
+AM_CONDITIONAL([BUILD_CORESCHED], [test "x$build_coresched" = xyes])
+
+
 have_schedsetter=no
 AS_IF([test "x$ac_cv_func_sched_setscheduler" = xyes], [have_schedsetter=yes],
       [test "x$ac_cv_func_sched_setattr" = xyes], [have_schedsetter=yes])
diff --git a/meson.build b/meson.build
index 9600ce49f..a3a648753 100644
--- a/meson.build
+++ b/meson.build
@@ -3111,13 +3111,23 @@ exe4 = executable(
   install : opt,
   build_by_default : opt)
 
+exe5 = executable(
+  'coresched',
+  'schedutils/coresched.c',
+  include_directories : includes,
+  link_with : lib_common,
+  install_dir : usrbin_exec_dir,
+  install : opt,
+  build_by_default : opt)
+
 if opt and not is_disabler(exe)
-  exes += [exe, exe2, exe3, exe4]
+  exes += [exe, exe2, exe3, exe4, exe5]
   manadocs += ['schedutils/chrt.1.adoc',
                'schedutils/ionice.1.adoc',
                'schedutils/taskset.1.adoc',
-	       'schedutils/uclampset.1.adoc']
-  bashcompletions += ['chrt', 'ionice', 'taskset', 'uclampset']
+               'schedutils/uclampset.1.adoc',
+               'schedutils/coresched.1.adoc']
+  bashcompletions += ['chrt', 'ionice', 'taskset', 'uclampset', 'coresched']
 endif
 
 ############################################################
diff --git a/meson_options.txt b/meson_options.txt
index 7b8cf3f35..3405c1b73 100644
--- a/meson_options.txt
+++ b/meson_options.txt
@@ -162,7 +162,7 @@ option('build-pipesz', type : 'feature',
 option('build-setterm', type : 'feature',
        description : 'build setterm')
 option('build-schedutils', type : 'feature',
-       description : 'build chrt, ionice, taskset')
+       description : 'build chrt, ionice, taskset, coresched')
 option('build-wall', type : 'feature',
        description : 'build wall')
 option('build-write', type : 'feature',
diff --git a/schedutils/Makemodule.am b/schedutils/Makemodule.am
index 1040da85f..0cb655401 100644
--- a/schedutils/Makemodule.am
+++ b/schedutils/Makemodule.am
@@ -29,3 +29,11 @@ dist_noinst_DATA += schedutils/uclampset.1.adoc
 uclampset_SOURCES = schedutils/uclampset.c schedutils/sched_attr.h
 uclampset_LDADD = $(LDADD) libcommon.la
 endif
+
+if BUILD_CORESCHED
+usrbin_exec_PROGRAMS += coresched
+MANPAGES += schedutils/coresched.1
+dist_noinst_DATA += schedutils/coresched.1.adoc
+coresched_SOURCES = schedutils/coresched.c
+coresched_LDADD = $(LDADD) libcommon.la
+endif
diff --git a/schedutils/coresched.1.adoc b/schedutils/coresched.1.adoc
new file mode 100644
index 000000000..c83fcdf91
--- /dev/null
+++ b/schedutils/coresched.1.adoc
@@ -0,0 +1,124 @@
+//po4a: entry man manual
+////
+coresched(1) manpage
+////
+= coresched(1)
+:doctype: manpage
+:man manual: User Commands
+:man source: util-linux {release-version}
+:page-layout: base
+:command: coresched
+:colon: :
+:copyright: ©
+
+== NAME
+
+coresched - manage core scheduling cookies for tasks
+
+== SYNOPSIS
+
+*{command}* [options] *-p* _pid_
+
+*{command}* [options] \-- _command_ [_argument_...]
+
+== DESCRIPTION
+The *{command}* command is used to retrieve or modify the core scheduling cookies of a running process given its _pid_, or to spawn a new _command_ with core scheduling cookies.
+
+Core scheduling allows you to define groups of tasks that are allowed to share a physical core.
+This is done by assigning a cookie to each task.
+Only tasks have the same cookie are allowed to be scheduled on the same physical core.
+
+It is possible to either assign a new random cookie to a task, or copy a cookie from another task. It is not possible to choose the value of the cookie.
+
+== FUNCTIONS
+*-n*, *--new*::
+Assign a new cookie to an existing PID or to execute _command_ with a new cookie.
+
+*-c*, *--copy*::
+Copy the cookie from an existing PID to another PID, or execute _command_ with that copied cookie.
+
+If no function is specified, it will print the cookie of the current task, or of the task specified with the *-p* option.
+
+== OPTIONS
+*-p*, *--pid* _PID_::
+Operate on an existing PID and do not launch a new task.
+
+*-d*, *--dest* _PID_::
+When using *--copy*, specify a destination PID where you want to copy the cookie to.
+
+*-t*, *--type* _TYPE_::
+The type of the PID whose cookie will be modified. This can be one of three values:
+- *pid*, or process ID
+- *tgid*, or thread group ID (default value)
+- *pgid*, or process group ID
+
+*-v*, *--verbose*::
+Show extra information when modifying cookies of tasks.
+
+*-h*, *--help*::
+Display help text and exit.
+
+*-V*, *--version*::
+Print version and exit.
+
+== EXAMPLES
+Get the core scheduling cookie of the {command} task itself, usually inherited from its parent{colon}::
+*{command}*
+
+Get the core scheduling cookie of a task with PID _123_{colon}::
+*{command} -p* _123_
+
+Give a task with PID _123_ a new core scheduling cookie{colon}::
+*{command} --new -p* _123_
+
+Spawn a new task with a new core scheduling cookie{colon}::
+*{command} --new* \-- _command_ [_argument_...]
+
+Copy the cookie from a task with pid _123_ to another task with pid _456_{colon}::
+*{command} --copy -p* _123_ *-d* _456_
+
+Copy the cookie from a task with pid _123_ to a new task _command_{colon}::
+*{command} --copy -p* _123_ \-- _command_ [_argument_...]
+
+Copy the cookie from a task with pid _123_ to the process group ID _456_{colon}::
+*{command} --copy -p* _123_ *-t* pgid *-d* _456_
+
+== PERMISSIONS
+When retrieving or modifying the core scheduling cookie of a process, you need to have *PTRACE_MODE_READ_REALCREDS* ptrace access to that process.
+See the section "Ptrace access mode checking" in *ptrace*(2) for more information.
+
+== RETURN VALUE
+On success, *{command}* returns 0.
+If *{command}* fails, it will print an error and return 1.
+
+If a _command_ is being executed, the return value of *{command}* will be the return value of _command_.
+
+== NOTES
+*{command}* requires core scheduling support in the kernel.
+This can be enabled via the *CONFIG_SCHED_CORE* kernel config option.
+
+== AUTHORS
+mailto:thijs@raymakers.nl[Thijs Raymakers],
+mailto:pauld@redhat.com[Phil Auld]
+
+== COPYRIGHT
+
+Copyright {copyright} 2024 Thijs Raymakers and Phil Auld. This is free software licensed under the EUPL.
+
+== SEE ALSO
+*chrt*(1),
+*nice*(1),
+*renice*(1),
+*taskset*(1),
+*ptrace*(2),
+*sched*(7)
+
+The Linux kernel source files _Documentation/admin-guide/hw-vuln/core-scheduling.rst_
+
+include::man-common/bugreports.adoc[]
+
+include::man-common/footer.adoc[]
+
+ifdef::translation[]
+include::man-common/translation.adoc[]
+endif::[]
diff --git a/schedutils/coresched.c b/schedutils/coresched.c
new file mode 100644
index 000000000..03b50cd5e
--- /dev/null
+++ b/schedutils/coresched.c
@@ -0,0 +1,361 @@
+/**
+ * SPDX-License-Identifier: EUPL-1.2
+ *
+ * coresched.c - manage core scheduling cookies for tasks
+ *
+ * Copyright (C) 2024 Thijs Raymakers, Phil Auld
+ * Licensed under the EUPL v1.2
+ */
+
+#include <getopt.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <sys/prctl.h>
+#include <sys/wait.h>
+#include <unistd.h>
+
+#include "c.h"
+#include "closestream.h"
+#include "nls.h"
+#include "optutils.h"
+#include "strutils.h"
+
+// These definitions might not be defined in the header files, even if the
+// prctl interface in the kernel accepts them as valid.
+#ifndef PR_SCHED_CORE
+#define PR_SCHED_CORE 62
+#endif
+#ifndef PR_SCHED_CORE_GET
+#define PR_SCHED_CORE_GET 0
+#endif
+#ifndef PR_SCHED_CORE_CREATE
+#define PR_SCHED_CORE_CREATE 1
+#endif
+#ifndef PR_SCHED_CORE_SHARE_TO
+#define PR_SCHED_CORE_SHARE_TO 2
+#endif
+#ifndef PR_SCHED_CORE_SHARE_FROM
+#define PR_SCHED_CORE_SHARE_FROM 3
+#endif
+#ifndef PR_SCHED_CORE_SCOPE_THREAD
+#define PR_SCHED_CORE_SCOPE_THREAD 0
+#endif
+#ifndef PR_SCHED_CORE_SCOPE_THREAD_GROUP
+#define PR_SCHED_CORE_SCOPE_THREAD_GROUP 1
+#endif
+#ifndef PR_SCHED_CORE_SCOPE_PROCESS_GROUP
+#define PR_SCHED_CORE_SCOPE_PROCESS_GROUP 2
+#endif
+
+typedef int sched_core_scope;
+typedef unsigned long sched_core_cookie;
+typedef enum {
+	SCHED_CORE_CMD_GET,
+	SCHED_CORE_CMD_NEW,
+	SCHED_CORE_CMD_COPY,
+} sched_core_cmd;
+
+struct args {
+	pid_t pid;
+	pid_t dest;
+	sched_core_scope type;
+	sched_core_cmd cmd;
+	int exec_argv_offset;
+};
+
+static bool sched_core_verbose = false;
+
+static void __attribute__((__noreturn__)) usage(void)
+{
+	fputs(USAGE_HEADER, stdout);
+	fprintf(stdout, _(" %s [-p PID]\n"), program_invocation_short_name);
+	fprintf(stdout, _(" %s --new [-t <TYPE>] -p <PID>\n"),
+		program_invocation_short_name);
+	fprintf(stdout, _(" %s --new [-t <TYPE>] -- PROGRAM [ARGS...]\n"),
+		program_invocation_short_name);
+	fprintf(stdout, _(" %s --copy -p <PID> [-t <TYPE>] -d <PID>\n"),
+		program_invocation_short_name);
+	fprintf(stdout,
+		_(" %s --copy -p <PID> [-t <TYPE>] -- PROGRAM [ARGS...]\n"),
+		program_invocation_short_name);
+
+	fputs(USAGE_SEPARATOR, stdout);
+	fputsln(_("Manage core scheduling cookies for tasks."), stdout);
+
+	fputs(USAGE_FUNCTIONS, stdout);
+	fputsln(_(" -n, --new          assign a new core scheduling cookie to an existing PID or\n"
+		  "                      execute a program with a new cookie."),
+		stdout);
+	fputsln(_(" -c, --copy         copy the core scheduling cookie from an existing PID to\n"
+		  "                      either another PID, or copy it to a new program"),
+		stdout);
+	fputsln(_("\n If no function is provided, it will retrieve and print the cookie from\n"
+		  "   the PID provided via --pid.\n"),
+		stdout);
+
+	fputs(USAGE_OPTIONS, stdout);
+	fputsln(_(" -p, --pid <PID>    operate on an existing PID"), stdout);
+	fputsln(_(" -d, --dest <PID>   when copying a cookie from an existing PID, --dest is\n"
+		  "                      the destination PID where to copy the cookie to."),
+		stdout);
+	fputsln(_(" -t, --type <TYPE>  type of the destination PID, or the type of the PID\n"
+		  "                      when a new core scheduling cookie is created.\n"
+		  "                      Can be one of the following: pid, tgid or pgid.\n"
+		  "                      The default is tgid."),
+		stdout);
+	fputs(USAGE_SEPARATOR, stdout);
+	fputsln(_(" -v, --verbose      verbose"), stdout);
+	fprintf(stdout,
+		USAGE_HELP_OPTIONS(
+			20)); /* char offset to align option descriptions */
+	fprintf(stdout, USAGE_MAN_TAIL("coresched(1)"));
+	exit(EXIT_SUCCESS);
+}
+
+#define bad_usage(FMT...)                 \
+	do {                              \
+		warnx(FMT);               \
+		errtryhelp(EXIT_FAILURE); \
+	} while (0)
+
+static sched_core_cookie core_sched_get_cookie(pid_t pid)
+{
+	sched_core_cookie cookie = 0;
+	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_GET, pid,
+		  PR_SCHED_CORE_SCOPE_THREAD, &cookie))
+		err(EXIT_FAILURE, _("Failed to get cookie from PID %d"), pid);
+	return cookie;
+}
+
+static void core_sched_create_cookie(pid_t pid, sched_core_scope type)
+{
+	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_CREATE, pid, type, 0))
+		err(EXIT_FAILURE, _("Failed to create cookie for PID %d"), pid);
+}
+
+static void core_sched_pull_cookie(pid_t from)
+{
+	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_SHARE_FROM, from,
+		  PR_SCHED_CORE_SCOPE_THREAD, 0))
+		err(EXIT_FAILURE, _("Failed to pull cookie from PID %d"), from);
+}
+
+static void core_sched_push_cookie(pid_t to, sched_core_scope type)
+{
+	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_SHARE_TO, to, type, 0))
+		err(EXIT_FAILURE, _("Failed to push cookie to PID %d"), to);
+}
+
+static void core_sched_copy_cookie(pid_t from, pid_t to,
+				   sched_core_scope to_type)
+{
+	core_sched_pull_cookie(from);
+	core_sched_push_cookie(to, to_type);
+
+	if (sched_core_verbose) {
+		sched_core_cookie before = core_sched_get_cookie(from);
+		fprintf(stderr,
+			_("%s: copied cookie 0x%lx from PID %d to PID %d\n"),
+			program_invocation_short_name, before, from, to);
+	}
+}
+
+static void core_sched_get_and_print_cookie(pid_t pid)
+{
+	if (sched_core_verbose) {
+		sched_core_cookie after = core_sched_get_cookie(pid);
+		fprintf(stderr, _("%s: set cookie of PID %d to 0x%lx\n"),
+			program_invocation_short_name, pid, after);
+	}
+}
+
+static void core_sched_exec_with_cookie(struct args *args, char **argv)
+{
+	if (!args->exec_argv_offset)
+		usage();
+
+	// Move the argument list to the first argument of the program
+	argv = &argv[args->exec_argv_offset];
+
+	// If a source PID is provided, try to copy the cookie from
+	// that PID. Otherwise, create a brand new cookie with the
+	// provided type.
+	if (args->pid) {
+		core_sched_pull_cookie(args->pid);
+		core_sched_get_and_print_cookie(args->pid);
+	} else {
+		pid_t pid = getpid();
+		core_sched_create_cookie(pid, args->type);
+		core_sched_get_and_print_cookie(pid);
+	}
+
+	if (execvp(argv[0], argv))
+		errexec(argv[0]);
+}
+
+// If PR_SCHED_CORE is not recognized, or not supported on this system,
+// then prctl will set errno to EINVAL. Assuming all other operands of
+// prctl are valid, we can use errno==EINVAL as a check to see whether
+// core scheduling is available on this system.
+static bool is_core_sched_supported(void)
+{
+	sched_core_cookie cookie = 0;
+	if (prctl(PR_SCHED_CORE, PR_SCHED_CORE_GET, getpid(),
+		  PR_SCHED_CORE_SCOPE_THREAD, &cookie))
+		if (errno == EINVAL)
+			return false;
+
+	return true;
+}
+
+static sched_core_scope parse_core_sched_type(char *str)
+{
+	if (!strcmp(str, "pid"))
+		return PR_SCHED_CORE_SCOPE_THREAD;
+	else if (!strcmp(str, "tgid"))
+		return PR_SCHED_CORE_SCOPE_THREAD_GROUP;
+	else if (!strcmp(str, "pgid"))
+		return PR_SCHED_CORE_SCOPE_PROCESS_GROUP;
+
+	bad_usage(_("'%s' is an invalid option. Must be one of pid/tgid/pgid"),
+		  str);
+}
+
+static void parse_arguments(int argc, char **argv, struct args *args)
+{
+	int c;
+
+	static const struct option longopts[] = {
+		{ "new", no_argument, NULL, 'n' },
+		{ "copy", no_argument, NULL, 'c' },
+		{ "pid", required_argument, NULL, 'p' },
+		{ "dest", required_argument, NULL, 'd' },
+		{ "type", required_argument, NULL, 't' },
+		{ "verbose", no_argument, NULL, 'v' },
+		{ "version", no_argument, NULL, 'V' },
+		{ "help", no_argument, NULL, 'h' },
+		{ NULL, 0, NULL, 0 }
+	};
+	static const ul_excl_t excl[] = {
+		{ 'c', 'n' }, // Cannot do both --new and --copy
+		{ 'd', 'n' }, // Cannot have both --new and --dest
+		{ 0 }
+	};
+
+	int excl_st[ARRAY_SIZE(excl)] = UL_EXCL_STATUS_INIT;
+
+	while ((c = getopt_long(argc, argv, "ncp:d:t:vVh", longopts, NULL)) !=
+	       -1) {
+		err_exclusive_options(c, longopts, excl, excl_st);
+		switch (c) {
+		case 'n':
+			args->cmd = SCHED_CORE_CMD_NEW;
+			break;
+		case 'c':
+			args->cmd = SCHED_CORE_CMD_COPY;
+			break;
+		case 'p':
+			args->pid = strtopid_or_err(
+				optarg, _("Failed to parse PID for -p/--pid"));
+			break;
+		case 'd':
+			args->dest = strtopid_or_err(
+				optarg, _("Failed to parse PID for -d/--dest"));
+			break;
+		case 't':
+			args->type = parse_core_sched_type(optarg);
+			break;
+		case 'v':
+			sched_core_verbose = true;
+			break;
+		case 'V':
+			print_version(EXIT_SUCCESS);
+		case 'h':
+			usage();
+		default:
+			errtryhelp(EXIT_FAILURE);
+		}
+	}
+
+	if (args->cmd == SCHED_CORE_CMD_COPY && !args->pid)
+		bad_usage(_("--copy: requires a -p/--pid"));
+
+	// More arguments have been passed, which means that the user wants to run
+	// another program with a core scheduling cookie.
+	if (argc > optind) {
+		switch (args->cmd) {
+		case SCHED_CORE_CMD_GET:
+			bad_usage(_("Unknown command"));
+			break;
+		case SCHED_CORE_CMD_NEW:
+			if (args->pid)
+				bad_usage(_(
+					"--new: cannot accept both a -p/--pid and a command"));
+			else
+				args->exec_argv_offset = optind;
+			break;
+		case SCHED_CORE_CMD_COPY:
+			if (args->dest)
+				bad_usage(_(
+					"--copy: cannot accept both a destination PID "
+					"-d/--dest and a command"));
+			else
+				args->exec_argv_offset = optind;
+			break;
+		}
+	}
+
+	if (argc <= optind) {
+		if (args->cmd == SCHED_CORE_CMD_NEW && !args->pid)
+			bad_usage(_(
+				"--new: requires either a -p/--pid or a command"));
+		if (args->cmd == SCHED_CORE_CMD_COPY && !args->dest)
+			bad_usage(_(
+				"--copy: requires either a -d/--dest or a command"));
+	}
+}
+
+int main(int argc, char **argv)
+{
+	struct args args = { 0 };
+	args.cmd = SCHED_CORE_CMD_GET;
+	args.type = PR_SCHED_CORE_SCOPE_THREAD_GROUP;
+
+	setlocale(LC_ALL, "");
+	bindtextdomain(PACKAGE, LOCALEDIR);
+	textdomain(PACKAGE);
+	close_stdout_atexit();
+
+	parse_arguments(argc, argv, &args);
+
+	if (!is_core_sched_supported())
+		errx(EXIT_FAILURE,
+		     _("Does your kernel support CONFIG_SCHED_CORE?"));
+
+	sched_core_cookie cookie;
+	pid_t pid;
+
+	switch (args.cmd) {
+	case SCHED_CORE_CMD_GET:
+		pid = args.pid ? args.pid : getpid();
+		cookie = core_sched_get_cookie(pid);
+		printf(_("cookie of pid %d is 0x%lx\n"), pid, cookie);
+		break;
+	case SCHED_CORE_CMD_NEW:
+		if (args.pid) {
+			core_sched_create_cookie(args.pid, args.type);
+			core_sched_get_and_print_cookie(args.pid);
+		} else {
+			core_sched_exec_with_cookie(&args, argv);
+		}
+		break;
+	case SCHED_CORE_CMD_COPY:
+		if (args.dest)
+			core_sched_copy_cookie(args.pid, args.dest, args.type);
+		else
+			core_sched_exec_with_cookie(&args, argv);
+		break;
+	default:
+		usage();
+	}
+}
diff --git a/tests/commands.sh b/tests/commands.sh
index 5674c5ff0..9eef92ccb 100644
--- a/tests/commands.sh
+++ b/tests/commands.sh
@@ -71,6 +71,7 @@ TS_CMD_COLCRT=${TS_CMD_COLCRT:-"${ts_commandsdir}colcrt"}
 TS_CMD_COLRM=${TS_CMD_COLRM:-"${ts_commandsdir}colrm"}
 TS_CMD_COL=${TS_CMD_COL:-"${ts_commandsdir}col"}
 TS_CMD_COLUMN=${TS_CMD_COLUMN:-"${ts_commandsdir}column"}
+TS_CMD_CORESCHED=${TS_CMD_CORESCHED:-"${ts_commandsdir}coresched"}
 TS_CMD_ENOSYS=${TS_CMD_ENOSYS-"${ts_commandsdir}enosys"}
 TS_CMD_EJECT=${TS_CMD_EJECT-"${ts_commandsdir}eject"}
 TS_CMD_EXCH=${TS_CMD_EXCH-"${ts_commandsdir}exch"}
diff --git a/tests/expected/schedutils/coresched-change-cookie-of-parent b/tests/expected/schedutils/coresched-change-cookie-of-parent
new file mode 100644
index 000000000..d08118c02
--- /dev/null
+++ b/tests/expected/schedutils/coresched-change-cookie-of-parent
@@ -0,0 +1 @@
+cookie of pid OWN_PID is DIFFERENT_COOKIE
diff --git a/tests/expected/schedutils/coresched-get-own-pid-with-cookie b/tests/expected/schedutils/coresched-get-own-pid-with-cookie
new file mode 100644
index 000000000..3d7f08040
--- /dev/null
+++ b/tests/expected/schedutils/coresched-get-own-pid-with-cookie
@@ -0,0 +1 @@
+cookie of pid OWN_PID is COOKIE
diff --git a/tests/expected/schedutils/coresched-set-cookie-own-pid.err b/tests/expected/schedutils/coresched-set-cookie-own-pid.err
new file mode 100644
index 000000000..1816a4fbd
--- /dev/null
+++ b/tests/expected/schedutils/coresched-set-cookie-own-pid.err
@@ -0,0 +1 @@
+coresched: set cookie of PID OWN_PID to COOKIE
diff --git a/tests/expected/schedutils/coresched-spawn-child-with-new-cookie b/tests/expected/schedutils/coresched-spawn-child-with-new-cookie
new file mode 100644
index 000000000..5b9c40052
--- /dev/null
+++ b/tests/expected/schedutils/coresched-spawn-child-with-new-cookie
@@ -0,0 +1 @@
+DIFFERENT_COOKIE
diff --git a/tests/ts/schedutils/coresched b/tests/ts/schedutils/coresched
new file mode 100755
index 000000000..ed96d89de
--- /dev/null
+++ b/tests/ts/schedutils/coresched
@@ -0,0 +1,62 @@
+#!/bin/bash
+# SPDX-License-Identifier: EUPL-1.2
+#
+# This file is part of util-linux
+#
+# Copyright (C) 2024 Thijs Raymakers
+# Licensed under the EUPL v1.2
+
+TS_TOPDIR="${0%/*}/../.."
+TS_DESC="coresched"
+
+. "$TS_TOPDIR"/functions.sh
+ts_init "$*"
+
+ts_check_test_command "$TS_CMD_CORESCHED"
+ts_check_test_command "tee"
+ts_check_test_command "sed"
+
+# If there is no kernel support, skip the test suite
+CORESCHED_TEST_KERNEL_SUPPORT_CMD=$($TS_CMD_CORESCHED 2>&1)
+if [[ $CORESCHED_TEST_KERNEL_SUPPORT_CMD == *"CONFIG_SCHED_CORE"* ]]; then
+  ts_skip "Kernel has no CONFIG_SCHED_CORE support"
+fi
+
+# The output of coresched contains PIDs and core scheduling cookies, both of which should be
+# assumed to be random values as we have no control over them. The tests replace these values
+# with sed before writing them to the output file, so it can match the expected output file.
+# - The PID of this bash script is replaced with the placeholder `OWN_PID`
+# - The core scheduling cookie of this bash script is replaced by `COOKIE`
+# - Any other cookie is replaced by `DIFFERENT_COOKIE`
+# The behavior of coresched does not depend on the exact values of these cookies, so using
+# placeholder values does not change the behavior tests.
+ts_init_subtest "set-cookie-own-pid"
+CORESCHED_OUTPUT=$( ($TS_CMD_CORESCHED -v -n -p $$ | tee -a "$TS_OUTPUT") 3>&1 1>&2 2>&3 | sed "s/$$/OWN_PID/g")
+CORESCHED_COOKIE=$(echo "$CORESCHED_OUTPUT" | sed 's/^.*\(0x.*$\)/\1/g')
+if [ -z "$CORESCHED_COOKIE" ]; then
+  ts_failed "empty value for CORESCHED_COOKIE "
+fi
+CORESCHED_OUTPUT=$(echo "$CORESCHED_OUTPUT" | sed "s/$CORESCHED_COOKIE/COOKIE/g")
+echo "$CORESCHED_OUTPUT" >> "$TS_ERRLOG"
+ts_finalize_subtest
+
+ts_init_subtest "get-own-pid-with-cookie"
+$TS_CMD_CORESCHED -p $$ 2>> "$TS_ERRLOG" | sed "s/$$/OWN_PID/g" | sed "s/$CORESCHED_COOKIE/COOKIE/g" >> "$TS_OUTPUT"
+ts_finalize_subtest
+
+ts_init_subtest "spawn-child-with-new-cookie"
+$TS_CMD_CORESCHED -n -- "$TS_CMD_CORESCHED" 2>> "$TS_ERRLOG" \
+  | sed 's/^.*\(0x.*$\)/\1/g' \
+  | sed "s/$CORESCHED_COOKIE/SAME_COOKIE/g" \
+  | sed "s/0x.*$/DIFFERENT_COOKIE/g" >> "$TS_OUTPUT"
+ts_finalize_subtest
+
+ts_init_subtest "change-cookie-of-parent"
+$TS_CMD_CORESCHED -n -- /bin/bash -c "$TS_CMD_CORESCHED -c -p \$\$ -d $$"
+$TS_CMD_CORESCHED -p $$ 2>> "$TS_ERRLOG" \
+  | sed "s/$$/OWN_PID/g" \
+  | sed "s/$CORESCHED_COOKIE/COOKIE/g" \
+  | sed "s/0x.*$/DIFFERENT_COOKIE/g" >> "$TS_OUTPUT"
+ts_finalize_subtest
+
+ts_finalize
-- 
2.44.0


