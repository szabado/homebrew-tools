class Mssh < Formula
  desc "A tool for running multiple commands and ssh jobs in parallel, and easily collecting the results."
  homepage "https://github.com/szabado/mssh"
  url "https://github.com/szabado/mssh/archive/v0.1.1.tar.gz"
  sha256 "1ddadf2bcd5bb0df1ee287ae2c45555c601aef1b576bd188d8903ff4770f35f6"

  depends_on "go" => :build

  def install
    system "./build.sh"
    bin.install ".gobuild/bin/mssh" => "mssh"
  end

  test do
    system "#{bin}/mssh", "--help"
  end
end
