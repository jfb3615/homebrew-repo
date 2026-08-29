#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://gitlab.cern.ch/boudreau/spacetime/-/archive/3.0.3/spacetime-3.0.3.tar.gz"
  sha256 "19fd330742420160cf31b305ca89ce5bdd34942dd24a94b775fe920b475237d8"
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
