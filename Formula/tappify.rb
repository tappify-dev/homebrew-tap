class Tappify < Formula
  desc "Tappify CLI - Command line interface for managing deployments and more"
  homepage "https://docs.tappify.ai"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.6.1/tappify-macos-arm64"
      sha256 "af9f5772af1a8b1ddc131d906be072964f548ac0b91553d6d9108da5a6ece1d9"
    end
    on_intel do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.6.1/tappify-macos-x64"
      sha256 "933af500dd13e3c6bb6b4c11707f5166ac73259e2608857338091567cece11b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.6.1/tappify-linux-arm64"
      sha256 "a336707776b331c553145c57ed96b42d659586f8623b7a8c99ea3e023e3cb1f9"
    end
    on_intel do
      url "https://github.com/tappify-dev/cli-releases/releases/download/v1.6.1/tappify-linux-x64"
      sha256 "8f8b73ada508974021de625d7e7bb25f58f57a6ae439e8df2fbcbc3b9f35af0b"
    end
  end

  def install
    bin.install Dir["tappify-*"].first => "tappify"
  end

  test do
    assert_match "tappify", shell_output("#{bin}/tappify --help")
  end
end
