class SoqtBb < Formula
  desc "The SoQt package, allowing Coin to be used with Qt"
  homepage "https://bitbucket.org/Coin3D"
  url "https://qat.pitt.edu/soqt-6May2020-00.tar.gz"
  sha256 "9cdccb80625248ed677085a30ad36b86b865a27a68279440e714f484c3f12f45"
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
