class Geant4 < Formula
  desc "Geant4 simulation development toolkit"
  homepage "https://geant4.web.cern.ch"
  url "https://qat.pitt.edu/geant4-v11.0.3.tar.gz"
  sha256 "1e6560b802aa84e17255b83987dfc98a1457154fb603d0f340fae978238de3e7"
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
    sha256 cellar: :any, catalina: "b78d5fdcce760a4eefe0e000f5ae61e5eb6f61c78fd5dadff79948f8220e0672"
  end

  
  def post_install
     system "geant4-config --install-datasets"
  end
end
