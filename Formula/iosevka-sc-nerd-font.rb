class IosevkaScNerdFont < Formula
  desc "Iosevka SC custom build patched with Nerd Fonts"
  homepage "https://github.com/smchunn/iosevka-sc"
  url "https://github.com/smchunn/iosevka-sc/releases/download/v33.3.1/iosevka-sc-nerd-font-v33.3.1.tar.gz"
  sha256 "f83b2c4f9d1a7c8641eacbc28dbc556f969c5a82634f9a0544d9c68493cde37e"
  version "v33.3.1"

  def install
    (share/"fonts").install Dir["*.ttf"]
  end

  test do
    assert_path_exists share/"fonts"
  end
end
