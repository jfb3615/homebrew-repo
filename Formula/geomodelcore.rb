class Geomodelcore < Formula

  desc "GeoModelCore contains the core packages to work with GeoModel. Those packages define the GeoModel geometry primitives, the generic function abstraction, and all the basic tools to work with GeoModel."
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelCore"

  # SOURCES
  url "https://qat.pitt.edu/GeoModel-4.4.3-pre.tar.gz"
  sha256 "fffcfec5340f0317cb686d17d5cabcce3c2875e3ac88031eb03db50c95bcac47"
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
    sha256 cellar: :any, catalina: "c1657bfafcd376378ede7a6e24b58ade287c6179024cb5bdc375c677beb424fc"
  end
  
end
