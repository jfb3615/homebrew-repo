class Qat3d < Formula
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
  depends_on 'jfb3615/repo/simage-bb' 
  depends_on 'jfb3615/repo/coin-bb' 
  depends_on 'jfb3615/repo/soqt-bb' 
  #needs :cxx11 
  conflicts_with "qat", :because => "qat3d is a superset of qat."

  def install
    ENV.deparallelize  
    system "mkdir ../lib"
    system "qmake PREFIX=#{prefix} LIBS+=-L#{HOMEBREW_PREFIX}/lib INCLUDEPATH+=#{HOMEBREW_PREFIX}/include QAT3D=1 QMAKE_STRIP="
    system "make", "install"
  end  
  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 arm64_monterey: "ffb3a25ddf2f60670a5db090e6981db794b697f2b690cef8f8fae657d7e4a22b"
  end
  
  #def test 
  #bin/"testprogram"
  #end   


end
