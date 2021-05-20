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
   sha256 cellar: :any, big_sur: "9ce2dc55a75ef9e2ed35252471e0dcd95a39c24389862411a27c55b82cf63fc2"
 end

  
end
