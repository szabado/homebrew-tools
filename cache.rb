class Cache < Formula
  desc "A tool for caching the results of command line tool calls."
  homepage "https://github.com/szabado/go-tools/tree/main/cmd/cache"
  url "https://github.com/szabado/go-tools/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fa458873ee641a281f98834f87561d45995bcea9629b1f3db6ac1e9e4eaa4acd"

  def install
    system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build ./cmd/cache"
    bin.install "cache" => "cache"
  end

  test do
    system "#{bin}/cache", "--help"
  end
end
