# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Atlasgeomodel < Formula
  desc "Meta-package including gmex and some sample inputs for ATLAS"
  homepage "https://gitlab.cern.ch/GeoModelATLAS/geometry-data"
  url "https://qat.pitt.edu/atlasgeomodel-0.0.tar.gz"
  sha256 "53513bed035cf55b15d767a469e68a9e5628c60505178a0e5ee1f0c83a2324c1"
  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "geomodelvisualization"
  depends_on "geomodeltools"
  depends_on "atlasgeometryfiles"
  depends_on "handsonplugins"
  def install 
    system "echo Meta-package, no files installed."
  end
end
