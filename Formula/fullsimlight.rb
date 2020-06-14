class Fullsimlight < Formula

  desc "FullSimLight"
  homepage "https://gitlab.cern.ch/GeoModelDev/FullSimLight"

  url "https://qat.pitt.edu/FullSimLight-1.0.1.tar.gz"
  sha256 "1e6615efc1118e485930450be5511018f953bbb45e7ac37a65e6382324275bd0"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/FullSimLight.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "jfb3615/repo/geomodelg4"
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
