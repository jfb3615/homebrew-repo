class Qat < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-3.0.3.tar.gz"
  sha256 "f6d99788acf526c3fe85d4e3a2e77d63b50dfb0e8668aa8e27d231a576bac90a"
  depends_on 'qt5' 
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
 
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 big_sur: "f3088ab82263371f712825844df259c83ee06dd85b09db17742bcfa6c323d0c1"
    sha256 cellar: :any, catalina: "c29b5394b3921378a802290c9079876e23ab656cb831264856cefef94d6cc1d4"
  end

  
#  def test 
#  bin/"testprogram"
#  end   

 
end
