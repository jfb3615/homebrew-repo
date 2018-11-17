class Vp1lightMac < Formula
  desc ""
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"
  url "qat.pitt.edu/other-src/vp1light-1.1.tar.gz"
  sha256 "ccc45a7ef7f70152aa6f3ef556af639f09b08f848e3632b899f807dcb88f28f9"
  depends_on "cmake" => :build
  depends_on "jfb3615/repo/vp1light-root"
  depends_on "jfb3615/repo/qat3d"
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
