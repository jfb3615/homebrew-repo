class CoinBb < Formula
  desc "The Coin implemention of the Open Inventor Toolkit"
  homepage "https://bitbucket.org/Coin3D"
  url "https://qat.pitt.edu/coin-bb-1.0.tar.gz"
  sha256 "e153260c99101beebc0acf33536f31501dfaf1e065bf3b0d8f69a7cc4a5d4747"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  def install
    mkdir "builddir" do
      system "cmake", "..", "-DCMAKE_CXX_FLAGS=-std=c++14", *std_cmake_args
      system "make",      "install" 
    end
  end

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    sha256 "b418e0593be09c6a9bcbe1ddd924f318870f1fd6f2303f32481ef2d322ce9087" => :high_sierra
    rebuild 1
    sha256 "4fcfebd03208cfe804bf3b2ae2a7a41c729d6f9af82f786d8b4fb687c561e1bc" => :mojave

  end

end
