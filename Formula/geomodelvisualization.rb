# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelvisualization < Formula
  desc "Visualizatin for the GeoModel Toolkit"
  homepage "https://gitlab.cern.ch/GeoModelDev/geomodelvisualization"

  # SOURCES
  
  url "https://qat.pitt.edu/GeoModelVisualization-3.2.0.tar.gz"
  sha256 "d48c5242539b9d009bc47766b5a476629dfa5b5c77fad1e98ba244ecc5abb9d8"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/geomodelvisualization.git"
    version "master"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "qt"
  depends_on "eigen"
  depends_on "simage-bb"
  depends_on "coin-bb"
  depends_on "soqt-bb"
  depends_on "geomodelcore"
  depends_on "geomodelio"
  depends_on "nlohmann-json" 

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end

end
