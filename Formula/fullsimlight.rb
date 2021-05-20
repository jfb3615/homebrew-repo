class Fullsimlight < Formula

  desc "FullSimLight"
  homepage "https://gitlab.cern.ch/GeoModelDev"

    
  url "https://qat.pitt.edu/GeoModel-4.2.1.tar.gz"
  sha256 "2e000a90de06264227ef902abea5aa305dc2050a270f6bd073bdf6542a060dec"
  
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "jfb3615/repo/geomodelcore"
  depends_on "jfb3615/repo/geomodelg4"
  depends_on "jfb3615/repo/geant4"
  depends_on "nlohmann-json"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "FullSimLight/build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  
 bottle do
   root_url "https://qat.pitt.edu/Bottles"
   sha256 cellar: :any, big_sur: "973e42b9b83cbebb215f98c21f6a581dce1739b86211288e920f16a980e562fd"
   sha256 cellar: :any, catalina: "7d7de90a324f2e04bcded70c33eac6baf71d12dfd03dde36e94dbc5f67e6585d"
 end

  
end
