class Mssh < Formula
  desc "A tool for running multiple commands and ssh jobs in parallel, and easily collecting the results."
  homepage "https://github.com/szabado/mssh"
  url "https://github.com/szabado/mssh/archive/v0.1.1.tar.gz"
  sha256 "41f3601e2829005fc84604b817488463ae9f2b5f432d43c76d98f9eefbbe326c"

  depends_on "go" => :build

  def install
    system "./build.sh"
    bin.install ".gobuild/bin/mssh" => "mssh"
  end

  test do
    system "#{bin}/mssh", "--help"
  end
end
