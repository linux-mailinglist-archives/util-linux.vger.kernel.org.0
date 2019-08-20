Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 78F8C964C8
	for <lists+util-linux@lfdr.de>; Tue, 20 Aug 2019 17:42:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726879AbfHTPmM (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Tue, 20 Aug 2019 11:42:12 -0400
Received: from out01.mta.xmission.com ([166.70.13.231]:59872 "EHLO
        out01.mta.xmission.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726717AbfHTPmL (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Tue, 20 Aug 2019 11:42:11 -0400
Received: from in01.mta.xmission.com ([166.70.13.51])
        by out01.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1i06Gw-00041O-Pt; Tue, 20 Aug 2019 09:42:10 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95] helo=x220.xmission.com)
        by in01.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1i06Gv-0002KY-I9; Tue, 20 Aug 2019 09:42:10 -0600
From:   ebiederm@xmission.com (Eric W. Biederman)
To:     Patrick Steinhardt <ps@pks.im>
Cc:     Karel Zak <kzak@redhat.com>, util-linux@vger.kernel.org
References: <3fcfc033d9d115649fee5f9ae05296c29033a7de.1565866421.git.ps@pks.im>
        <20190820125132.iq3w234ump62mnmb@10.255.255.10>
        <20190820130930.GA50493@ncase>
Date:   Tue, 20 Aug 2019 10:41:59 -0500
In-Reply-To: <20190820130930.GA50493@ncase> (Patrick Steinhardt's message of
        "Tue, 20 Aug 2019 15:09:30 +0200")
Message-ID: <87ef1fj12w.fsf@xmission.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-SPF: eid=1i06Gv-0002KY-I9;;;mid=<87ef1fj12w.fsf@xmission.com>;;;hst=in01.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX18hWYkj0+GFmDQgyES5znFiwAbhl5uX+RQ=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
        DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMSubLong autolearn=disabled
        version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4840]
        *  0.7 XMSubLong Long Subject
        *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
        * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
        *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Patrick Steinhardt <ps@pks.im>
X-Spam-Relay-Country: 
X-Spam-Timing: total 640 ms - load_scoreonly_sql: 0.04 (0.0%),
        signal_user_changed: 2.7 (0.4%), b_tie_ro: 1.89 (0.3%), parse: 0.88
        (0.1%), extract_message_metadata: 13 (2.0%), get_uri_detail_list: 2.9
        (0.5%), tests_pri_-1000: 7 (1.1%), tests_pri_-950: 1.38 (0.2%),
        tests_pri_-900: 1.07 (0.2%), tests_pri_-90: 35 (5.5%), check_bayes: 33
        (5.2%), b_tokenize: 11 (1.7%), b_tok_get_all: 11 (1.7%), b_comp_prob:
        4.6 (0.7%), b_tok_touch_all: 3.4 (0.5%), b_finish: 0.71 (0.1%),
        tests_pri_0: 565 (88.4%), check_dkim_signature: 0.85 (0.1%),
        check_dkim_adsp: 2.3 (0.4%), poll_dns_idle: 0.26 (0.0%), tests_pri_10:
        2.3 (0.4%), tests_pri_500: 7 (1.2%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH] unshare: allow setting up filesystems in the mount namespace
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

Patrick Steinhardt <ps@pks.im> writes:

> On Tue, Aug 20, 2019 at 02:51:32PM +0200, Karel Zak wrote:
>> On Thu, Aug 15, 2019 at 12:54:45PM +0200, Patrick Steinhardt wrote:
>> > In order to execute commands with the least-possible privileges, it may
>> > be desirable to provide them with a trimmed down filesystem view.
>> > unshare naturally provides the ability to create mount namespaces, but
>> > it doesn't yet offer much in preparing these. For now, a combination of
>> > unshare and nsenter is required to prepare culled filesystems views,
>> > which is kind of unwieldy.
>> > 
>> > To remedy that, this implements a new option "--mount-fs". As
>> > parameters, one may specify a source filesystem, the destination where
>> > this filesystem shall be mounted, the type of filesystem as well as a
>> > set of options. unshare will then mount it using libmount right before
>> > performing `chroot`, `chdir` and the subsequent `execve`, which allows
>> > for preparing the `chroot` environment without using nsenter at all.
>> >
>> > The above is useful in several different cases, for example when one
>> > wants to execute the process in a read-only environment or execute it
>> > with a reduced view of the filesystem.
>> 
>> I understand your point of view, but it's a way how unshare(1) will
>> slowly grow from simple one-purpose tool to complex container/namespace
>> setup tool ;-) I do not have any strong opinion about it. Maybe your 
>> --mount-fs is still so basic that we can merge it into unshare(1)
>> 
>> Sounds like we need a discussion about it to gather more opinions :-)
>> (CC to Eric).
>
> Sounds fair to me. The main motivation I have is that I want to
> use unshare(1) as part of runit(8) to spawn supervised processes
> in their own namespaces. And using multiple steps to set up
> namespaces and spawn the executable makes things a lot more error
> prone.

My vision of unshare is a simple command line debugging tool.  It let's
you get at the raw functionality.  It might be useful in scripts but it
doesn't provide a nice environment.  The secondary purpose I see for
unshare is as a small example that shows how easy it is to use all
of the functionality.

At least for me unshare is what I turn to do all of the steps manually,
and keeping it simple and focused is a major benefit to that cause.

>> Note that the latest mount(8) has --namespace option, so you can mount
>> filesystems in the another namespace although the namespace does not
>> contain mount command and necessary libs.
>
> That would require me to set up persistent namespaces first,
> though, while unshare(1) allows me to use transient ones that
> disappear as soon as the executable exits.
>
>> And note that for systemd based distros there is systemd-nspawn which
>> provides many many features (include IPC, hostname, TZ, private users,
>> ...).
>
> Yeah, I know of that one, but as I'm using runit(8) as PID1
> systemd-nspawn(1) is not a viable route, at least as far as I
> know. I'm definitely inspired by that tool, though, and would
> love to have something similar that is completely agnostic of
> what init system is running.
>
>> > +.B # unshare
>> > +.B    --mount-fs=none:/tmp:tmpfs
>> > +.B    --mount-fs=/bin:/tmp/bin:none:bind,ro,X-mount.mkdir
>> > +.B    --mount-fs=/lib:/tmp/lib:none:bind,ro,X-mount.mkdir
>> > +.B    --mount-fs=/usr/lib:/tmp/usr/lib:none:bind,ro,X-mount.mkdir
>> > +.B    --root=/tmp /bin/ls /
>> 
>> The libmount also allows to mount all filesystem according to mount
>> table stored in a file, so I can imagine --fstab option ;-)
>
> I thought about exposing parsing of fstab-style lines from
> libmount. But I'd definitely be happy to implement an "--fstab"
> option instead, that would work perfectly fine for my own usecase
> and probably simplify code by quite a bit.

The tricky part of all of this appears to be permission management.  As
soon as you change your uids and/or exec you are in trouble.  As that
will cause you to loose CAP_SYS_ADMIN (unless you are running a service
as root).

My sense is that it would be easiest to write a little tool that does
what you need to run services.  Possibly as a PAM plugin.  I know
originally that is how the unshare system call was expected to be used,
and unshare fits in well with that model.  The example of a PAM plugin
is that potentially runit and sshd could be convinced to setup the
environment for you when you start them.

In fact I think there might already be a PAM plugin for a private /tmp.

Now maybe util-linux is the place for that tool to live.  But I don't
think the unshare command itself is where we want to put the
functionality.

Eric
