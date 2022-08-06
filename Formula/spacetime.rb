#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/spacetime-3.0.1.tar.gz"
  sha256 "c9f14c528127d64f2e404d20b5b9188faeedc98f7e830ae5bc9aa0bdfafaced5"
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
    sha256 catalina: "6048a8f2117254755dc8d2d5b07c6742470a7c836a534303c88836c3db3d57af"
  end

  
end
