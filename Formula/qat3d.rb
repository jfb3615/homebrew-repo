class Qat3d < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/qat-5.0.0.tar.gz"
  sha256 "56f5bcd742313d2ec734ce9a5a2a46ad09d4e9e859a4811b1ddc0cbcec307c78"
  depends_on 'cmake'
  depends_on 'qt6'
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
     mkdir "builddir" do
      system "cmake", "..", "-DCMAKE_CXX_STANDARD=17", *std_cmake_args       
      system "make",      "install" 
    end
  end  
  
  #bottle do
  #  root_url "https://qat.pitt.edu/Bottles"
  #  sha256 arm64_monterey: "ffb3a25ddf2f60670a5db090e6981db794b697f2b690cef8f8fae657d7e4a22b"
  #end
  
  #def test 
  #bin/"testprogram"
  #end   


end
