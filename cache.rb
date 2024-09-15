class Cache < Formula
    desc "A tool for caching the results of command line tool calls."
    homepage "https://github.com/szabado/cache"
    url "https://github.com/szabado/cache/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "29541aad78a80affe3d5f636c68ab977a24baea479d88caf890891c245b85a53"
  
    def install
      system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build"
      bin.install "cache" => "cache"
    end
  
    test do
      system "#{bin}/cache", "--help"
    end
  end
  