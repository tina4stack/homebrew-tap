class Tina4 < Formula
  desc "Unified CLI for the Tina4 framework — Python, PHP, Ruby, Node.js"
  homepage "https://tina4.com"
  license "MIT"
  version "3.8.88"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tina4stack/tina4/releases/download/v3.8.88/tina4-darwin-arm64"
      sha256 "f7a2d534816e9571699d48ff2421a3076170a5d8da36031d1ebabfccd5b9ab1a"
    else
      url "https://github.com/tina4stack/tina4/releases/download/v3.8.88/tina4-darwin-amd64"
      sha256 "050029ea5d30bc3b0b274dbf5212397929a976d6c3189c9566a4ef6a1636bb8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tina4stack/tina4/releases/download/v3.8.88/tina4-linux-arm64"
      sha256 "957ac214320b06c0ba6ee0e8e444de1aef3332a3101293562d8c9413f173a6bd"
    else
      url "https://github.com/tina4stack/tina4/releases/download/v3.8.88/tina4-linux-amd64"
      sha256 "ea59826247768b7b3ae358624f042d37acb4faa68afcf06a7f47061092db550d"
    end
  end

  def install
    bin.install Dir["tina4*"].first => "tina4"
  end

  test do
    assert_match "tina4", shell_output("#{bin}/tina4 --version")
  end
end
