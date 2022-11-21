# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelvisualization < Formula
  desc "Visualization for the GeoModel Toolkit, including the Geometry Explorer (gmex)"
  homepage "https://gitlab.cern.ch/GeoModelDev"

  # SOURCES
  url "https://qat.pitt.edu/GeoModel-4.4.3-pre.tar.gz"
  sha256 "d74cf58333f8eb673a7484914c3fddbebfadf23e715a558058085ab7375e1fa4"
 
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "soqt-bb"
  depends_on "geomodelcore"
  
  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "GeoModelVisualization/build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  
 bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 catalina: "1aefb3e8690c2c6bd1138b40090e3095ba40bb3587f164fc120a89b4fe9e71c6"
 end

end
