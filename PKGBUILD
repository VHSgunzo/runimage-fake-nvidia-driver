# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-nvidia-utils'
pkgver='0.4'
pkgrel='1'
pkgbase="$pkgname"
pkgdesc='Fake nvidia-utils for Bubblewrap RO container binding'
url="https://github.com/VHSgunzo"
arch=('x86_64')
license=('MIT')
conflicts=('lib32-nvidia-utils' 'nvidia-utils')
provides=('lib32-nvidia-utils' 'nvidia-utils')
source=('fake-nvidia-utils.tar.gz')
sha256sums=('a5280521ef3a024986dd7710a08fd428d1faa9bb31ea6d7e57769c2c3e881175')

package() {
  cp -rf usr "${pkgdir}/"
  cp -rf etc "${pkgdir}/"
}
