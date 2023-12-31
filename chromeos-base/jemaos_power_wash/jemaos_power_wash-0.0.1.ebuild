# Copyright (c) 2023 Jema Innovations Limited and the openjema Authors.
# Distributed under the license specified in the root directory of this project.

EAPI="7"

DESCRIPTION="add power wash command to usr/local/sbin"
HOMEPAGE="http://jemakey.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

S=${WORKDIR}

src_install() {
  exeinto /usr/sbin
  doexe ${FILESDIR}/clobber 
}
