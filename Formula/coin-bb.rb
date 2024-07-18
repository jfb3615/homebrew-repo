class CoinBb < Formula
  desc "The Coin implemention of the Open Inventor Toolkit"
  homepage "https://github.com/coin3d"
  url "https://qat.pitt.edu/coin-4.0.2.tar.gz"
  sha256 "52f88a3c3043f953492c6592044a0ff2f14dfbdd593faaa5e80e7a2186ac9bc2"
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

    sha256 cellar: :any, big_sur:  "ad1190c0daa38aa5c90b301fcf928997ead0f023b1133b2d6883e674ce5f40d5"
    sha256 cellar: :any, catalina: "c54c8ad24847ba126dfeee80f8b3a236153487b4bf369378cc6d13367bb54133"
  end

  
end
