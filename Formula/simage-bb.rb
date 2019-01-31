class SimageBb < Formula
  desc "The simage library for texture mapping with Coin"
  homepage "https://bitbucket.org/Coin3D"
  url "https://qat.pitt.edu/simage-bb-1.0.tar.gz"
  sha256 "3519352d43104cd3b2819c5aea71d17720cd94654017bbef15e901e11cf4eae6"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  def install
    system "cmake", ".", "-DCMAKE_CXX_FLAGS=-std=c++14", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    sha256 "aa0ee0a7138bc2189c934eacf99bfc0102a9550386ce008699c992188ebe74cd" => :high_sierra
    rebuild 1
    sha256 "ee29fdbfe388451c853639323a1fc5de9951532c5f8412987f34933d76ea6fe2" => :mojave
  end

end
