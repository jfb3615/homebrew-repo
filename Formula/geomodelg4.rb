class Geomodelg4 < Formula

  desc "GeoModelG4"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelG4"

  # SOURCES
  url "https://qat.pitt.edu/GeoModelG4-1.0.0.tar.gz"
  sha256 "ccaf2e7e11abe69b1026c1fa27ec1702c4e7ee7dc8a863824ea1fdf437e588ee"
  
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModelG4.git"
  end
  


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "clhep"
  depends_on "geomodelcore"
  depends_on "geomodelio"
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
