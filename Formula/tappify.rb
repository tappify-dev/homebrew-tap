class Tappify < Formula
  desc "Tappify CLI - Command line interface for managing deployments and more"
  homepage "https://docs.tappify.ai"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.7.0/tappify-macos-arm64"
      sha256 "910e697a4938891b6a81739fa87522bc942325c947bd7e0e09e850563d7a1086"
    end
    on_intel do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.7.0/tappify-macos-x64"
      sha256 "7ec872c270d4c130d9a8e200a02b4a92907b308d1c288030bab588f665e4987f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.7.0/tappify-linux-arm64"
      sha256 "403a63ee3b5d25fa6c53d7f56ae37883af1480f53d725a0fc44f65d078e4bda8"
    end
    on_intel do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.7.0/tappify-linux-x64"
      sha256 "396a2097a765c3a8c7d3597c2695585ae2f535f560abdcbd7c6cd96f15b1b641"
    end
  end

  def install
    bin.install Dir["tappify-*"].first => "tappify"
  end

  test do
    assert_match "tappify", shell_output("#{bin}/tappify --help")
  end
end
