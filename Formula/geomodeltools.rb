# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodeltools < Formula
  desc "Handy tools in the GeoModel tool suite"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelTools"

  # SOURCES
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModelTools.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "nlohmann-json"
  depends_on "geomodelcore"
  depends_on "geomodelio"
  
  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end

end
