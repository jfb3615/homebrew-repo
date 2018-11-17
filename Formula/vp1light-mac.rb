class Vp1lightMac < Formula
  desc ""
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"
  url "qat.pitt.edu/other-src/vp1light-1.1.tar.gz"
  sha256 "14e9f294fc3e3f08fde780ad02cd70cc0f633655505782a7ed63605df547d6e7"
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
