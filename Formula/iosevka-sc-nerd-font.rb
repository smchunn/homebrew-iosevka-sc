class IosevkaScNerdFont < Formula
  desc "Iosevka SC custom build patched with Nerd Fonts"
  homepage "https://github.com/smchunn/iosevka-sc"
  url "https://github.com/smchunn/iosevka-sc/releases/download/v0.0.0/iosevka-sc-nerd-font-v0.0.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "0.0.0"

  def install
    (share/"fonts").install Dir["*.ttf"]
  end

  test do
    assert_path_exists share/"fonts"
  end
end
