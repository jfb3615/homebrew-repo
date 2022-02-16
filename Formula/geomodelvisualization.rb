# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelvisualization < Formula
  desc "Visualization for the GeoModel Toolkit, including the Geometry Explorer (gmex)"
  homepage "https://gitlab.cern.ch/GeoModelDev"

  # SOURCES
  url "https://qat.pitt.edu/GeoModel-4.2.6.tar.gz"
  sha256 "fffcfec5340f0317cb686d17d5cabcce3c2875e3ac88031eb03db50c95bcac47"
 
  
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
    sha256 big_sur: "8e3f6514a9e7dc136af1787bc3ac4c0e8c6f80b7438a161537f87738eb2a313a"
 end

end
