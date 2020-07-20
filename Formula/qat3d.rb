class Qat3d < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-3.0.2.tar.gz"
  sha256 "c12b28008a6aae73c26c628e6b887165eb2dea852cdf8ef0983650d4261a5f8d"
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
