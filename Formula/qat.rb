class Qat < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://github.com/jfb3615/qat/archive/refs/tags/6.0.0.tar.gz 
  sha256 "e62b9d52659f785e4d9755a55844b2bf8431e1967dfbffb13efc3a42122f6d9f"
  depends_on 'qt' 
  depends_on 'eigen' 
  depends_on 'gsl' 
  depends_on 'hdf5' 
  depends_on 'pkg-config' 
  depends_on 'openmpi' 
  #needs :cxx11 
  conflicts_with "qat3d", :because => "qat is a subset of qat3d."


  def install
    ENV.deparallelize  
    system "mkdir ../lib"
    system "qmake PREFIX=#{prefix} QMAKE_STRIP="
    system "make", "install"
  end
 
#  bottle do
#    root_url "https://qat.pitt.edu/Bottles"
#    sha256 arm64_monterey: "17375fa42029522fb64e482abd2aa41e15cf38c0ad549d2fb041a44402a7878e"
#  end

  
#  def test 
#  bin/"testprogram"
#  end   

 
end
