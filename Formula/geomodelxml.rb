# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelxml < Formula
  desc "Data managers for geomodel classes"
  homepage "https://gitlab.cern.ch/GeoModelATLAS/geomodelxml"

  # SOURCES
  
  url "https://qat.pitt.edu/geomodelxml-1.0.0.tar.gz"
  sha256 "ab0740e63510979ab17414c40739bdeb593dba8a81b4638834ce49e236ea3254"
  
  head do
    url "https://gitlab.cern.ch/GeoModelATLAS/geomodelxml.git"
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
  

end
