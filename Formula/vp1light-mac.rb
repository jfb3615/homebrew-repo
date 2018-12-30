class Vp1lightMac < Formula
  desc ""
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"
  url "qat.pitt.edu/other-src/vp1light-2.0.tar.gz"
  sha256 "a619c9eaccc8a4b378ba3dcdc766c10efc38435b666465e68ee74f6b130e1091"
  depends_on "cmake" => :build
  depends_on "jfb3615/repo/vp1light-root"
  depends_on "jfb3615/repo/coin"
  depends_on "jfb3615/repo/simage"
  depends_on "jfb3615/repo/soqt5"
  depends_on "jfb3615/repo/vp1light-googletest"
  depends_on "jfb3615/repo/heputils"
  depends_on "jfb3615/repo/mcutils"
  depends_on "jfb3615/repo/heppdt"
  depends_on "clhep"
  def install
       ENV["ROOTSYS"] = "/usr/local"
       mkdir "builddir" do
       system "cmake", "../Projects/NewVP1Light", *std_cmake_args 
       system "make", "install" 
    end 
  end
 

end
