#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/spacetime-2.0.1.tar.gz"
  sha256 "e37a5ede0e0b706cc35baef7bd0b02c2345a5d1e190cb15cf6c063f3c1ae3b60"
  depends_on 'qt5' => :build 
  depends_on 'eigen' => :build
  depends_on 'pkg-config' => :build
  needs :cxx11 
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "qmake PREFIX=#{prefix}"
    system "make", "install"
  end

  test do
  (testpath/"test.cpp").write <<~EOS
      #include "Spacetime/FourVector.h"
      int main()
      {
        FourVector v(5,4,3,0);
	return v.norm()!=0;
      }
    EOS
    system ENV.cxx, testpath/"test.cpp", "-I#{include}/Spacetime", "-std=c++11", "-o", "test"
    system "./test"
  end 
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 "41f4cc0e346eec5c6ecad5b866563372e1f975c24ebaee7281b9cdbe5c6ac872" => :high_sierra
  end

end
