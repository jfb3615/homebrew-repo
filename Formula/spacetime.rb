#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/spacetime-3.0.0.tar.gz"
  sha256 "e37a5ede0e0b706cc35baef7bd0b02c2345a5d1e190cb15cf6c063f3c1ae3b60"
  depends_on 'eigen' 
  depends_on 'pkg-config' 
  # This line caused a complaint.  No longer needed?  :-->.   needs :cxx11 
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
end
