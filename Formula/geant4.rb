class Geant4 < Formula
  desc "Geant4 simulation development toolkit"
  homepage "https://geant4.web.cern.ch"
  url "https://qat.pitt.edu/geant4-v10.6.1.tar.gz"
  sha256 "4fd64149ae26952672a81ce5579d3806fda4bd251d486897093ac57633a42b7e"
  depends_on "cmake" => :build
  depends_on "doxygen" => "build"
   def install
     mkdir "builddir" do
     system "cmake", "..",   "-DGEANT4_USE_GDML=ON -DGEANT4_BUILD_MULTITHREADED=ON", *std_cmake_args
     system "make",      "install" 
    end
  end
end
