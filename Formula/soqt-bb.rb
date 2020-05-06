class SoqtBb < Formula
  desc "The SoQt package, allowing Coin to be used with Qt"
  homepage "https://github.com/coin3d"
  url "https://qat.pitt.edu/soqt-6May2020-00.tar.gz"
  sha256 "105abcfdf3da18de26b1f2c9184e3c1d79349502b74255c06d165664eb8d19b5"
  depends_on "cmake" => :build
  depends_on "doxygen" => "build"
  depends_on "qt5"
  depends_on "jfb3615/repo/coin-bb" 
  depends_on "jfb3615/repo/simage-bb"
   def install
    mkdir "builddir" do
      system "cmake", "..", "-DCMAKE_CXX_FLAGS=-std=c++14", *std_cmake_args
      system "make",      "install" 
    end
  end
end
