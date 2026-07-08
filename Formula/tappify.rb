class Tappify < Formula
    desc "Tappify CLI - Deploy and manage your Tappify applications"
    homepage "https://github.com/tappify-dev/cli"
    url "https://github.com/tappify-dev/cli/archive/refs/tags/v1.4.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    license "MIT"
    version "1.4.0"

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