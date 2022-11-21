class Geomodelg4 < Formula

  desc "GeoModelG4"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelG4"
   
  
  url "https://qat.pitt.edu/GeoModel-4.4.3-pre.tar.gz"
  sha256 "d74cf58333f8eb673a7484914c3fddbebfadf23e715a558058085ab7375e1fa4"
  
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
