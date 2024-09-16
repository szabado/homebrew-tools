class Mssh < Formula
  desc "A tool for running multiple commands and ssh jobs in parallel, and easily collecting the results."
  homepage "https://github.com/szabado/go-tools/tree/main/cmd/mssh"
  url "https://github.com/szabado/go-tools/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "b38bf32bf7a3f12342a09bc3f7059d30221f0b494feaf5827736166c923d115a"

  def install
    system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build ./cmd/mssh"
    bin.install "mssh" => "mssh"
  end

  test do
    system "#{bin}/mssh", "--help"
  end
end
