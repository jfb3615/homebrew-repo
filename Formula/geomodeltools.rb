# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodeltools < Formula
  desc "Handy tools in the GeoModel tool suite"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelTools"

  # SOURCES
  url "https://qat.pitt.edu/GeoModelTools-4.1.0.tar.gz"
  sha256 "d48c5242539b9d009bc47766b5a476629dfa5b5c77fad1e98ba244ecc5abb9d8"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModelTools.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "nlohmann-json"
  depends_on "geomodelcore"
  depends_on "geomodelio"
  depends_on "xerces-c"
  
  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end

end
