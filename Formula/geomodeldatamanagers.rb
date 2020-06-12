# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodeldatamanagers < Formula
  desc "Data managers for geomodel classes"
  homepage "https://gitlab.cern.ch/GeoModelATLAS/GeoModelDataManagers"

  # SOURCES
  
  url "https://qat.pitt.edu/GeoModelDataManagers-1.0.0.tar.gz"
  sha256 "6170e98ee9b9825bc79a6d4eb23ce3e10ffbe71087649f80db95c606c62c670b"
  
  head do
    url "https://gitlab.cern.ch/GeoModelATLAS/GeoModelDataManagers.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "geomodelcore"
  depends_on "geomodelio"
  depends_on "geomodeltools"
  depends_on "nlohmann-json" 
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
    sha256 "83a8b0cb82c81f105d6cb12c0f303ba4dd9559aa5c22644163b3bc4a2f71dda2" => :catalina
  end

end