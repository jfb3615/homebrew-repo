# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Atlasgeometryfiles < Formula
  desc "Some very simple plugins to exercise the plugins methods"
  homepage "https://gitlab.cern.ch/GeoModelATLAS/geometry-data"

  # SOURCES
  head do
    url "https://gitlab.cern.ch/GeoModelATLAS/geometry-data.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  
  # INSTALLATION INSTRUCTIONS
  def install
    system "mkdir -p #{prefix}/share/ATLASGeoModel/"
    system "cp geometry  #{prefix}/share/ATLASGeoModel"
    system "cp materials #{prefix}/share/ATLASGeoModel"
  end

end
