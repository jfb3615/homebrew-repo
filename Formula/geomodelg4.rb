class Geomodelg4 < Formula

  desc "GeoModelG4"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelG4"

  # SOURCES
  url "https://qat.pitt.edu/GeoModelG4-1.1.0.tar.gz"
  sha256 "c1a9d2d1900ce54f964b7ffbbd3b00fac46ba992d3c9fd84f1d81c24992acd6f"
  
  
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
