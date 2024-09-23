class Zkcli < Formula
  desc "Non-interactive CLI for Zookeeper"
  homepage "https://github.com/szabado/go-tools/tree/main/cmd/zkcli"
  url "https://github.com/szabado/go-tools/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fa458873ee641a281f98834f87561d45995bcea9629b1f3db6ac1e9e4eaa4acd"

  def install
    system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build ./cmd/zkcli"
    bin.install "zkcli" => "zkcli"
  end

  test do
    system "#{bin}/zkcli", "--help"
  end
end
