class Qat3d < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-2.0.1.tar.gz"
  sha256 "9ee5a34f6a72ea296c5c4fab46e3e719ed2b22374c25fab90c9f8d55170312fe"
  revision 2
  depends_on 'qt5'
  depends_on 'eigen' 
  depends_on 'gsl' 
  depends_on 'hdf5' 
  depends_on 'pkg-config' 
  depends_on 'openmpi' 
  depends_on 'jfb3615/repo/simage' 
  depends_on 'jfb3615/repo/coin' 
  #needs :cxx11 
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
    rebuild 2
    sha256 "3a8c1e2d835438dd1d500a99f2b1692bbed85706210ee0fb646bdaaf14551390" => :mojave
    rebuild 3
    sha256 "553dcbc1af009ca737a9ff187fa581e5e3b2a5b44cbb06c444e0127a0517b0fd" => :high_sierra
   
  end

end
