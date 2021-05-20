class Geomodelg4 < Formula

  desc "GeoModelG4"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelG4"
   
  
  url "https://qat.pitt.edu/GeoModel-4.2.1.tar.gz"
  sha256 "2e000a90de06264227ef902abea5aa305dc2050a270f6bd073bdf6542a060dec"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end

  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any, big_sur: "95c524c0baf7577d25cb0028cb0289c6e92c0e3363231f8d1956f38844d7f892"
    sha256 catalina: "c68bf843e16d566b2c1590d29ce33f4b0801d77d8eae83d465166bbc7940c01d"
  end


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "jfb3615/repo/geomodelcore"
  depends_on "jfb3615/repo/geant4"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "../GeoModelG4", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  

end
