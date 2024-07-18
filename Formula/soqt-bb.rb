class SoqtBb < Formula
  desc "The SoQt package, allowing Coin to be used with Qt"
  homepage "https://github.com/coin3d"
  url "https://qat.pitt.edu/soqt-1.6.2.tar.gz"
  sha256 "ae1f228763897183cd30b126e49586486118b3ce1dc4ce9fcec52870228ccdc3"
  depends_on "cmake" => :build
  depends_on "doxygen" => "build"
  depends_on "qt5"
  depends_on "jfb3615/repo/coin-bb" 
  depends_on "jfb3615/repo/simage-bb"
  def install
    mkdir "builddir" do
      system "cmake", "..", "-DCMAKE_CXX_FLAGS=-std=c++17", *std_cmake_args
      system "make",      "install" 
    end
  end
  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any, big_sur: "82875ba0fa39acd286815dcd987e434456e467313184fdd64d1ece3f7d425099"
    sha256 cellar: :any, catalina: "480253fa645c244261c0111cb3d9e4b06eda204b47b05877006377a2c559bf5b"
  end

end
