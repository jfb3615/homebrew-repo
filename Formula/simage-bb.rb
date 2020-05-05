class SimageBb < Formula
  desc "The simage library for texture mapping with Coin"
  homepage "https://bitbucket.org/Coin3D"
  url "https://qat.pitt.edu/simage-simage-1.8.0.tar.gz"
  sha256 "e91f747f812eca246f000e1baa58364bf1534cc661ce564faaf3e58c5aff375d"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  def install
    system "cmake", ".", "-DCMAKE_CXX_FLAGS=-std=c++14", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
