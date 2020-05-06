# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelvisualization < Formula
  desc "Visualizatin for the GeoModel Toolkit"
  homepage "https://gitlab.cern.ch/GeoModelDev/geomodelvisualization"

  # SOURCES
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
  depends_on "nlohmann/json" 

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end

end
