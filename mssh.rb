class Mssh < Formula
  desc "A tool for running multiple commands and ssh jobs in parallel, and easily collecting the results."
  homepage "https://github.com/szabado/mssh"
  url "https://github.com/szabado/mssh/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "1a5469fea79f5839489d0f2740e1eed62b42a54b561e4ac6f826d366278dc4f0"

  def install
    system "HERMIT_BIN_INSTALL_DIR=. ./bin/go build"
    bin.install "mssh" => "mssh"
  end

  test do
    system "#{bin}/mssh", "--help"
  end
end
