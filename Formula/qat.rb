class Qat < Formula
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
    sha256 "0e60f2250fb94925dad6fa79326281b95e77621b06035d0ab746353c2ad4cb44" => :catalina
  end

  
  
  def test 
  bin/"testprogram"
  end   

 
end
