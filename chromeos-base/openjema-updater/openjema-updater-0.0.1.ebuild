# Copyright (c) 2023 The Jema OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

inherit user

DESCRIPTION="empty project"
HOMEPAGE="http://jemakey.com"

LICENSE="BSD-Jema"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
    exeinto "/usr/sbin"
    doexe ${FILESDIR}/openjema-updater.sh
}
