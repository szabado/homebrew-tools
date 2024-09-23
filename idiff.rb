class Idiff < Formula
  desc "A tool for diffing the results of pastes."
  homepage "https://github.com/szabado/go-tools/tree/main/cmd/idiff"
  url "https://github.com/szabado/go-tools/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "fa458873ee641a281f98834f87561d45995bcea9629b1f3db6ac1e9e4eaa4acd"

  def install
    system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build ./cmd/idiff"
    bin.install "idiff" => "idiff"
  end

  test do
    system "#{bin}/idiff", "--help"
  end
end
