class CoinBb < Formula
  desc "The Coin implemention of the Open Inventor Toolkit"
  homepage "https://coin3d.github.io"
  url "https://qat.pitt.edu/coin-6May2020-00.tar.gz"
  sha256 "e5b430a000d549cf6e1e7a10b2254e2042b5f75a3ba03451febeefc29f69acff"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  def install
    mkdir "builddir" do
      system "cmake", "..", "-DCMAKE_CXX_FLAGS=-std=c++14", *std_cmake_args
      system "make",      "install" 
    end
  end

end
