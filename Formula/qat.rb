class Qat < Formula
  desc "The QAT Package for computation in the physical sciences"
  homepage "qat.pitt.edu"
  url "https://github.com/jfb3615/qat/archive/refs/tags/6.1.3.tar.gz"
  sha256 "b0ee7e78dedd909a74a2dd176ce1c454acb4bdcfacf860e0a940c0776101950e"
  depends_on 'qt' 
  depends_on 'eigen' 
  depends_on 'gsl' 
  depends_on 'hdf5' 
  depends_on 'pkg-config' 
  depends_on 'openmpi' 
  depends_on 'coin3d'
  depends_on "cmake" => :build


  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
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
