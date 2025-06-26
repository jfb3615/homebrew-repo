class Qat < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://github.com/jfb3615/qat/archive/refs/tags/6.0.1.tar.gz"
  sha256 "894c3ff76d655658e8ca64e9268b3d39f9bf289e69330aa060bcaf83005bf0c0"
  depends_on 'qt' 
  depends_on 'eigen' 
  depends_on 'gsl' 
  depends_on 'hdf5' 
  depends_on 'pkg-config' 
  depends_on 'openmpi' 
  depends_on 'coin3d'
  depends_on "cmake" => :build
  conflicts_with "qat3d", :because => "qat is a subset of qat3d."


  def install
    mkdir "build" do
      system "pwd"
      system "cat",   "../CMakeLists.txt"
      system "which", "cmake"
      system "cmake", ..", *std_cmake_args
      system "make"
      system "make", "install"
    end    
  end
 
#  bottle do
#    root_url "https://qat.pitt.edu/Bottles"
#    sha256 arm64_monterey: "17375fa42029522fb64e482abd2aa41e15cf38c0ad549d2fb041a44402a7878e"
#  end

  
#  def test 
#  bin/"testprogram"
#  end   

 
end
