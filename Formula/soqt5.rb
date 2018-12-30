class Soqt5 < Formula
  desc "The SoQt package updated from the orginal by Joe Boudreau"
  homepage "qat.pitt.edu"
  url "http://qat.pitt.edu/soqt5-1.0.tar.gz"
  sha256 "2cdd7a87bd6353f9f6da8541d0d1d78711ae030380b96a03ee4344d4f4bf3bce"
  depends_on "qt5"
  depends_on "jfb3615/repo/coin"

  def install
    ENV.deparallelize  
    system "cd src/Inventor/Qt && qmake PREFIX=#{prefix} LIBS=-L/usr/local/lib QMAKE_STRIP="
    system "cd src/Inventor/Qt && make install"
  end
end
