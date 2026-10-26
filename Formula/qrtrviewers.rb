#
# QrtrViewers library Joseph Boudreau 2026
#
class Qrtrviewers < Formula
  desc "QrtrViewers contains the QuarterExaminerViewer, providing display of Inventor/Coin3d scenegraph with interactive control, similear to the historical SoXtExaminerViewer or the SoQtExaminerViewer from SoQt"
  homepage "https://github.com/jfb3615/QrtrViewers"
  url "https://launchpad.net/~kaktusjoe/+archive/ubuntu/coingraphics/+sourcefiles/qrtrviewers/1.0.0-ubuntu5/qrtrviewers_1.0.0.orig.tar.gz"
  sha256 "1b745f00d835d52ecf64edd50cc8c704cc9d56ad3f9164bd723b88e6db96fb72"
  depends_on 'quarter'
  depends_on "cmake" => :build
   
  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
  
  
 
  
end
