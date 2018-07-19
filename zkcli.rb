class Zkcli < Formula
	homepage "https://github.com/fJancsoSzabo/zkcli"
	url "https://github.com/fJancsoSzabo/zkcli/archive/v2.0.1-beta.tar.gz"
	sha256 "75884f191894ad30205a4276a8a4893704d4d8b95edb74e235b29187ac2a396b"

	depends_on "go" => :build
	depends_on "dep" => :build

	def install
		system "gobuild.sh"
		bin.install ".gobuild/bin/zkcli" => "zkcli"
	end

	test do
		system "#{bin}/zkcli", "--help"
	end
end
