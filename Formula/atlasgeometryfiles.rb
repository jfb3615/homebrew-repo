# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Atlasgeometryfiles < Formula
  desc "Some very simple plugins to exercise the plugins methods"
  homepage "https://gitlab.cern.ch/GeoModelATLAS/geometry-data"

  # SOURCES
  
  url "https://qat.pitt.edu/geometry-data-1.0.0.tar.gz"
  sha256 "6e14025dc437be15c0bed9f30cda435f8445ea0d05ed70dbac48f2680d983dee"
  
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
