# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Geomodelvisualization < Formula
  desc "Visualization for the GeoModel Toolkit, including the Geometry Explorer (gmex)"
  homepage "https://gitlab.cern.ch/GeoModelDev"

  # SOURCES
  
  url "https://qat.pitt.edu/GeoModel-4.1.0.tar.gz"
 sha256 "c67dd07b58e36614aa10720af3d2c1407258945fbeaaa60cc39fd45cf29e27d3"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "qt"
  depends_on "simage-bb"
  depends_on "coin-bb"
  depends_on "soqt-bb"
  depends_on "geomodelcore"
  
  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "GeoModelVisualization/build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  
#  bottle do
#    root_url "https://qat.pitt.edu/Bottles"
#    sha256 "203ab6f4d14f101452d1818d96148a77d23c33fc01c56984421934ede4bd83bd" => :catalina
#  end


end
