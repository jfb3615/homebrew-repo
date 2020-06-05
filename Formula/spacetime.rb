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
  # This line caused a complaint.  No longer needed?  :-->.   needs :cxx11 
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
end
