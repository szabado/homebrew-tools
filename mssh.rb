class Mssh < Formula
  desc "A tool for running multiple commands and ssh jobs in parallel, and easily collecting the results."
  homepage "https://github.com/szabado/mssh"
  url "https://github.com/szabado/mssh/archive/v0.1.1.tar.gz"
  sha256 "3ec0a9bfe96e4e9fd93c4a4752cff3964b859203044299076eb5fb0e94d08649"

  depends_on "go" => :build

  def install
    system "./build.sh"
    bin.install ".gobuild/bin/mssh" => "mssh"
  end

  test do
    system "#{bin}/mssh", "--help"
  end
end
