class Fullsimlight < Formula

  desc "FullSimLight"
  homepage "https://gitlab.cern.ch/GeoModelDev"

    
  url "https://qat.pitt.edu/GeoModel-4.4.3-pre.tar.gz"
  sha256 "d74cf58333f8eb673a7484914c3fddbebfadf23e715a558058085ab7375e1fa4"
  
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
   sha256 cellar: :any, big_sur: "73c7aa98279c82e0529939216843c0bdbf150a0f806df1a37a1a2bbc4a3f727f"
 end

  
end
