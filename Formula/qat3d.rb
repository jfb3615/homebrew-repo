class Qat3d < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-3.0.1.tar.gz"
  sha256 "4381ab985dd1f7e9b2fa3a6b8171f64d88126db5e5ac5010d6df3be99172b55b"
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
    system "qmake PREFIX=#{prefix} LIBS=-L/usr/local/lib QAT3D=1 QMAKE_STRIP="
    system "make", "install"
  end

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 "7ecd25c96430c2634ed5824acd6518f44afa09bb462ecf155ae499ba72dac959" => :catalina
  end

  def test 
  bin/"testprogram"
  end   


end
