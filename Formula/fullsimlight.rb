class Fullsimlight < Formula

  desc "FullSimLight"
  homepage "https://gitlab.cern.ch/GeoModelDev"

  url "https://qat.pitt.edu/GeoModel-4.1.0.tar.gz"
  sha256 "4900f0cc28d8039ea733f5e1ebc0c039f3e1322c0a2365b1fc68c1b8f1d2733d"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "geomodelcore"
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
   sha256 cellar: :any, big_sur: "11f5e9da0e16414ff17a46f62bb1b441f8f02994a29c3ca740b66c954f1d7601"
   sha256 cellar: :any, catalina: "7d7de90a324f2e04bcded70c33eac6baf71d12dfd03dde36e94dbc5f67e6585d"
 end

  
end
