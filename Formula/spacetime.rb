#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://gitlab.cern.ch/boudreau/spacetime/-/archive/3.0.3/spacetime-3.0.3.tar.gz"
  sha256 "d0f2a28daf494567127fb0b8eac41f77f5e2dff3558ab65ddbf61036ae096d7b"
  depends_on 'eigen'
  depends_on "cmake" => :build
   
  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
  
  
 
  
end
