class Zkcli < Formula
	homepage "https://github.com/fJancsoSzabo/zkcli"
	url "https://github.com/fJancsoSzabo/zkcli/archive/v2.0.0-beta.tar.gz"
	sha256 "830d6f31a69e0f5c73525baf8fb280920b86915afb62e5dceb40001ca0d5f279"

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
