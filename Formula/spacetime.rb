#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://gitlab.cern.ch/boudreau/spacetime/-/archive/3.0.3/spacetime-3.0.3.tar.gz"
  sha256 "e2fcb319e4a85610d66f83773211de658b6bcb6a443ee0539368a132bbf8422c"
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
  
  
 
  
end
