class Geomodeltools < Formula

  desc "GeoModelTools"
  homepage "https://gitlab.cern.ch/GeoModelDev"
   
  url "https://qat.pitt.edu/GeoModel-4.2.6.tar.gz"
  sha256 "fffcfec5340f0317cb686d17d5cabcce3c2875e3ac88031eb03db50c95bcac47"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end

  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any, catalina: "75d9e1580cc280e34306b9c523dcd4be1d3fdaceb41cccef79d9d012a03519a5"
  end


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "jfb3615/repo/geomodelcore"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "../GeoModelTools", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  

end
