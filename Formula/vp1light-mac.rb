class Vp1lightMac < Formula
  desc ""
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"
  url "qat.pitt.edu/other-src/vp1light-2.0.tar.gz"
  sha256 "82a8fe9250e6cfe8a129fe53740a3c87c09d73358f8a98169e8cb4d1144554d2"
  depends_on "cmake" => :build
  depends_on "jfb3615/repo/vp1light-root"
  depends_on "jfb3615/repo/coin"
  depends_on "jfb3615/repo/simage"
  depends_on "jfb3615/repo/soqt5"
  depends_on "jfb3615/repo/vp1light-googletest"
  depends_on "jfb3615/repo/heputils"
  depends_on "jfb3615/repo/mcutils"
  depends_on "jfb3615/repo/heppdt"
  depends_on "boost"
  depends_on "clhep"
  def install
       ENV.deparallelize  
       ENV["ROOTSYS"]    = "/usr/local"
       ENV["LIBPATH"]    = "/usr/local/lib/root"
       ENV["SHLIB_PATH"] = "/usr/local/lib/root"
       mkdir "builddir" do
       system "cmake", "../Projects/NewVP1Light", "-DCMAKE_CXX_FLAGS=-std=c++14", *std_cmake_args 
       system "make", "install" 
    end 
  end
 

end
