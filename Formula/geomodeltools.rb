# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodeltools < Formula
  desc "Handy tools in the GeoModel tool suite"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelTools"

  # SOURCES
  url "https://qat.pitt.edu/GeoModelTools-4.1.0.tar.gz"
  sha256 "ccaf2e7e11abe69b1026c1fa27ec1702c4e7ee7dc8a863824ea1fdf437e588ee"
  
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

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    sha256 "ad59d751a89633b85b0075ad50324af2999dc3dc9287bcd80a4311bc338aaf5d" => :catalina
  end

  
end
