class Tappify < Formula
    desc "Tappify CLI - Deploy and manage your Tappify applications"
    homepage "https://github.com/tappify-dev/cli"
    url "https://github.com/tappify-dev/cli/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "placeholder"
    license "MIT"
    version "0.0.1"

    depends_on "node@22"

    def install
      system "npm", "install", "--production"
      libexec.install Dir["*"]
      bin.install_symlink libexec/"bin/tappify"
    end

    test do
      assert_match "Usage", shell_output("#{bin}/tappify --help")
    end
  end