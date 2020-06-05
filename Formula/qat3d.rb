class Qat3d < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-3.0.0.tar.gz"
  sha256 "9a2602dacf281d4870e408777dfbc4f64f8f93a3a66d2199226467fdb18100a0"
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
    sha256 "d1f42b5f430e2ed8af5e6a04db26e1b2422cda92cc311b6aadde713e275c1652" => :catalina
  end

  
  def test 
  bin/"testprogram"
  end   


end
