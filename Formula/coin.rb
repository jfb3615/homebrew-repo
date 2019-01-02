class Coin < Formula
  desc "The Coin implementation of the Open Inventor API"
  homepage "https://grey.colorado.edu/coin3d/index.html"
  url "https://www.qat.pitt.edu/Coin-4.0.0a.tar.gz"
  sha256 "4ce5954af6e340281cf77bedae2d654f673829df0bb1e18a8f973341382db435"
  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--disable-framework",
                          "--prefix=#{prefix}"
    system "make", "install" 
  end

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    rebuild 1
    sha256 "f0242e99ac799b6661eed2773bb9d5f8096b09383e0be150e97222036108dca2" => :mojave
    sha256 "54cc704a3ce36fe8c39cb7c7da51c56a95711b74e632d1b5269e0216fe0efde8" => :high_sierra
  end


end
