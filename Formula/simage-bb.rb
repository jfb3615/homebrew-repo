class SimageBb < Formula
  desc "The simage library for texture mapping with Coin"
  homepage "https://coin3d.github.io"
  url "simage-master-5May2020-00.tar.gz"
  sha256 "a2b5d79a2e58ba2f9ba23ae0b4ed8ced0b01fc848d99e89697db17903b33a663"
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
