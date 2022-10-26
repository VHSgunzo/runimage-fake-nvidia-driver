# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-nvidia-utils'
pkgver='0.3'
pkgrel='1'
pkgbase="$pkgname"
pkgdesc='Fake nvidia-utils for Bubblewrap RO container binding'
url="https://github.com/VHSgunzo"
arch=('x86_64')
license=('MIT')
conflicts=('lib32-nvidia-utils' 'nvidia-utils')
provides=('lib32-nvidia-utils' 'nvidia-utils')
source=('fake-nvidia-utils.tar.gz')
sha256sums=('344fe786554f562553c3786ce112ee5e1fc9e5f55f97787865b2c297a872db53')

package() {
  cp -rf usr "${pkgdir}/"
  cp -rf etc "${pkgdir}/"
}
