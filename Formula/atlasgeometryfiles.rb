# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Atlasgeometryfiles < Formula
  desc "Some very simple plugins to exercise the plugins methods"
  homepage "https://gitlab.cern.ch/GeoModelATLAS/geometry-data"

  # SOURCES
  
  url "https://qat.pitt.edu/geometry-data-1.0.0.tar.gz"
  sha256 "675de51a555cebaef14f56940f212d7c6c31a399b7d3d71c4a58a5ea54deb391"
  
  head do
    url "https://gitlab.cern.ch/GeoModelATLAS/geometry-data.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  
  # INSTALLATION INSTRUCTIONS
  def install
    system "mkdir -p #{prefix}/share/ATLASGeoModel/"
    system "cp -R geometry  #{prefix}/share/ATLASGeoModel"
    system "cp -R materials #{prefix}/share/ATLASGeoModel"
  end

end
