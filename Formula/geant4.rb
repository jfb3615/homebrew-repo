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
    sha256 cellar: :any, big_sur: "cd23270d9cd69947ce566f606bbbe36d9fc739084dfd959fbc22205b3b85456c"
    sha256 "b78d5fdcce760a4eefe0e000f5ae61e5eb6f61c78fd5dadff79948f8220e0672" => :catalina
  end

  
  def post_install
     system "geant4-config --install-datasets"
  end
end
