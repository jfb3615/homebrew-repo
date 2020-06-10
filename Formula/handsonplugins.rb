# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Handsonplugins < Formula
  desc "Some very simple plugins to exercise the plugins methods"
  homepage "https://gitlab.cern.ch/GeoModelATLAS/HandsOnPlugins"

  # SOURCES

  url "https://qat.pitt.edu/handsonplugins-1.0.0.tar.gz"
  sha256 "3d47c26bef98fa5736008be476dbed8c960e27b5bed599925df18de879a20d1d"
  
  head do
    url "https://gitlab.cern.ch/GeoModelATLAS/HandsOnPlugins.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "nlohmann-json"
  depends_on "geomodelcore"
  depends_on "geomodelio"
  
  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end

end
