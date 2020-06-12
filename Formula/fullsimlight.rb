class Fullsimlight < Formula

  desc "FullSimLight"
  homepage "https://gitlab.cern.ch/GeoModelDev/FullSimLight"

  url "https://qat.pitt.edu/FullSimLight-1.0.0.tar.gz"
  sha256 "675de51a555cebaef14f56940f212d7c6c31a399b7d3d71c4a58a5ea54deb391"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/FullSimLight.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "geomodelg4"
  depends_on "jfb3615/repo/geant4"
  depends_on "nlohmann-json"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
end
