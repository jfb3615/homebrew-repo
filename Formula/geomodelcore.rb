class Geomodelcore < Formula

  desc "GeoModelCore contains the core packages to work with GeoModel. Those packages define the GeoModel geometry primitives, the generic function abstraction, and all the basic tools to work with GeoModel."
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelCore"

  # SOURCES
  url "https://qat.pitt.edu/GeoModel-4.2.1.tar.gz"
  sha256 "0f9f5e4bdca5cbdda4f5fd7166aadb5ee1b137fc3428adb93d8ce290de66241e"
 
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
  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any, big_sur: "c7bebc21a380b83c89b5b903dca7d4b176d6b3429921e4fe8c620c0f7fa8aeb6"
    sha256 cellar: :any, catalina: "561c4695fefed2f3956c847453c3e202283447f6da2ccbc3240afd7dc20e93c5"
  end
  
end
