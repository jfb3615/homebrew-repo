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
    sha256 arm64_monterey: "17375fa42029522fb64e482abd2aa41e15cf38c0ad549d2fb041a44402a7878e"
  end

  
#  def test 
#  bin/"testprogram"
#  end   

 
end
