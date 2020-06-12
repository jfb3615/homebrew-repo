class Geomodelg4 < Formula

  desc "GeoModelG4"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelG4"

  # SOURCES
  url "https://qat.pitt.edu/GeoModelG4-1.1.0.tar.gz"
  sha256 "ddf55294b9ca30935e4e1054aacb85511c38b04fb576452548e39beb8f2e265b"
  
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModelG4.git"
  end
  


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "jfb3615/repo/geomodelcore"
  depends_on "jfb3615/repo/geomodelio"
  depends_on "jfb3615/repo/geant4"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  

end
