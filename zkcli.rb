class Zkcli < Formula
  desc "Non-interactive CLI for Zookeeper"
  homepage "https://github.com/szabado/go-tools/tree/main/cmd/zkcli"
  url "https://github.com/szabado/go-tools/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "b38bf32bf7a3f12342a09bc3f7059d30221f0b494feaf5827736166c923d115a"

  def install
    system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build ./cmd/zkcli"
    bin.install "zkcli" => "zkcli"
  end

  test do
    system "#{bin}/zkcli", "--help"
  end
end
