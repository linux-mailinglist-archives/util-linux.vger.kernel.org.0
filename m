Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 609824A4A31
	for <lists+util-linux@lfdr.de>; Mon, 31 Jan 2022 16:15:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379418AbiAaPPI (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 31 Jan 2022 10:15:08 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:24608 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1379424AbiAaPOt (ORCPT
        <rfc822;util-linux@vger.kernel.org>);
        Mon, 31 Jan 2022 10:14:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1643642088;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=CBJUOtgcrOh1mJNtFxX5vN8ENHtWE/RB1SgtTjfT/6s=;
        b=OKZ3WaJkqoJ+PvfWerqVWvFrUSG1smETVtUDYAQoSNU0+i5Tjlh7bpjPs+iRhd/NzCJmyS
        8+Dw7t295ZS2ZTCWfWYoFqiTNJ7JwZRyYdMja2JpcGdobkalO9kVdzUaGA8MFTobTLmO8w
        WXFv1BNVI07qslTR6+a6QatMPYN4/SE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-110-Xt5UfEHWPa2uOOBVHud5ww-1; Mon, 31 Jan 2022 10:14:38 -0500
X-MC-Unique: Xt5UfEHWPa2uOOBVHud5ww-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64B2B100C610;
        Mon, 31 Jan 2022 15:14:36 +0000 (UTC)
Received: from ws.net.home (ovpn-112-8.ams2.redhat.com [10.36.112.8])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E08977BB67;
        Mon, 31 Jan 2022 15:14:34 +0000 (UTC)
Date:   Mon, 31 Jan 2022 16:14:32 +0100
From:   Karel Zak <kzak@redhat.com>
To:     linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
        util-linux@vger.kernel.org
Subject: [ANNOUNCE] util-linux v2.38-rc1
Message-ID: <20220131151432.mfk62bwskotc6w64@ws.net.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org


The util-linux release v2.38-rc1 is available at
     
  http://www.kernel.org/pub/linux/utils/util-linux/v2.38/
     
Feedback and bug reports, as always, are welcomed.
     
  Karel


Util-linux 2.38 Release Notes
=============================

Release highlights
------------------

mount(8) now supports a new option --mkdir as shortcut for X-mount.mkdir

mount(8) (and libmount) now supports new mount options X-mount.subdir= to
mounting sub-directory from a filesystem instead of the root directory.

lsfd is a NEW COMMAND. lsfd is intended to be a modern replacement for lsof(8)
on Linux systems. Unlike lsof, lsfd is specialized to Linux kernel; it supports
Linux specific features like namespaces with simpler code. lsfd is not a
drop-in replacement for lsof; they are different in the command line interface
and output formats. lsfd uses Libsmartcols for output formatting and filtering.
For example: lsfd -Q 'ASSOC == "exe"' prints all running executables.
(Thanks to Masatake YAMATO)

dmesg(1) supports a new option --json to print kernel log in JSON format.

libfdisk has been improved to set correct CHS addresses in MBR.
(Thanks to Pali Rohár)

fstrim(8) ignores all /ect/fstab entries with X-fstrim.notrim mount option now.

hardlink(1) now supports reflinks (new options --reflinks and --skip-reflinks),
and a new option --method=<memcmp,sha1,crc32,sha256> to specify a way how to
compare files. Now the files comparation use Linux crypto API in zero-copy way
-- all is calculated in kernel and userspace compares only hash checksums
(default is sha256).

hwclock(8) supports new command line options --param-get and --param-set to
works with RTC_PARAM_* attributes.

irqtop(1) provides a new option --cpu-stat <enable|disable|auto> to control
per-cpu stats.

libblkid supports zoned disks for btrfs now.

lsblk(8) provides a new option --noempty to ignore all devices with zero size;
the new option --zoned prints information about zones.

mkswap(8) supports a new option --quiet.

nsenter(8) supports a new option --wdns to change working directory within
namespace.

rename(1) supports new option --all and --last to replace all or last
occurrences of expression rather than the first one.

su(1) now resets RLIMIT_AS, RLIMIT_{NICE,RTPRIO}, RLIMIT_FSIZE and RLIMIT_NOFILE
reourse limits.

unshare(8) supports new options --map-users= and --map-groups= to map block of
group IDs; and new option --map-auto to map the first block of user IDs owned
by the effective user from /etc/subuid

wdctl supports new options --setpregovernor to set pre-timeout governor name,
and --setpretimeout to set watchdog pre-timeout in seconds.


Changes between v2.37 and v2.38
-------------------------------

Man pages:
   - Fix end extend formatting  [Mario Blättermann]
agetty:
   - (adoc) double hyphen replaced by dash in man pages  [Karel Zak]
   - do not use atol()  [Karel Zak]
   - resolve tty name even if stdin is specified  [tamz]
   - use CTRL+C to erase username  [Karel Zak]
   - use getttynam() if available  [Ludwig Nussel]
asciidoc:
   - fix quoted message in fsck.minix  [Rafael Fontenelle]
   - unconstrained formatting pair in fdisk  [Rafael Fontenelle]
bash-completion:
   - add --json to dmesg  [Karel Zak]
   - fix irqtop  [Karel Zak]
blkid:
   - check device type and name before probe  [Karel Zak]
   - don't print all devices if only garbage specified  [Karel Zak]
blockdev:
   - allow for larger values for start sector  [Thomas Abraham]
   - improve arguments parsing (remove atoi)  [Karel Zak]
   - remove accidental non-breaking spaces  [Chris Hofstaedtler]
   - use snprintf() rather than sprintf()  [Karel Zak]
build-sys:
   - (hardlink) check for llistxattr and lgetxattr  [Karel Zak]
   - (meson) fix hardlink  [Karel Zak]
   - Update configure.ac  [Alex Xu]
   - add USE_SYSTEMD  [Karel Zak]
   - add configure option to disable lsfd  [Anatoly Pugachev]
   - add cryptsetup config-gen  template  [Karel Zak]
   - add generated man-pages to distribution tarball  [Karel Zak]
   - add missing header  [Karel Zak]
   - add script to compare config.h from meson and autotools  [Karel Zak]
   - be verbose about missing gettext  [Karel Zak]
   - cleanup lsfd related stuff  [Karel Zak]
   - disable IPC tools on Darwin  [Karel Zak]
   - disable libmount when missing mntent.h  [Karel Zak]
   - display cryptsetup status after ./configure  [Luca Boccassi]
   - fir distcheck for fileeq.h  [Karel Zak]
   - fix test_procfs SOURCES  [Karel Zak]
   - fix {release-version} man pages  [Karel Zak]
   - generate all man pages for distribution tarball  [Karel Zak]
   - improve setns, unshare and prlimit checks  [Karel Zak]
   - include xlocale.h for locale_t on MacOS  [Karel Zak]
   - install hardlink bash-completion  [Karel Zak]
   - install lastb bash-completion  [Karel Zak]
   - link lib_common to test_procfs  [Masatake YAMATO]
   - make autogen.sh output more user friendly  [Karel Zak]
   - make libtool patching more robust  [Karel Zak]
   - make re-use of generated man-pages more robust  [Karel Zak]
   - patch libtool.m4 for darwin  [Karel Zak]
   - remove bashism  [Karel Zak]
   - remove lib/procutils.c  [Karel Zak]
   - use $LIBS rather than LDFLAGS  [Karel Zak]
   - use set +e before patch --try in ./autogen.sh  [Karel Zak]
cfdisk:
   - do not use atoi()  [Karel Zak]
   - optimize mountpoint detection for PARTUUID  [Karel Zak]
chfn:
   - flush stdout before reading stdin and fix uninitialized variable  [Lorenzo Beretta]
chrt:
   - use lib/procfs.c  [Karel Zak]
chsh:
   - fflush stdout before reading from stdin  [Lorenzo Beretta]
ci:
   - add a GHAction sending data to Coverity  [Evgeny Vereshchagin]
   - build coverage reports on Coveralls  [Evgeny Vereshchagin]
   - no longer refer to Travis CI  [Evgeny Vereshchagin]
cifuzz:
   - switch to the util-linux organization  [Evgeny Vereshchagin]
column:
   - segmentation fault on invalid unicode input passed to -s option  [Karel Zak]
dmesg:
   - add --json output format  [Karel Zak]
   - fix indentation in man page  [Platon Pronko]
   - fix possible memory leak [coverity scan]  [Karel Zak]
   - remove  condition [lgtm scan]  [Karel Zak]
   - translate ctime strings  [Karel Zak]
docs:
   - Uniformize references to section titles  [Rafael Fontenelle]
   - add hint about TP  [Karel Zak]
   - add hint for non-public reports  [Karel Zak]
   - add link to GitHub TODO items  [Karel Zak]
   - add links to adjtime_config manpage  [Karel Zak]
   - add man-common/in-bytes.adoc  [Karel Zak]
   - add note about GitHub PR  [Karel Zak]
   - add uclampset to AUTHORS file  [Karel Zak]
   - document --param-get, --param-set  [Bastian Krause]
   - fix info about LIBSMARTCOLS_DEBUG_PADDING  [Karel Zak]
   - fix typo in v2.37-ReleaseNotes  [Karel Zak]
   - update AUTHORS file  [Karel Zak]
   - update IRC address  [Karel Zak]
   - update TODO  [Karel Zak]
   - update github URL  [Karel Zak]
eject:
   - add __format__ attribute  [Karel Zak]
   - do not use atoi()  [Karel Zak]
   - fix typo in docs  [Karel Zak]
fallocate:
   - add verbose messages  [Karel Zak]
fdisk:
   - Add support for fixing MBR partitions CHS values  [Pali Rohár]
   - do not print error message when partition reordering is not needed  [Pali Rohár]
   - move reorder diag messages to fdisk_reorder_partitions()  [Pali Rohár]
   - open device in nonblock mode  [changlianzhi]
   - when use fdisk -l, open device in nonblock mode  [lishengyu]
findmnt:
   - (adoc) Added section stating exit code semantics  [Mister Me]
   - (verify) add hint about systemctl daemon-reload  [Karel Zak]
   - (verify) fix cache related memory leaks on --nocanonicalize [coverity scan]  [Karel Zak]
   - (verify) fix memory leak [asan]  [Karel Zak]
   - (verify) ignore passno for btrfs  [Karel Zak]
   - (verify) support fstype patterns  [Karel Zak]
   - add SOURCES column to print all devices with the same tag  [Karel Zak]
   - add __format__ attribute  [Karel Zak]
   - add reason to "cannot detect on-disk filesystem type" warning  [Karel Zak]
   - add support to print deleted targets  [Karel Zak]
   - add to the man page note about SOURCES  [Karel Zak]
   - allow SOURCES field even without '--fstab'  [Goffredo Baroncelli]
   - filter entries before add to the tree  [Karel Zak]
   - fix compiler warning [-Werror=sign-compare]  [Karel Zak]
   - make sure all entries are in tree output  [Karel Zak]
   - properly exclude poll columns from --output-all  [Thomas Weißschuh]
fixup! lsns:
   - interpolate missing namespaces for converting forests to a tree  [Masatake YAMATO]
flock:
   - (adoc) fix example  [Karel Zak]
fsck:
   - check errno after strto..()  [Karel Zak]
   - clear SIGCHLD inherited setting  [Karel Zak]
   - do not use atoi()  [Karel Zak]
   - use mnt_fs_is_regularfs()  [Karel Zak]
fsck.cramfs:
   - use open+fstat rather than stat+open  [Karel Zak]
fstrim:
   - Add fstab option X-fstrim.notrim  [Stanislav Brabec]
   - clean return code on --quiet-unsupported  [Karel Zak]
   - don't trigger autofs  [Karel Zak]
   - fix typo  [Karel Zak]
github:
   - add linux-modules-extra package to CI tests  [Karel Zak]
   - add meson build target  [Karel Zak]
hardlink:
   - Calling posix_fadvise without checking return value [coverity scan]  [Karel Zak]
   - add --cache-size  [Karel Zak]
   - add new option  -S/--maximum-size  [Daniele Pizzolli]
   - add reflinks support (add --reflinks and --skip-reflinks)  [Karel Zak]
   - add verbose messages when skip file  [Karel Zak]
   - call size_to_human_string() only when necessary  [Karel Zak]
   - fix compiler warning [-Wformat=]  [Karel Zak]
   - improve verbose messages  [Karel Zak]
   - make reflink detection more robust [coverity scan]  [Karel Zak]
   - remove pcre2posix.h support  [Karel Zak]
   - rename --buffer-size to --io-size  [Karel Zak]
   - rewrite files content comparison  [Karel Zak]
   - simplify file_link()  [Karel Zak]
   - small regex stuff refactoring  [Karel Zak]
   - use more passive wording in hardlink.1  [Eduard Bloch]
   - use open(O_CREAT) with mode  [Karel Zak]
hexdump:
   - correctly display signed single byte integers  [Samir Benmendil]
   - do not use atoi()  [Karel Zak]
hwclock:
   - add --param-get option  [Bastian Krause]
   - add --param-set option  [Bastian Krause]
   - check errno after strto..()  [Karel Zak]
   - cleanup hwclock_params[] use  [Karel Zak]
   - close adjtime on write error [coverity scan]  [Karel Zak]
   - don't ignore sscanf() return code [coverity scan]  [Karel Zak]
   - fix ul_path_scanf() use  [Karel Zak]
   - get/set param cleanup  [Karel Zak]
   - increase indent in help text  [Bastian Krause]
include:
   - Rename HiFive partition UUIDs  [Alexandre Ghiti]
include/c:
   - Add abs_diff macro  [Sean Anderson]
   - add __format__ attribute  [Karel Zak]
   - add cmp_timespec() and cmp_stat_mtime()  [Karel Zak]
   - add drop_permissions(), consolidate UID/GID reset  [Karel Zak]
include/fileeq:
   - add functions to compare files content  [Karel Zak]
include/path:
   - add __format__attribute  [Karel Zak]
include/strutils:
   - cleanup strto..() functions  [Karel Zak]
   - consolidate string to number conversion  [Karel Zak]
   - fix __format__attribute  [Karel Zak]
include/strv:
   - fix format attributes  [Karel Zak]
ipcmk:
   - fix strtoul use, remove deadcode [coverity scan]  [Karel Zak]
ipcs:
   - check errno after strto..()  [Karel Zak]
   - do not use atoi()  [Karel Zak]
   - use snprintf() rather than sprintf()  [Karel Zak]
irqtop:
   - add -c/--cpu-stat option  [zhenwei pi]
   - don't ignore sscanf() return code [coverity scan]  [Karel Zak]
   - fix options parsing  [Karel Zak]
   - small coding style change  [Karel Zak]
isfdisk:
   - improve --backup documentation  [Karel Zak]
kill:
   - check errno after strto..()  [Karel Zak]
   - use lib/procfs.c  [Karel Zak]
last:
   - use snprintf() rather than sprintf()  [Karel Zak]
ldattach:
   - add __format__ attribute  [Karel Zak]
lib:
   - use snprintf() rather than sprintf()  [Karel Zak]
lib/buffer:
   - add possibility to save position in the buffer  [Karel Zak]
   - add support for "safe" encoding  [Karel Zak]
   - fix buffer reset  [Karel Zak]
   - retun size of the buffer and data  [Karel Zak]
lib/caputils:
   - use lib/procfs.c  [Karel Zak]
lib/env:
   - don't ignore failed malloc  [Karel Zak]
lib/fileeq:
   - fix for small memsiz  [Karel Zak]
lib/jsonwrt:
   - check if JSON handler is initialized  [Karel Zak]
lib/loopdev:
   - perform retry on EAGAIN  [Karel Zak]
lib/path:
   - (test) fix ul_new_path() use  [Karel Zak]
   - add ul_path_next_dirent()  [Karel Zak]
   - fix possible leak when use ul_path_read_string() [coverity scan]  [Karel Zak]
   - fstat dir itself  [Karel Zak]
   - improve ul_path_readlink() to be more robust  [Karel Zak]
   - make path use more robust [coverity scan]  [Karel Zak]
   - use flags for fstatat()  [Karel Zak]
lib/procfs:
   - add functions to read /proc/#/ stuff  [Karel Zak]
lib/pwdutils:
   - don't use getlogin(3).  [Érico Nogueira]
   - use assert to check correct usage.  [Érico Nogueira]
lib/strutils:
   - add strappend()  [Karel Zak]
   - improve normalize_whitespace()  [Karel Zak]
   - make sure mem2strcpy() buffer is zeroized  [Karel Zak]
   - make test_strutils_normalize() more robust  [Karel Zak]
   - rename strappend() to strconcat()  [Karel Zak]
lib/sys:
   - add sysfs_chrdev_devno_to_devname()  [Karel Zak]
libblkid:
   - (btrfs) add debug messages to zoned support  [Karel Zak]
   - Add hyphens to UUID string representation in Stratis superblock parsing  [John Baublitz]
   - Optimize the blkid_safe_string() function  [Karel Zak, changlianzhi]
   - add magic and probing for zoned btrfs  [Naohiro Aota]
   - check UBI char device name  [Karel Zak]
   - check blkid_get_cache() return value [coverity scan]  [Karel Zak]
   - check errno after strto..()  [Karel Zak]
   - check for ioctl macro rather than for header file  [Karel Zak]
   - don't mark cache as "probed" if /sys not available  [Karel Zak]
   - fix and cleanup blkid_safe_string()  [Karel Zak]
   - ignore scanf() result when read number of stripes [coverity scan]  [Karel Zak]
   - implement zone-aware probing  [Naohiro Aota]
   - optimize ioctl calls in blkid_probe_set_device()  [Karel Zak]
   - remove EVMS support  [Karel Zak]
   - remove unnecessary ifdef  [Karel Zak]
   - reopen floppy without O_NONBLOCK  [Karel Zak]
   - reset errno after failed floppy test  [Karel Zak]
   - support zone reset for wipefs  [Naohiro Aota]
   - use snprintf() rather than sprintf()  [Karel Zak]
   - vfat  Fix reading FAT16 boot label and serial id  [Pali Rohár]
   - vfat  Fix reading FAT32 boot label  [Pali Rohár]
libblkid/src/probe:
   - check for ENOMEDIUM from ioctl(CDROM_LAST_WRITTEN)  [Jeremi Piotrowski]
libbuid:
   - use _UL_LIBUUID_UUID_H to cover uuid.h  [Karel Zak]
libfdisk:
   - (dos) Add check both begin and end CHS partition parameters  [Pali Rohár]
   - (dos) Add function dos_partition_sync_chs() for updating CHS values  [Pali Rohár]
   - (dos) Add function fdisk_dos_fix_chs() for fixing CHS values for all partitions  [Pali Rohár]
   - (dos) Fix check error message when CHS calculated sector does not match LBA  [Pali Rohár]
   - (dos) Fix determining number of heads and sectors per track from MBR  [Pali Rohár]
   - (dos) Fix printing number of CHS sectors in check error message  [Pali Rohár]
   - (dos) Fix setting CHS values when creating new partition  [Pali Rohár]
   - (dos) Fix upper bound cylinder check in check()  [Pali Rohár]
   - (dos) Fix upper bound cylinder check in check_consistency()  [Pali Rohár]
   - (dos) Put number of CHS check_consistency errors into summart message  [Pali Rohár]
   - (dos) Recalculate number of cylinders after changing number of heads and sectors  [Pali Rohár]
   - (dos) Use helper macros cylinder() and sector() in check_consistency()  [Pali Rohár]
   - (dos) don't ignore MBR+FAT use-case  [Karel Zak]
   - (dos) index partition from zero for DBG()  [Karel Zak]
   - (dos) support partition and MBR overlap  [Karel Zak]
   - (gpt) align size of partition by default  [Karel Zak]
   - (gpt) make fdisk -x output more readable  [Karel Zak]
   - (gpt) provide last LBA where is partitions array  [Karel Zak]
   - (script) rewrite start= and size= parsing  [Karel Zak]
   - add and fix __format__ attributes  [Karel Zak]
   - add new Linux GPT partition types  [WANG Xuerui]
   - check calloc() return [gcc-analyzer]  [Karel Zak]
   - dereference of possibly-NULL [gcc-analyzer]  [Karel Zak]
   - don't use too small free segments by default  [Karel Zak]
   - enlarge partition by move start down  [Karel Zak]
   - incorrect GUID for NetBSD  [Siu Ching Pong -Asuka Kenji-]
   - make self_partition() use more robust [gcc-analyzer]  [Karel Zak]
libmount:
   - (--all) continue although /proc is not mounted  [Karel Zak]
   - add X-mount.subdir=  [Karel Zak]
   - add __format__ attribute  [Karel Zak]
   - add mnt_fs_is_deleted()  [Karel Zak]
   - add mnt_fs_is_regularfs() to public API  [Karel Zak]
   - allow X-* options more than once  [Karel Zak]
   - assert() is enough [lgtm scan]  [Karel Zak]
   - change propagation of /run for X-mount.subdir  [Karel Zak]
   - check errno after strto..()  [Karel Zak]
   - disable mtab only on statfs() success only  [Karel Zak]
   - don't use setgroups at all()  [Karel Zak]
   - fix UID check for FUSE umount [CVE-2021-3995]  [Karel Zak]
   - fix setgroups() use  [Karel Zak]
   - make mnt_table_get_fs_root() more robust [gcc-analyzer]  [Karel Zak]
   - remove support for deleted mount table entries  [Karel Zak]
   - remove support for obsolete /dev/.mount/utab  [Karel Zak]
   - show options string on parse error  [Karel Zak]
   - support quotes in X-mount options  [Karel Zak]
   - use /run/mount/tmptgt rather than /tmp/mount/mount.<pid>  [Karel Zak]
libsmartcols:
   - add multi-line cells to samples  [Karel Zak]
   - add scols_line_get_column_data()  [Karel Zak]
   - add support for optional boolean values  [Thomas Weißschuh]
   - fix bare array on JSON output  [Karel Zak]
   - fix lines groups for multi-line cells  [Karel Zak]
   - use lib/buffer, remove local implementation  [Karel Zak]
   - use snprintf() rather than sprintf()  [Karel Zak]
libuuid:
   - check errno after strto..()  [Karel Zak]
   - include c.h to cover restrict keyword  [Karel Zak]
logger:
   - add __format__ attribute  [Karel Zak]
   - dealloc login name  [Karel Zak]
   - fix --prio-prefix doesn't use --priority default  [Karel Zak]
   - fix --size use for stdin  [Karel Zak]
   - realloc buffer when header size changed  [Karel Zak]
   - use xgetlogin from pwdutils.  [Érico Nogueira]
login:
   - (adoc) add hint about PAM and env.variables  [Karel Zak]
   - Restore tty size after calling vhangup()  [Daan De Meyer]
   - add callback for close_range()  [Karel Zak]
   - fix close_range() use  [Karel Zak]
   - improve coding style  [Karel Zak]
   - remove obsolete and confusing comment  [Karel Zak]
logindefs:
   - use snprintf() rather than sprintf()  [Karel Zak]
loopdev:
   - Do not treat errors when detecting overlap as fatal  [Jan Kara]
   - Properly translate errors from ul_path_read_*()  [Jan Kara]
   - accept ENOSYS for LOOP_CONFIGURE  [Alex Xu]
losetup:
   - Add missing pipe to man example for setting up loop device  [Vojtech Trefny]
   - directly set dio instead of afterwards  [Alex Xu (Hello71)]
   - use LOOP_CONFIGURE in a more robust way  [Karel Zak]
lsblk:
   - (adoc) improve --all description  [Karel Zak]
   - add --noempty  [Karel Zak]
   - add column START for partition start offsets  [Karel Zak]
   - add columns of zoned parameters  [Naohiro Aota]
   - add zoned columns to "lsblk -z"  [Naohiro Aota]
   - factor out function to read sysfs param as bytes  [Naohiro Aota]
   - fix formatting in -e option  [ratijas]
   - normalize space in SERIAL and MODEL  [Karel Zak]
   - sort list of columns  [Karel Zak]
   - sort usage() output  [Karel Zak]
   - use ID_MODEL_ENC is possible  [Karel Zak]
lscpu:
   - (arm) remove extra whitespace  [Karel Zak]
   - Add Phytium FT-2000+ & S2500 support  [panchenbo]
   - Add Phytium aarch64 cpupart  [panchenbo]
   - add SCALMHZ% and "CPU scaling MHz "  [Karel Zak]
   - add additional arm cpu part numbers  [Ali Saidi]
   - add bios_family  [Huang Shijie]
   - add more sanity checks for dmi_decode_cputype()  [Huang Shijie]
   - check errno after strto..()  [Karel Zak]
   - do not use atoi()  [Karel Zak]
   - don't use DMI if executed with --sysroot  [Karel Zak]
   - fix NULL dereference  [Karel Zak]
   - fix build on powerpc  [Georgy Yakovlev]
   - fix compilation against librtas  [Karel Zak]
   - fix cppcheck warning [Uninitialized variable]  [Karel Zak]
   - get the processor information by DMI  [Huang Shijie]
   - read MHZ from /sys/.../cpufreq/scaling_cur_freq  [Karel Zak, Thomas Weißschu]
   - remove extra blank lines  [Karel Zak]
   - remove the old code  [Huang Shijie]
   - remove unintended change  [Karel Zak]
   - use MHZ as number to be locale sensitive  [Karel Zak]
   - use json types  [Thomas Weißschuh]
   - use locale-independent strtod() when read from kernel  [Karel Zak]
   - use optional json values  [Thomas Weißschuh]
lsfd:
   - (adoc) add more exapmles  [Masatake YAMATO]
   - (adoc) add proc(5) to SEE ALSO section  [Masatake YAMATO]
   - (adoc) put missing    at the end of options  [Masatake YAMATO]
   - (adoc) remove a redundant word  [Masatake YAMATO]
   - (adoc) reorder the options  [Masatake YAMATO]
   - (adoc) reorder the sections  [Masatake YAMATO]
   - (adoc) update DESCRIPTION  [Masatake YAMATO]
   - (adoc) write about filter expression  [Masatake YAMATO]
   - (adoc) write more about the -o option  [Masatake YAMATO]
   - (filter) accept % char as a part of column name  [Masatake YAMATO]
   - (filter) fix a memory leak  [Masatake YAMATO]
   - (filter) give a name to a constant  [Masatake YAMATO]
   - (filter) implement !~, an operator for regex unmatching  [Masatake YAMATO]
   - (filter) implement =~, an operator for regex matching  [Masatake YAMATO]
   - (filter) make error messages in check_type methods  [Masatake YAMATO]
   - (filter) make some data structures its source file local  [Masatake YAMATO]
   - (filter) whitespace cleanup  [Masatake YAMATO]
   - (helper) accept an integer argument for a parameter  [Masatake YAMATO]
   - (helper) add "dentries" parameter to directory factory  [Masatake YAMATO]
   - (helper) add "dir" parameter to directory factory  [Masatake YAMATO]
   - (helper) add "file" parameter to ro-regular-file factory  [Masatake YAMATO]
   - (helper) add "nonblock" parameter to pipe-no-fork factory  [Masatake YAMATO]
   - (helper) add "offset" parameter to ro-regular-file factory  [Masatake YAMATO]
   - (helper) allow to pass extra parameters  [Masatake YAMATO]
   - (helper) improve the code converting file descriptor numbers  [Masatake YAMATO]
   - (helper) set proper errno before calling err()  [Masatake YAMATO]
   - (helper) update examples in the help message  [Masatake YAMATO]
   - (helper) use more "const" modifiers  [Masatake YAMATO]
   - (test) add a case for displaying COMMAND column  [Masatake YAMATO]
   - (test) add a case for displaying DEV column  [Masatake YAMATO]
   - (test) add a case for displaying a character device  [Masatake YAMATO]
   - (test) add a case for displaying a directory  [Masatake YAMATO]
   - (test) add a case for displaying socket pairs  [Masatake YAMATO]
   - (test) add a case for displaying symlinks  [Masatake YAMATO]
   - (test) add a case for testing FLAGS (wronly,nonblock) column  [Masatake YAMATO]
   - (test) add a case for testing SIZE column  [Masatake YAMATO]
   - (test) add cases for displaying a regular file and pipe  [Masatake YAMATO]
   - (test) test POS column  [Masatake YAMATO]
   - Add initial man page  [Mario Blättermann]
   - Add new man page to po4a.cfg  [Mario Blättermann]
   - Fix typos in lsfd.c  [Mario Blättermann]
   - add --debug-filter option  [Masatake YAMATO]
   - add --dump-counters option  [Masatake YAMATO]
   - add --notruncate  [Karel Zak]
   - add --sysroot, use lib/path.c  [Karel Zak]
   - add CHRDRV column  [Masatake YAMATO]
   - add DEVTYPE column  [Masatake YAMATO]
   - add FLAGS, MNTID, and POS columns  [Masatake YAMATO]
   - add FUID and OWNER columns  [Masatake YAMATO]
   - add KTHREAD column  [Masatake YAMATO]
   - add MAPLEN column  [Masatake YAMATO]
   - add MISCDEV column  [Masatake YAMATO]
   - add MODE column  [Masatake YAMATO]
   - add NLINK and DELETED columns  [Masatake YAMATO]
   - add PARTITION column  [Masatake YAMATO]
   - add PROTONAME column  [Masatake YAMATO]
   - add a function to get the name of filesystem from a given minor number  [Masatake YAMATO]
   - add a helper function for building filter  [Masatake YAMATO]
   - add a helper function for reading bdevs in /prode/devices  [Masatake YAMATO]
   - add a stub for fifo type  [Masatake YAMATO]
   - add code for reading /proc/$pid/maps  [Masatake YAMATO]
   - add columns for DEV and RDEV  [Masatake YAMATO]
   - add columns for SIZE  [Masatake YAMATO]
   - add cwd, exe, and root associations  [Masatake YAMATO]
   - add filter engine  [Masatake YAMATO]
   - add infrstructure code for reading fdinfo files  [Masatake YAMATO]
   - add mem associations  [Masatake YAMATO]
   - add namespace related associations  [Masatake YAMATO]
   - add new man page to Makemodule.am  [Masatake YAMATO]
   - add reference to proc from file  [Karel Zak]
   - add stubs for sockets and files of unknown type  [Masatake YAMATO]
   - add the way to initialize and finalize classes  [Masatake YAMATO]
   - adjust column width for COMMAND  [Masatake YAMATO]
   - allow passing a proc object to the constructors of the file classes  [Masatake YAMATO]
   - change the license of the filtering engine to LGPL  [Masatake YAMATO]
   - check ul_strtou*() return code [coverity scan]  [Karel Zak]
   - cleanup --summary semantic  [Karel Zak]
   - cleanup collect_outofbox_files stuff  [Karel Zak]
   - cleanup fdinfo handling  [Karel Zak]
   - cleanup new file initialization  [Karel Zak]
   - collect threads level information if TID is specified in a filter  [Masatake YAMATO]
   - convert lines introducing local variable to a block with {...}  [Masatake YAMATO]
   - declare JSON type in colinfo entries  [Masatake YAMATO]
   - declare local variables at the beginning of block  [Masatake YAMATO]
   - delete an unnecessary semicolon  [Masatake YAMATO]
   - don't collect and print redundant information about threads  [Masatake YAMATO]
   - don't define a local variable in the middle of a block  [Masatake YAMATO]
   - don't duplicate ASSOC_EXE processing  [Karel Zak]
   - don't use 'long int' for file data  [Karel Zak]
   - don't use threads  [Masatake YAMATO]
   - fill ASSOC field  [Masatake YAMATO]
   - fill DEVICE field  [Masatake YAMATO]
   - fill INODE field  [Masatake YAMATO]
   - fill POS and MODE columns for SHM and MEM associated files  [Masatake YAMATO]
   - fill PROTONAME field of file for mmap'ed socket  [Masatake YAMATO]
   - fill TYPE field  [Masatake YAMATO]
   - fill UID column with the process's uid  [Masatake YAMATO]
   - fill UID field  [Masatake YAMATO]
   - fill USER field  [Masatake YAMATO]
   - fix ASSOC_EXE use, make file->association use more robust  [Karel Zak]
   - fix a typo in DEVTYPE description  [Masatake YAMATO]
   - fix a typo in comment  [Masatake YAMATO]
   - fix copy & past error [coverity scan]  [Karel Zak]
   - fix typo, rename function  [Karel Zak]
   - fix use-after-free and resource leak [coverity scan]  [Karel Zak]
   - function rename  [Karel Zak]
   - give column widths  [Masatake YAMATO]
   - implement --summary and --counter options  [Masatake YAMATO]
   - increase the threads to collect information  [Masatake YAMATO]
   - initial commit  [Masatake YAMATO]
   - introduce --source filter option  [Masatake YAMATO]
   - introduce -Q option for generic filtering  [Masatake YAMATO]
   - introduce -p/--pid option, pids filter working in the early stage  [Masatake YAMATO]
   - introduce DEVNAME column and use it as default  [Masatake YAMATO]
   - introduce a data structure for storing common fdinfo data  [Masatake YAMATO]
   - introduce fopenf helper function  [Masatake YAMATO]
   - introduce name_manager  [Masatake YAMATO]
   - introduce new association SHM representing shared file mapping  [Masatake YAMATO]
   - keep main() at the end of the code  [Karel Zak]
   - make sure we do not use uninitialized struct stat [coverity scan]  [Karel Zak]
   - make username_cache lsfd-file privaite  [Masatake YAMATO]
   - move file_class variants after their constructors  [Masatake YAMATO]
   - move list_free() to list.h  [Karel Zak]
   - move the code for reading /proc/devices to lsfd.c  [Masatake YAMATO]
   - optimize maps use  [Karel Zak]
   - optimize symlinks use  [Karel Zak]
   - print the owner of process as USER  [Masatake YAMATO]
   - purge fd layer  [Masatake YAMATO]
   - read /proc/partitions  [Masatake YAMATO]
   - read character driver names from /proc/devices  [Masatake YAMATO]
   - read misc character device names from /proc/misc  [Masatake YAMATO]
   - refactor  [Masatake YAMATO]
   - refactor code calling collect_outofbox_files  [Masatake YAMATO]
   - remove --source option  [Masatake YAMATO]
   - remove collect_file()  [Karel Zak]
   - remove duplicated an O_ flag entry  [Masatake YAMATO]
   - remove prototype decls for removed functions  [Masatake YAMATO]
   - remove redundant "nodev " prefix from DEVNAME column  [Masatake YAMATO]
   - remove struct fdinfo_data  [Karel Zak]
   - remove unused --sysroot  [Karel Zak]
   - remove unused code  [Karel Zak]
   - rename DEVNAME column to SOURCE  [Masatake YAMATO]
   - rename the column DEVICE to MAJ MIN  [Masatake YAMATO]
   - reorder function  [Karel Zak]
   - replace "socket " in NAME of SOCKET with its protoname  [Masatake YAMATO]
   - replace POS with MNT_ID in default column set  [Masatake YAMATO]
   - revert include/path.h use  [Karel Zak]
   - simplify class hierarchy  [Masatake YAMATO]
   - small cleanup to mountinfo/nodev code  [Karel Zak]
   - sort the enumerators about columns  [Masatake YAMATO]
   - specify column more declarative way  [Masatake YAMATO]
   - split new_file(), remove map_file_data  [Karel Zak]
   - support threads with -l option  [Masatake YAMATO]
   - tiny change to default colummns initialization  [Karel Zak]
   - unify nodev lists into global one  [Masatake YAMATO]
   - use 'new_' prefix when we allocate something  [Karel Zak]
   - use lib/procfs.c  [Karel Zak]
   - use new scols_line_get_column_data()  [Karel Zak]
   - use one function to all symlinks  [Karel Zak]
   - use only "/proc/#/maps" file  [Karel Zak]
   - use path_cxt to read process  [Karel Zak]
   - use the list of block devices in /proc/devices for decoding SOURCE column  [Masatake YAMATO]
   - wrap code for debugging with #ifdef DEBUG/#endif  [Masatake YAMATO]
lsfd.1.adoc:
   - Add missing underscores  [Mario Blättermann]
   - Fix markup  [Mario Blättermann]
   - Fix wording and markup  [Mario Blättermann]
   - Fix yet another entry in the filter examples list  [Mario Blättermann]
   - Improve punctuation and add translator comments  [Mario Blättermann]
   - add caution about the CLI stability  [Masatake YAMATO]
   - fix a typo  [Masatake YAMATO]
   - remove redundant parenthesis from the examples  [Masatake YAMATO]
lsfd.1.doc:
   - use delimited literal block notation in the EXAMPLE section  [Masatake YAMATO]
   - write anout --summary and --counter options  [Masatake YAMATO]
lsipc:
   - use lib/procfs.c  [Karel Zak]
lslocks:
   - add INODE and MAJ MIN columns  [Karel Zak]
   - check errno after strto..()  [Karel Zak]
   - check scanf() return code [coverity scan]  [Karel Zak]
   - use lib/procfs.c  [Karel Zak]
   - use snprintf() rather than sprintf()  [Karel Zak]
lslogins:
   - ask for supplementary groups only once [asan]  [Karel Zak]
   - check errno after strto..()  [Karel Zak]
   - consolidate and optimize utmp files use  [Karel Zak]
   - fix memory leak [asan]  [Karel Zak]
   - remove unwanted debug message  [Karel Zak]
   - use lib/procfs.c  [Karel Zak]
   - use sd_journal_get_data() in proper way  [Karel Zak]
lsmem:
   - check errno after strto..()  [Karel Zak]
lsns:
   - fill UID and USER columns for interpolated namespaces  [Masatake YAMATO]
   - fix compilation on old systems without linux/nsfs.h  [Karel Zak]
   - fix copy & past in man page  [Karel Zak]
   - fix old error message  [Karel Zak]
   - fix passing wrong process lists when showing ownerns and parentns  [Masatake YAMATO]
   - interpolate missing namespaces for converting forests to a tree  [Masatake YAMATO]
   - make --tree default, update man-page  [Karel Zak]
   - make namespace having no process printable  [Masatake YAMATO]
   - optimize mountinfo use  [Karel Zak]
   - print namespace tree based on the relationship (parent/child or owner/owned)  [Masatake YAMATO]
   - reorganize members specifying other namespaces in lsns_namespace  [Masatake YAMATO]
   - unify the code and option for printing process based tree and namespace based trees  [Masatake YAMATO]
   - use lib/procfs.c  [Karel Zak]
lspcu:
   - Print dummy modelname if none present  [Thomas Weißschuh]
man pages:
   - Fix punctuation, wording and markup  [Mario Blättermann]
mcookie:
   - fix infinite-loop when use -f  [Hiroaki Sengoku]
meson:
   - add missing header files check  [Karel Zak]
   - do not generate fstrim.service if we do not have systemd  [Martin Roukala (né Peres)]
   - fix bash_completion.get_variable() use  [Karel Zak]
   - fix building libsmartcols  [Alex Xu (Hello71)]
   - fix building logger  [Alex Xu (Hello71)]
   - fix crypt_activate_by_signed_key detection  [Luca Boccassi]
   - fix dlopen support for cryptsetup  [Luca Boccassi]
   - fix typo  [Karel Zak]
   - headers  Install headers  [Thomas Weißschuh]
   - headers  use util-linux version of version defines  [Thomas Weißschuh]
   - install examples to correct directory  [Thomas Weißschuh]
   - install manpages and bash completions  [Thomas Weißschuh]
   - keep bash-completion symlinks in variable  [Karel Zak]
   - make asciidoc optional  [Alex Xu (Hello71)]
   - make raw(7) optional  [Karel Zak]
   - only install pkgconfig if library is built  [Thomas Weißschuh]
misc:
   - consolidate stat() error message  [Karel Zak]
   - improve string to number conversions  [Karel Zak]
mkfs.cramfs:
   - add comment to explain readlink() use  [Karel Zak]
mkswap:
   - (adoc) suggest looking up page size portably  [Jakub Wilk]
   - add --quiet  [Karel Zak]
   - fix holes detection (infinite loop and/or stack-buffer-underflow)  [Karel Zak]
   - support -U {clear,random,time,uuid}  [Karel Zak]
more:
   - Calling open without checking return value [coverity scan]  [Karel Zak]
   - POSIX compliance patch preventing exit on EOF without -e  [Ian Jones]
   - add __format__ attribute  [Karel Zak]
   - clear SIGCHLD inherited setting  [Karel Zak]
   - fix -e in non-interactive mode  [Karel Zak]
   - fix null-pointer dereference  [Karel Zak]
   - fix setuid/setgid order  [Karel Zak]
   - improve zero size handling  [Tobias Stoeckmann]
   - use snprintf() rather than sprintf()  [Karel Zak]
mount:
   - (adoc) add hint about /proc and /sys to --all description  [Karel Zak]
   - (adoc) ext_N_ → ext__N__ [manpage-l10n]  [Karel Zak]
   - (adoc) fix comma splice  [Jakub Wilk]
   - (adoc) fix missing period [manpage-l10n]  [Karel Zak]
   - (adoc) mount → mount(2),  of → or [manpage-l10n]  [Karel Zak]
   - (man) fix example  [Karel Zak]
   - Allow bind-mounting with "nosymfollow"  [Jakub Wilk]
   - Fix race in loop device reuse code  [Jan Kara]
   - add -m,--mkdir as shortcut for X-mount.mkdir  [Karel Zak]
   - add hint about dmesg(8) to error messages  [Karel Zak]
   - add hint about systemctl daemon-reload  [Karel Zak]
   - fix roothash signature extension in manpage  [Luca Boccassi]
   - man-page; add all overlayfs options  [Tj]
   - mount.8 don't consider additional mounts as experimental  [Karel Zak]
   - mount.8 fix overlayfs nfs_export= indention  [Karel Zak]
   - use mnt_fs_is_regularfs()  [Karel Zak]
mount.8.adoc:
   - Remove context options exclusion  [Thiébaud Weksteen]
   - document SELinux use of nosuid mount flag  [Topi Miettinen]
   - fix misformatting  [Mario Blättermann]
   - note that mandatory locking is fully deprecated in Linux 5.15  [Jeff Layton]
mount_fuzz:
   - reject giant files early  [Evgeny Vereshchagin]
namei:
   - simplify code  [Karel Zak]
newgrp:
   - fix memory leak [coverity scan]  [Karel Zak]
nsenter:
   - Do not try to enter nonexisting namespaces when --all is used  [Yonatan Goldschmidt]
   - add --wdns to change working directory  [Karel Zak]
   - clear SIGCHLD inherited setting  [Karel Zak]
pg:
   - do not use atoi()  [Karel Zak]
po:
   - add sk.po (from translationproject.org)  [Jose Riha]
   - merge changes  [Karel Zak]
   - update cs.po (from translationproject.org)  [Petr Písař]
   - update de.po (from translationproject.org)  [Mario Blättermann]
   - update es.po (from translationproject.org)  [Antonio Ceballos Roa]
   - update pl.po (from translationproject.org)  [Jakub Bogusz]
   - update pt_BR.po (from translationproject.org)  [Rafael Fontenelle]
   - update sr.po (from translationproject.org)  [Мирослав Николић]
   - update zh_CN.po (from translationproject.org)  [Boyuan Yang]
prlimit:
   - fix compiler warning [-Wmaybe-uninitialized]  [Karel Zak]
   - improve --help output  [Karel Zak]
   - make syscall use more robust  [Karel Zak]
readprofile:
   - check errno after strto..()  [Karel Zak]
   - use snprintf() rather than sprintf()  [Karel Zak]
rename:
   - add --all and --last parameters  [Todd Lewis]
   - size_t, mutually exclusive parameters  [Todd Lewis]
   - stop after count changes  [Todd Lewis]
   - use readlink() in more robust way  [Karel Zak]
rfkill:
   - Set scols table name to make the json output valid  [Nicolai Dagestad]
   - quit when read end of stdout is closed  [Mickey Rose]
script:
   - (adoc) improve man page readability  [Karel Zak]
   - add COMMAND= to log header  [Karel Zak, Henrik Bach]
   - add __format__ attribute  [Karel Zak]
   - add separator to header, update tests  [Karel Zak]
   - don't use \n when we log COMMAND  [Karel Zak]
script.1.adoc:
   - correct socond as second  [Vicente Jimenez Aguilar]
setterm:
   - (man) improve dosc about optional arguments  [Karel Zak]
sfdisk:
   - fix typo in --move-data when check partition size  [Karel Zak]
   - update docs, add examples to the man page  [Karel Zak]
   - write empty label also when only ignored partition specified  [Karel Zak]
sfdisk man:
   - Escape ((…)) to avoid AsciiDoc interpreting and stripping from manpage  [Paul Sarena]
su:
   - (bash-completion) offer usernames rather than files  [Karel Zak]
   - Verify default SIGCHLD handling.  [Tobias Stoeckmann]
   - reset RLIMIT_AS too  [Karel Zak]
   - reset RLIMIT_{NICE,RTPRIO} to zero  [Karel Zak]
   - reset also RLIMIT_FSIZE and RLIMIT_NOFILE  [Karel Zak]
   - use LOG_PID for syslog  [Sam James]
sulogin:
   - Display all kinds of errno during password input.  [Shigeki Morishima]
   - add missing ifdefs  [Karel Zak]
   - fix compiler warning [-Werror=implicit-fallthrough=]  [Karel Zak]
   - fix whitespace error  [Karel Zak]
   - ignore none-existing console devices  [Werner Fink]
   - use explicit_bzero() for buffer with password  [Karel Zak]
swapon:
   - do not use atoi()  [Karel Zak]
sys-utils/ipcutils:
   - be careful when call calloc() for uint64 nmembs  [Karel Zak]
sysfs:
   - fallback for partitions not including parent name  [Portisch]
taskset:
   - use lib/procfs.c  [Karel Zak]
test/eject:
   - guard asan LD_PRELOAD with use-system-commands check  [Ross Burton]
test_mount_optstr:
   - use xstrdup()  [Karel Zak]
tests:
   - (hardlink) add info about number of files to test  [Karel Zak]
   - (logger) check for socat  [Karel Zak]
   - (lsfd) add a case for listing a fd opening a block device  [Masatake YAMATO]
   - (lsfd) add a factory for opening a block device to the helper command  [Masatake YAMATO]
   - (lsfd) call ts_skip_nonroot earlier  [Masatake YAMATO]
   - (lsfd) don't compare inodes  [Masatake YAMATO]
   - (lsfd) fix file descriptor leaks reported by coverity  [Masatake YAMATO]
   - (lsfd) give missing test descriptions  [Masatake YAMATO]
   - (lsfd) make DGRAM socketpair to mitigate the change of protoname  [Masatake YAMATO]
   - (lsfd) normalize protoname before comparing  [Masatake YAMATO]
   - Fix test/misc/swaplabel failure due to change in mkswap behaviour.  [Mark Hindley]
   - Skip lsns/ioctl_ns test if unshare fails  [Chris Hofstaedtler]
   - add rv64 lscpu test  [Karel Zak]
   - add tests for dm-verity support in mount  [Vojtěch Eichler]
   - check correct log file for errors in blkdiscard test  [Ross Burton]
   - check for dm-verity support  [Karel Zak]
   - don't hardcode /bin/kill in the kill tests  [Ross Burton]
   - fdisk  Layout with more details  [Pali Rohár]
   - fdisk  Update CHS values in MBR partitions  [Pali Rohár]
   - fix fdisk/bsd on big endian systems (tested on sparc64 and ppc64)  [Anatoly Pugachev]
   - fix lsns test on kernels without USER namespaces  [Anatoly Pugachev]
   - make ./run.sh more robust  [Karel Zak]
   - make eject umount tests more robust  [Karel Zak]
   - make mount/fstab-all more robust  [Karel Zak]
   - make use of subtests  [Vojtěch Eichler]
   - mark ul/ul as a known failure  [Ross Burton]
   - skip if scsi_debug model file is not accessible  [Karel Zak]
   - split additional tests into subtests  [Vojtěch Eichler]
   - split cal/color test into subtests  [Vojtěch Eichler]
   - split cal/colorw test into subtests  [Vojtěch Eichler]
   - split several tests into subtests  [Vojtěch Eichler]
   - split test into subtest  [Vojtěch Eichler]
   - update build-sys test  [Karel Zak]
   - update hardlink --maximum-size  [Karel Zak]
   - update hardlink output  [Karel Zak]
   - update lscpu output  [Karel Zak]
   - update lscpu outputs  [Karel Zak]
   - update mountinfo files  [Karel Zak]
   - update sfdisk reorder test  [Karel Zak]
   - use sub-tests for dm-verity  [Karel Zak]
   - use subtests  [Vojtěch Eichler]
tests/eject:
   - check for root perms at beginning  [Karel Zak]
tools:
   - allow to update specific files on kernel.org  [Karel Zak]
   - report and use LDFLAGS in tools/config-gen  [Karel Zak]
tools/git-version-gen:
   - use NEWS as a fallback  [Karel Zak]
uclampset:
   - Fix left over optind++  [Qais Yousef]
   - use lib/procfs.c  [Karel Zak]
unshare:
   - Add option to automatically create user and group maps  [Sean Anderson]
   - Add options to map blocks of user/group IDs  [Sean Anderson]
   - Add some helpers for forking and synchronizing  [Sean Anderson]
   - Add waitchild helper  [Sean Anderson]
   - Document --map-{groups,users,auto}  [Sean Anderson]
   - Fix PDEATHSIG race for --kill-child  [Earl Chew]
   - Fix doc comments  [Sean Anderson]
   - Propagate inherited signal handling to forked child  [Earl Chew]
   - clear SIGCHLD inherited setting  [Karel Zak]
   - fix memory leak [coverity scan]  [Karel Zak]
   - fix typo in uint_to_id()  [Karel Zak]
unshare.1.adoc:
   - Improve wording re creation of bind mounts  [Michael Kerrisk]
   - Improve wording re namespace creation  [Michael Kerrisk]
utmpdump:
   - do not use atoi()  [Karel Zak]
   - don't ignore sscanf() return code [coverity scan]  [Karel Zak]
uuidd:
   - Whitelist libuuid clock file  [Stanislav Brabec]
   - fix open/lock state issue  [Karel Zak]
   - use snprintf() rather than sprintf()  [Karel Zak]
uuidgen.1.adoc:
   - mention uuidparse in SEE ALSO  [Bruno Heridet]
verity:
   - add support for corruption action flag  [Luca Boccassi]
   - fix verity.roothashsig only working as last parameter  [Luca Boccassi]
   - remove experimental tag from mount manpage  [Luca Boccassi]
vipw:
   - flush stdout before getting answer.  [Érico Nogueira]
   - improve child error handling  [Tobias Stoeckmann]
   - use snprintf() rather than sprintf()  [Karel Zak]
wall:
   - add __format__ attribute  [Karel Zak]
   - use xgetlogin.  [Érico Nogueira]
wdctl:
   - Workaround reported boot-status bits not being present in wd->ident.options  [Hans de Goede]
   - add --setpregovernor  [Karel Zak]
   - add --setpretimeout  [Karel Zak]
   - print the current and available governors  [Karel Zak]
   - set_watchdog() refactoring  [Karel Zak]
   - sysfs open refactoring  [Karel Zak]
   - update man page  [Karel Zak]
whereis:
   - use commands for Bash completions  [Smitty]
wipefs:
   - check errno after strto..()  [Karel Zak]
write:
   - use snprintf() rather than sprintf()  [Karel Zak]
zramctl:
   - add zstd compression algorithm option  [Jan Samek]
   - improve usage() output  [Karel Zak]

