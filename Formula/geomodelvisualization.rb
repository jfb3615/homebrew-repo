# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelvisualization < Formula
  desc "Visualization for the GeoModel Toolkit, including the Geometry Explorer (gmex)"
  homepage "https://gitlab.cern.ch/GeoModelDev"

  # SOURCES
  url "https://qat.pitt.edu/GeoModel-4.2.0.tar.gz"
  sha256 "0f9f5e4bdca5cbdda4f5fd7166aadb5ee1b137fc3428adb93d8ce290de66241e"
 
  
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
    sha256 cellar: :any, big_sur: "56006d756a6c9b0b7cfae9398e229ffa9965632c6117898fbfb31ccf4532c88b"
    sha256 cellar: :any, catalina: "3c6018b4cbfdd536c60ad949ee8687c1f30dfd66a6af571538e758fa91da2b25"
 end

end
