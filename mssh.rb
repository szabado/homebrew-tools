class Mssh < Formula
  desc "A tool for running multiple commands and ssh jobs in parallel, and easily collecting the results."
  homepage "https://github.com/szabado/go-tools/tree/main/cmd/mssh"
  url "https://github.com/szabado/go-tools/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fa458873ee641a281f98834f87561d45995bcea9629b1f3db6ac1e9e4eaa4acd"

  def install
    system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build ./cmd/mssh"
    bin.install "mssh" => "mssh"
  end

  test do
    system "#{bin}/mssh", "--help"
  end
end
