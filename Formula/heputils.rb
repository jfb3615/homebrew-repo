class Heputils < Formula
  desc "HEPUtils is a set of minimal classes for use in HEP analysis"
  homepage "https://bitbucket.org/andybuckley/heputils"
  url "https://bitbucket.org/andybuckley/heputils/get/heputils-1.3.0.tar.gz"
  sha256 "1ec9d9d71d409ce6b2e668e4927b1090ddf2ee9acf25457f767925cf89b24852"

  def install
    system "make install PREFIX=#{prefix}"
  end

end
