# Maintainer: smchunn
pkgname=iosevka-sc-nerd-font
pkgver=0.0.0
pkgrel=1
pkgdesc="Iosevka SC custom build patched with Nerd Fonts"
arch=('any')
url="https://github.com/smchunn/iosevka-sc"
license=('OFL')
depends=()
provides=('ttf-font' 'iosevka-sc-nerd-font')
conflicts=()
source=("https://github.com/smchunn/iosevka-sc/releases/download/v${pkgver}/iosevka-sc-nerd-font-v${pkgver}.tar.gz")
sha256sums=('0000000000000000000000000000000000000000000000000000000000000000')

package() {
    install -dm755 "${pkgdir}/usr/share/fonts/TTF"
    install -m644 *.ttf "${pkgdir}/usr/share/fonts/TTF/"
}
