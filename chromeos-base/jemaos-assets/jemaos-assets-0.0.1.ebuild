# Copyright (c) 2023 Jema Innovations Limited and the openJema Authors.
# Distributed under the license specified in the root directory of this project.

EAPI=7

inherit toolchain-funcs

DESCRIPTION="Jemaos-specific assets"
LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""
S="${FILESDIR}"

# Force devs to uninstall assets-split first.
RDEPEND="!chromeos-base/chromeos-assets-split"

DEPEND="${RDEPEND}"

src_install() {
	insinto /usr/share/chromeos-assets/images
	doins -r "${FILESDIR}"/images/*

	insinto /usr/share/chromeos-assets/images_100_percent
	doins -r "${FILESDIR}"/images_100_percent/*

	insinto /usr/share/chromeos-assets/images_200_percent
	doins -r "${FILESDIR}"/images_200_percent/*

	insinto /usr/share/chromeos-assets/screensavers
	doins -r "${FILESDIR}"/screensavers/*

	insinto /usr/share/chromeos-assets/wallpaper
	doins -r "${FILESDIR}"/wallpaper/*
}
