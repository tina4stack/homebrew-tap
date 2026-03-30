class Tina4 < Formula
  desc "Unified CLI for the Tina4 framework — Python, PHP, Ruby, Node.js"
  homepage "https://tina4.com"
  license "MIT"
  version "3.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tina4stack/tina4/releases/download/v3.7.0/tina4-darwin-arm64"
      sha256 "3002e6446008c5fe97fa4d4b3e159ca78d9a3f3f4052873e1b3d7bfd0b23fd76"
    else
      url "https://github.com/tina4stack/tina4/releases/download/v3.7.0/tina4-darwin-amd64"
      sha256 "3f4fc4a32f44063f6a30734266b3dc35d6f6a2a02fa3f3bfe39108de595565ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tina4stack/tina4/releases/download/v3.7.0/tina4-linux-arm64"
      sha256 "3500f3717a6c0e8685a6326aa88ccebfc1c5cbc58710ef75f7f0ca880f457715"
    else
      url "https://github.com/tina4stack/tina4/releases/download/v3.7.0/tina4-linux-amd64"
      sha256 "632cc426299bbf9cb03136def630766203fb849616aa037f989193d82607a95d"
    end
  end

  def install
    bin.install Dir["tina4*"].first => "tina4"
  end

  test do
    assert_match "tina4", shell_output("#{bin}/tina4 --version")
  end
end
