class Qat < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-2.0.0.tar.gz"
  sha256 "9541bed6cfe0e546afcf47dc4fe178a36424871f353a20af6272b1bb117d14f4"
  depends_on 'qt5' 
  depends_on 'eigen' 
  depends_on 'gsl' 
  depends_on 'hdf5' 
  depends_on 'pkg-config' 
  depends_on 'openmpi' 
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
    rebuild 1
    sha256 "c3f694a9f71f916b7874e0f65c4b2b12a10465605f25e5062d40bc25f3c84380" => :mojave
  end
end
