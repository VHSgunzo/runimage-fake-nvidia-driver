# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-nvidia-driver'
pkgver='0.9'
pkgrel='2'
pkgdesc='Fake Nvidia driver for RunImage container'
url="https://github.com/VHSgunzo/runimage-fake-nvidia-driver"
arch=('x86_64')
license=('MIT')
conflicts=(
  'nvidia-libgl'
  'lib32-nvidia-utils' 'nvidia-utils'
  'lib32-opencl-nvidia' 'opencl-nvidia'
)
replaces=('nvidia-libgl')
provides=("${conflicts[@]}" 'NVIDIA-MODULE' 'vulkan-driver' 'lib32-vulkan-driver')

source=('fake-nvidia-driver.tar')
sha256sums=('SKIP')

package() {
  cp -rf usr "${pkgdir}/"
  cp -rf etc "${pkgdir}/"
}
