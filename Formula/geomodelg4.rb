class Geomodelg4 < Formula

  desc "GeoModelG4"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelG4"
   
  
  url "https://qat.pitt.edu/GeoModel-4.2.4.tar.gz"
  sha256 "4a7a1f5a237daabed83d0b8f9f4586e6671d9abddd47b6f4e59ca578f9086287"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end

  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any, big_sur: "9c9eb1aa9195f702aca0d05050413ff06b22072fa0cc14352e139cd12d2a8ebd"
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
