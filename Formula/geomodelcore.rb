class Geomodelcore < Formula

  desc "GeoModelCore contains the core packages to work with GeoModel. Those packages define the GeoModel geometry primitives, the generic function abstraction, and all the basic tools to work with GeoModel."
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelCore"

  # SOURCES
  url "https://qat.pitt.edu/GeoModelCore-3.2.0.tar.gz"
  sha256 "d169ed2056febb3c69b4707800bba5eda7153a47147230d4be8e05823f6cdf01"
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModelCore.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
end
