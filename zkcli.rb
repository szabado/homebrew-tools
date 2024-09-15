class Zkcli < Formula
  desc "Non-interactive CLI for Zookeeper"
  homepage "https://github.com/szabado/zkcli"
  url "https://github.com/szabado/zkcli/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "d1a2abf6b61313e9d98277c8fb0785e2e28357106d64bffc446ae0317d2c48f8"

  def install
    system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build"
    bin.install "zkcli" => "zkcli"
  end

  test do
    system "#{bin}/zkcli", "--help"
  end
end
