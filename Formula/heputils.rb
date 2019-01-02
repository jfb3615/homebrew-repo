class Heputils < Formula
  desc "HEPUtils is a set of minimal classes for use in HEP analysis"
  homepage "https://bitbucket.org/andybuckley/heputils"
  url "https://bitbucket.org/andybuckley/heputils/get/heputils-1.3.0.tar.gz"
  sha256 "1ec9d9d71d409ce6b2e668e4927b1090ddf2ee9acf25457f767925cf89b24852"

  def install
    system "make install PREFIX=#{prefix}"
  end
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any_skip_relocation
    sha256 "99dbcac39033a8d45201e731dc7dfa90c8ea860b95099baca58694d083cb7f01" => :mojave
  end
end
