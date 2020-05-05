class SimageBb < Formula
  desc "The simage library for texture mapping with Coin"
  homepage "https://coin3d.github.io"
  url "https://qat.pitt.edu/simage-1.8.0-src.tar.gz"
  sha256 "410ba7bf3a06c275b368940d23cb8d8ef891e2064758e5a0705ad2554019dd88"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  
  def install
    mkdir "builddir" do
      system "cmake", "..", *std_cmake_args
      system "make",      "install" 
    end
  end
end
