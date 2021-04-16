class SimageBb < Formula
  desc "The simage library for texture mapping with Coin"
  homepage "https://github.com/coin3d"
  url "https://qat.pitt.edu/simage-master-5May2020-00.tar.gz"
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
  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any, catalina: "88dd442c81ad12cc1c601e84c9deb566849b899eab47b6362546a96a3527df18"
  end

  
end
