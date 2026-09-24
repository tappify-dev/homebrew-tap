class Tappify < Formula
  desc "Tappify CLI - Command line interface for managing deployments and more"
  homepage "https://docs.tappify.ai"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.5.1/tappify-macos-arm64"
      sha256 "6d5e6f3b5beaff1eb2922b92ca49dcaf50bb4a7680c5344e60a326b117965d26"
    end
    on_intel do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.5.1/tappify-macos-x64"
      sha256 "f3c34a27b0c93b8478c3669335dbbe2622b58683e8b89b15af44d953c94653e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.5.1/tappify-linux-arm64"
      sha256 "395555f006636f7e1b5a7357881780121eda2a60f5ae22d8df365decd7aa0e3b"
    end
    on_intel do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.5.1/tappify-linux-x64"
      sha256 "c3bb2280d37071590c72ea6195cb8bdaabf7c02270d3489cf8dab771c60ced7b"
    end
  end

  def install
    bin.install Dir["tappify-*"].first => "tappify"
  end

  test do
    assert_match "tappify", shell_output("#{bin}/tappify --help")
  end
end
