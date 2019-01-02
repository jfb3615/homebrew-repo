class Mcutils < Formula
  desc "This package is a collection of navigation and manipulation routines"
  homepage "https://bitbucket.org/andybuckley/mcutils"
  url "https://bitbucket.org/andybuckley/mcutils/get/mcutils-1.3.2.tar.gz"
  sha256 "e17d417e8d4f8d17a6879ea18dcd2cd76e161d37eae08b84893504d1b08f9708"
  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    system "make install PREFIX=#{prefix}"
  end
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any_skip_relocation
    sha256 "3b92f8851a3e35238c6422884d0995be1b2707d9345203b1fecff512a9e30f66" => :mojave
  end

end
