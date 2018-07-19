class Zkcli < Formula
  desc "Non-interactive CLI for Zookeeper"
  homepage "https://github.com/fJancsoSzabo/zkcli"
  url "https://github.com/fJancsoSzabo/zkcli/archive/v2.0.1-beta.tar.gz"
  sha256 "93545eacb4125e380252b9dfcc2fe59bab4d76f9417597c2d7a938fdd7b57e06"

  depends_on "go" => :build
  depends_on "dep" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/zkcli" => "zkcli"
  end

  test do
    system "#{bin}/zkcli", "--help"
  end
end
