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
    sha256 big_sur: "25d57b673b0d617e4438c151805fbaea1205d749b1deede3dfc1bbf0cb218cd3"
    sha256 cellar: :any, catalina: "5ed5587adba898140ed24d43a2e06c7f813440e70f200ff043d2567d5ddce87c"
  end
  
  #def test 
  #bin/"testprogram"
  #end   


end
