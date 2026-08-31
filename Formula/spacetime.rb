#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://gitlab.cern.ch/boudreau/spacetime/-/archive/3.0.3/spacetime-3.0.4.tar.gz"
  sha256 "bbea0f088a7f8fe4ba7cf637fefdeec5228b2a24c622f37c62396d8c0af47727"
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
