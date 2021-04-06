class Geant4 < Formula
  desc "Geant4 simulation development toolkit"
  homepage "https://geant4.web.cern.ch"
  url "https://qat.pitt.edu/geant4-v10.6.1.tar.gz"
  sha256 "4fd64149ae26952672a81ce5579d3806fda4bd251d486897093ac57633a42b7e"
  depends_on "cmake" => :build
  depends_on "doxygen" => "build"
  depends_on "xerces-c"
   def install
     mkdir "builddir" do
     system "cmake", "-DGEANT4_USE_SYSTEM_EXPAT=OFF", "-DGEANT4_USE_GDML=ON", "-DGEANT4_BUILD_MULTITHREADED=ON", *std_cmake_args, ".."
     system "make",      "install"
    
    end
   end
  
   bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    sha256 "26987e6aaf3e5a3c46f704bf7771284dde361cf24a3e3e58d1fdb37f552c44d0" => :big_sur
    sha256 "b78d5fdcce760a4eefe0e000f5ae61e5eb6f61c78fd5dadff79948f8220e0672" => :catalina
  end

  
  def post_install
     system "echo SKIP: geant4-config --install-datasets"
  end
end
