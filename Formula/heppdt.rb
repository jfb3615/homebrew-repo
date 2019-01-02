class Heppdt < Formula
  desc "Distribution of the HepPDT database of elementary particles and their standard MC codes"
  homepage "http://lcgapp.cern.ch"
  url "http://lcgapp.cern.ch/project/simu/HepPDT/download/HepPDT-3.04.01.tar.gz"
  sha256 "2c1c39eb91295d3ded69e0d3f1a38b1cb55bc3f0cde37b725ffd5d722f63c0f6"
  # depends_on "cmake" => :build

  def install
    ENV.deparallelize  
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make install" 
  end
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    rebuild 1
    sha256 "7c0d9e66ef0c9f86943c9208b0ff18a274e297707053649ba2007f3774e477fc" => :high_sierra
    sha256 "51496cc771d718a12564e7385bba22b4d7ebeebc2295a065df6bfffb3c70a15d" => :mojave
  end
end
