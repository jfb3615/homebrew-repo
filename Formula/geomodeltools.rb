class Geomodeltools < Formula

  desc "GeoModelTools"
  homepage "https://gitlab.cern.ch/GeoModelDev"
   
  
  url "https://qat.pitt.edu/GeoModel-4.2.0.tar.gz"
  sha256 "4900f0cc28d8039ea733f5e1ebc0c039f3e1322c0a2365b1fc68c1b8f1d2733d"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end

  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 catalina: "c68bf843e16d566b2c1590d29ce33f4b0801d77d8eae83d465166bbc7940c01d"
  end


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "jfb3615/repo/geomodelcore"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "../GeoModelTools", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  

end
