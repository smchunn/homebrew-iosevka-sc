cask "font-iosevka-sc-nerd-font" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/smchunn/homebrew-iosevka-sc/releases/download/v#{version}/iosevka-sc-nerd-font-v#{version}.tar.gz"
  name "Iosevka SC Nerd Font"
  desc "Iosevka SC custom build patched with Nerd Fonts"
  homepage "https://github.com/smchunn/homebrew-iosevka-sc"

  font "*.ttf"

  # No zap stanza required for fonts
end
