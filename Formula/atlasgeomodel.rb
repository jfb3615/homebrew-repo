# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Atlasgeomodel < Formula
  desc "Meta-package including gmex and some sample inputs for ATLAS"
  homepage "https://gitlab.cern.ch/GeoModelATLAS/geometry-data"
  url "https://qat.pitt.edu/atlasgeomodel-1.0.tar.gz"

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "geomodelvisualization"
  depends_on "geomodeltools"
  depends_on "atlasgeometryfiles"
  depends_on "handsonplugins"

end
