# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-nvidia-utils'
pkgver='0.2'
pkgrel='1'
pkgbase="$pkgname"
pkgdesc='Fake nvidia-utils for Bubblewrap RO container binding'
url="https://github.com/VHSgunzo"
arch=('x86_64')
license=('MIT')
conflicts=('lib32-nvidia-utils' 'nvidia-utils')
provides=('lib32-nvidia-utils' 'nvidia-utils')
source=('fake-nvidia-utils.tar.gz')
sha256sums=('8c95c8fb96c10af0a6068ecdcf3a8c1e10e07b95c509488a451547d6dd3ff886')

package() {
  cp -rf usr "${pkgdir}/"
  #cp -rf etc "${pkgdir}/"
}
