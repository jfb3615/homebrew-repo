class Qat < Formula
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
    sha256 "48f88c809623afc6c56f5367f5af368179ff9d12227dba8b9899eb056f7b66a7" => :catalina
  end

  
  def test 
  bin/"testprogram"
  end   

 
end
