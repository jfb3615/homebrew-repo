class Qat < Formula
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
  #needs :cxx11 
  conflicts_with "qat3d", :because => "qat is a subset of qat3d."


  def install
    ENV.deparallelize  
    system "mkdir ../lib"
    system "qmake PREFIX=#{prefix} QMAKE_STRIP="
    system "make", "install"
  end

  bottle do
    root_url "https://homebrew.bintray.com/bottles-repo"
    rebuild 1
    sha256 "91704520e2922572ae25951594f65239d9a736b59cb4c300fd03ef946587dfa1" => :catalina
  end

  
  
  def test 
  bin/"testprogram"
  end   

 
end
