# Maintainer: smchunn
pkgname=iosevka-sc-nerd-font
pkgver=33.3.1
pkgrel=1
pkgdesc="Iosevka SC custom build patched with Nerd Fonts"
arch=('any')
url="https://github.com/smchunn/iosevka-sc"
license=('OFL')
depends=()
provides=('ttf-font' 'iosevka-sc-nerd-font')
conflicts=()
source=("https://github.com/smchunn/iosevka-sc/releases/download/v${pkgver}/iosevka-sc-nerd-font-v${pkgver}.tar.gz")
sha256sums=('f83b2c4f9d1a7c8641eacbc28dbc556f969c5a82634f9a0544d9c68493cde37e')

package() {
    install -dm755 "${pkgdir}/usr/share/fonts/TTF"
    install -m644 *.ttf "${pkgdir}/usr/share/fonts/TTF/"
}
