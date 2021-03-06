#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/spacetime-3.0.0.tar.gz"
  sha256 "0d2ac17ac2877a3c983310721f7c43b1e6fd7d06a51b5776af0b8a5127fdf0bc"
  depends_on 'eigen' 
  depends_on 'pkg-config' 
  depends_on "cmake" => :build
   
  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
  
  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    sha256 "6048a8f2117254755dc8d2d5b07c6742470a7c836a534303c88836c3db3d57af" => :catalina
  end

  
end
