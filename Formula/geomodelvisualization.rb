# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelvisualization < Formula
  desc "Visualization for the GeoModel Toolkit, including the Geometry Explorer (gmex)"
  homepage "https://gitlab.cern.ch/GeoModelDev"

  # SOURCES
  url "https://qat.pitt.edu/GeoModel-4.2.4.tar.gz"
  sha256 "4a7a1f5a237daabed83d0b8f9f4586e6671d9abddd47b6f4e59ca578f9086287"
 
  
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
    sha256 big_sur: "1abca2c685da27d98e040bd17b22514509cf7fc48132250e425ff5fdf2605d2d"
 end

end
