Return-Path: <util-linux-owner@vger.kernel.org>
X-Original-To: lists+util-linux@lfdr.de
Delivered-To: lists+util-linux@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A0B114A0A0
	for <lists+util-linux@lfdr.de>; Mon, 27 Jan 2020 10:23:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729211AbgA0JXj (ORCPT <rfc822;lists+util-linux@lfdr.de>);
        Mon, 27 Jan 2020 04:23:39 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:41856 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729309AbgA0JXj (ORCPT
        <rfc822;util-linux@vger.kernel.org>); Mon, 27 Jan 2020 04:23:39 -0500
Received: by mail-wr1-f67.google.com with SMTP id c9so10233949wrw.8;
        Mon, 27 Jan 2020 01:23:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iB179YEXMH0Yt0ro4mYymZKjwvAi7/XXsGDXQ0hTWsI=;
        b=VWSrV4y/9wy3WrU/Azy97yOGDoWlnH3h4/V9xIeTuh3cX/UTGRZqnG+rd3GIyovyCU
         +PBM/Sz3P5hBcbGNOKn7mIJBslhLV9i4rDsXTM41icEiygicm+51wccT+DjyX8v9gpHY
         vHMtlcjzeGGnCGzd7UcFx0YV7oz6RzyVo3rDjsk0f/zO86vPjotPDIM/xRlEjBNfC/TE
         /Fa0S8FZwsTVgMVNF4EazsiVIqAEOJVIFaFTSYPgueM5L/CBGClzzkTrtwPzCMRkCDnZ
         gw6NMzw9LdOLcoLgLtfBN2ZOSUCNZL1PyhJx+It/Tzcpro3FTVAHMca5cfJhVF7+aKcK
         Lq7g==
X-Gm-Message-State: APjAAAWY7g3WfhmZFOUUVKG+AjM/KLNuzsUMxqz993osXigPo2dWN7Eb
        a/LwcJ4k0rW4wiFw8oJWZ24=
X-Google-Smtp-Source: APXvYqxBL2+UZXYovhxnLlgmNuemevZWEkeU9+AkHbPfVxM5zIbKMiTMST3nLI2PnOgVNp/EGaWouA==
X-Received: by 2002:a05:6000:1052:: with SMTP id c18mr20075996wrx.268.1580117017259;
        Mon, 27 Jan 2020 01:23:37 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
        by smtp.gmail.com with ESMTPSA id m10sm20048223wrx.19.2020.01.27.01.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 01:23:36 -0800 (PST)
Date:   Mon, 27 Jan 2020 10:23:34 +0100
From:   Michal Hocko <mhocko@kernel.org>
To:     "Fontenot, Nathan" <ndfont@gmail.com>
Cc:     David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org, Dan Williams <dan.j.williams@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        powerpc-utils-devel@googlegroups.com, util-linux@vger.kernel.org,
        Badari Pulavarty <pbadari@us.ibm.com>,
        Robert Jennings <rcj@linux.vnet.ibm.com>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        Karel Zak <kzak@redhat.com>
Subject: Re: [PATCH RFC] drivers/base/memory.c: indicate all memory blocks as
 removable
Message-ID: <20200127092334.GB1183@dhcp22.suse.cz>
References: <20200124155336.17126-1-david@redhat.com>
 <ddb71703-81fa-53fe-51de-c018612f2704@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ddb71703-81fa-53fe-51de-c018612f2704@gmail.com>
Sender: util-linux-owner@vger.kernel.org
Precedence: bulk
List-ID: <util-linux.vger.kernel.org>
X-Mailing-List: util-linux@vger.kernel.org

On Fri 24-01-20 13:10:22, Fontenot, Nathan wrote:
> It's been awhile since I've looked at the powerpc-utils drmgr command and
> pseries DLPAR code but a quick scan makes and it appears that it hasn't changed
> too much. Given that, some thoughts.
> 
> The sysfs 'removable' file was a great help when memory DLPAR was driven
> from userspace in the powerpc-utils drmgr command. Having this check did improve
> performance though I can't point to any numbers.

Do you still have an access to the HW to give it a try?

> Currently, memory DLPAR is done completely in the kernel. The request is
> initiated from drmgr writing to /sys/kernel/dlpar (for pHyp partitions)
> or from a hotplug interrupt (for guests). I don't believe the 'removable'
> sysfs file is used in either of these paths by drmgr. The only time it is
> used is on older kernels that do not support in-kernel memory DLPAR.
> 
> Given this, I don't think removing the 'removable' sysfs file would cause any
> issues for the drmgr command. The only scenario I can think of is using an old
> version of drmgr that does not support in-kernel memory DLPAR on a new kernel
> where the 'removable' sysfs file has been removed. This doesn't seem likely
> though and drmgr could be updated to detect this.

Thanks for the information!
-- 
Michal Hocko
SUSE Labs
