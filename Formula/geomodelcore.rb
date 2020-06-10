class Geomodelcore < Formula

  desc "GeoModelCore contains the core packages to work with GeoModel. Those packages define the GeoModel geometry primitives, the generic function abstraction, and all the basic tools to work with GeoModel."
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelCore"

  # SOURCES
  url "https://qat.pitt.edu/GeoModelCore-3.2.0.tar.gz"
  sha256 "675de51a555cebaef14f56940f212d7c6c31a399b7d3d71c4a58a5ea54deb391"
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
