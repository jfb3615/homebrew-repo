class Qat < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-2.0.0.tar.gz"
  sha256 "9541bed6cfe0e546afcf47dc4fe178a36424871f353a20af6272b1bb117d14f4"
  depends_on 'qt5' => :build 
  depends_on 'eigen' => :build
  depends_on 'gsl' => :build
  depends_on 'hdf5' => :build
  depends_on 'pkg-config' => :build
  depends_on 'openmpi' => :build
  needs :cxx11 
  conflicts_with "qat3d", :because => "qat is a subset of qat3d."


  def install
    ENV.deparallelize  
    system "mkdir ../lib"
    system "qmake PREFIX=#{prefix} QMAKE_STRIP="
    system "make", "install"
  end

  def test 
  bin/"testprogram"
  end   

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 "01498d33509489d5d568af3e11fa5ece69f98d0624c5bef999de9f3e4d7f94e6" => :high_sierra
  end
end
