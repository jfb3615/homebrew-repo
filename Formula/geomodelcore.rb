class Geomodelcore < Formula

  desc "GeoModelCore contains the core packages to work with GeoModel. Those packages define the GeoModel geometry primitives, the generic function abstraction, and all the basic tools to work with GeoModel."
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelCore"

  # SOURCES
  url "https://qat.pitt.edu/GeoModel-4.1.0.tar.gz"
  sha256 "675de51a555cebaef14f56940f212d7c6c31a399b7d3d71c4a58a5ea54deb391"
 
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "nlohmann-json" 
  depends_on "xerces-c" 
  depends_on "sqlite"


  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  
  #bottle do
  #  root_url "https://qat.pitt.edu/Bottles"
  #  cellar :any
  #  sha256 "70bdf91ac42eb646a5c1e788e6d899d40b4ccb9541b25d3bb58a8ac4f5877290" => :catalina
  #end

  
end
