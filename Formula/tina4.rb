class Tina4 < Formula
  desc "Unified CLI for the Tina4 framework — Python, PHP, Ruby, Node.js"
  homepage "https://tina4.com"
  license "MIT"
  version "3.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tina4stack/tina4/releases/download/v3.8.0/tina4-darwin-arm64"
      sha256 "e09837e3d3b40771dc8a88d4cb07fd6be95c78cbcac4ebec622a9c5d537ff3cb"
    else
      url "https://github.com/tina4stack/tina4/releases/download/v3.8.0/tina4-darwin-amd64"
      sha256 "63965bf6afc5c4188a691267f38d533357852c3ccd876cae77cab2a9d89994e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tina4stack/tina4/releases/download/v3.8.0/tina4-linux-arm64"
      sha256 "b817ce56d2d4e7371608072daf66c5c3194f09fc333293c83bad16f36e6f0039"
    else
      url "https://github.com/tina4stack/tina4/releases/download/v3.8.0/tina4-linux-amd64"
      sha256 "24a357b3f5d0dc108ac34052f2c25433fcfb46b448d7c9eae0a8d3b53f72530f"
    end
  end

  def install
    bin.install Dir["tina4*"].first => "tina4"
  end

  test do
    assert_match "tina4", shell_output("#{bin}/tina4 --version")
  end
end
