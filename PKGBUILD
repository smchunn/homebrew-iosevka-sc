# Maintainer: smchunn
pkgname=ttf-iosevka-sc
pkgver=33.3.1
pkgrel=1
pkgdesc="Custom build of Iosevka"
arch=('any')
url="https://github.com/smchunn/iosevka-sc"
license=('OFL')
depends=()
provides=('ttf-font')
conflicts=()
source=("https://github.com/smchunn/iosevka-sc/releases/download/v${pkgver}/iosevka-sc-v${pkgver}.tar.gz")
sha256sums=('0bb41de806a7af6f72948558e6d65becceef6b94aa81d61f90f01919612673fc')

package() {
    install -dm755 "${pkgdir}/usr/share/fonts/TTF"
    install -m644 *.ttf "${pkgdir}/usr/share/fonts/TTF/"
}
