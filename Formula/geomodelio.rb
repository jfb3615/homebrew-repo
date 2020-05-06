# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelio < Formula
  desc "Input/output for geomodel classes"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelIO"

  # SOURCES
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModelIO.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "qt"
  depends_on "eigen"
  depends_on "geomodelcore"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
end
