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
sha256sums=('c0b15b37cbe7433de2e91df3ffd83b420d97fef6a18895259c00c6cf4659a784')

package() {
  cp -rf usr "${pkgdir}/"
  #cp -rf etc "${pkgdir}/"
}
