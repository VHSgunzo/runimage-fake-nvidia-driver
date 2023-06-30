# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-nvidia-utils'
pkgver='0.7'
pkgrel='1'
pkgbase="$pkgname"
pkgdesc='Fake nvidia-utils for RunImage container'
url="https://github.com/VHSgunzo/runimage-fake-nvidia-utils"
arch=('x86_64')
license=('MIT')
conflicts=('lib32-nvidia-utils' 'nvidia-utils')
provides=('lib32-nvidia-utils' 'nvidia-utils' 'NVIDIA-MODULE')
source=('fake-nvidia-utils.tar.gz')
sha256sums=('SKIP')

package() {
  cp -rf usr "${pkgdir}/"
  cp -rf etc "${pkgdir}/"
}
