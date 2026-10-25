#
# Quarter library, from the Coin3d group.  Packaged by Joe Boudreau
#
class Quarter < Formula
  desc "Quarter is a light-weight glue library that provides seamless integration between Systems in Motions's Coin high-level 3D visualization library and Trolltech's Qt 2D user interface library."
  homepage "https://github.com/coin3d/quarter"
  url "https://launchpad.net/~kaktusjoe/+archive/ubuntu/coingraphics/+sourcefiles/quarter/20.2.3-ubuntu1/quarter_20.2.3.orig.tar.gz"
  sha256 "07c6c6ea48abc8f9681d4f8c41aa485153569588b8018afb78fa19db0208db67"
  depends_on 'coin3d'
  depends_on "cmake" => :build
   
  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
  
  
 
  
end
