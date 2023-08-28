# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-nvidia-driver'
pkgver='0.8'
pkgrel='1'
pkgbase="$pkgname"
pkgdesc='Fake Nvidia driver for RunImage container'
url="https://github.com/VHSgunzo/runimage-fake-nvidia-driver"
arch=('x86_64')
license=('MIT')
conflicts=(
  'lib32-nvidia-utils' 'nvidia-utils'
  'lib32-opencl-nvidia' 'opencl-nvidia'
)
provides=("${conflicts[@]}" 'NVIDIA-MODULE')
source=('fake-nvidia-driver.tar.gz')
sha256sums=('SKIP')

package() {
  cp -rf usr "${pkgdir}/"
  cp -rf etc "${pkgdir}/"
}
