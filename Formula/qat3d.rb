class Qat3d < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-2.0.0.tar.gz"
  sha256 "9541bed6cfe0e546afcf47dc4fe178a36424871f353a20af6272b1bb117d14f4"
  depends_on 'qt5'
  depends_on 'eigen' 
  depends_on 'gsl' => :build
  depends_on 'hdf5' => :build
  depends_on 'pkg-config' => :build
  depends_on 'openmpi' => :build
  depends_on 'simage' => :build
  depends_on 'coin' => :build
  needs :cxx11 
  conflicts_with "qat", :because => "qat3d is a superset of qat."

  def install
    ENV.deparallelize  
    system "mkdir ../lib"
    system "qmake PREFIX=#{prefix} LIBS=-L/usr/local/lib QAT3D=1 QMAKE_STRIP="
    system "make", "install"
  end

  def test 
  bin/"testprogram"
  end   

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 "7ceae036507ffaab28f8964243313c7777ed24de42e806cf61da2b98bbea1c2f" => :high_sierra
  end

end
