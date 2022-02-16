class Geomodelg4 < Formula

  desc "GeoModelG4"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelG4"
   
  
  url "https://qat.pitt.edu/GeoModel-4.2.6.tar.gz"
  sha256 "fffcfec5340f0317cb686d17d5cabcce3c2875e3ac88031eb03db50c95bcac47"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end

  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any, catalina: "2595336758699b323b1d23a2e35a3fdacedc866e38b81c0f3304d5d6c4a1a9ce"
  end


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "jfb3615/repo/geomodelcore"
  depends_on "jfb3615/repo/geant4"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "../GeoModelG4", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  

end
