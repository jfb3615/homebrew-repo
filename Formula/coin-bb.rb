class CoinBb < Formula
  desc "The Coin implemention of the Open Inventor Toolkit"
  homepage "https://github.com/coin3d"
  url "https://qat.pitt.edu/coin-6May2020-00.tar.gz"
  sha256 "e5b430a000d549cf6e1e7a10b2254e2042b5f75a3ba03451febeefc29f69acff"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  depends_on "boost"
  def install
    mkdir "builddir" do
      system "cmake", "..", "-DCMAKE_CXX_FLAGS=-std=c++14", *std_cmake_args
      system "make",      "install" 
    end
  end

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    sha256 "c54c8ad24847ba126dfeee80f8b3a236153487b4bf369378cc6d13367bb54133" => :catalina
  end

  
end
