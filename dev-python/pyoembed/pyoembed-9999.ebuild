# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# FIXME: add tests

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Python library for oEmbed with auto-discovered and manually added providers."
HOMEPAGE="https://github.com/rafaelmartins/pyoembed"

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
KEYWORDS="~amd64 ~x86"
if [[ ${PV} = *9999* ]]; then
	SRC_URI=
	KEYWORDS=
	EGIT_REPO_URI="git://github.com/rafaelmartins/pyoembed.git
		https://github.com/rafaelmartins/pyoembed.git"
	inherit git-r3
fi

LICENSE="BSD"
SLOT="0"
IUSE=""

DEPEND="
	dev-python/requests
	dev-python/beautifulsoup:4"
RDEPEND="${DEPEND}"