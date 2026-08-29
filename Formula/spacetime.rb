#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://gitlab.cern.ch/boudreau/spacetime/-/archive/3.0.3/spacetime-3.0.3.tar.gz"
  sha256 "375f119c2fd49633ca1a5145442f721ed3bf66c80256bc5abd5080b3283fbad6"
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
