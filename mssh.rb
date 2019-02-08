class Mssh < Formula
  desc "A tool for running multiple commands and ssh jobs in parallel, and easily collecting the results."
  homepage "https://github.com/szabado/mssh"
  url "https://github.com/szabado/mssh/archive/v0.1.tar.gz"
  sha256 "ce673a8cc18712f3d1ed850c67680ba79e93eed630d3ed7620b437a0124763a0"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/mssh" => "mssh"
  end

  test do
    system "#{bin}/mssh", "--help"
  end
end
