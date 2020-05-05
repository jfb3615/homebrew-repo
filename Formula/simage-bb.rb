class SimageBb < Formula
  desc "The simage library for texture mapping with Coin"
  homepage "https://coin3d.github.io"
  url "qat.pitt.edu/simage-master-5May2020-00.tar.gz"
  sha256 "57694751ffb5d0f1e0f5fde6a84129c3c7cdec3378be2122f6ee39566a03c8ba"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  depends_on "libquicktime"
  depends_on "jpeg"
  
  def install
    mkdir "builddir" do
      system "cmake", "..", *std_cmake_args
      system "make",      "install" 
    end
  end
end
