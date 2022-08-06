#
# Spacetime library. Joe Boudreau 2017
#
class Spacetime < Formula
  desc "The Spacetime Class Library is a small collection of classes intended to facilitate numerical computations in nonrelativistic and relativistic quantum mechanic"
  homepage "qat.pitt.edu"
  url "https://www.qat.pitt.edu/spacetime-3.0.2.tar.gz"
  sha256 "e2fcb319e4a85610d66f83773211de658b6bcb6a443ee0539368a132bbf8422c"
  depends_on 'eigen' 
  depends_on 'pkg-config' 
  depends_on "cmake" => :build
   
  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
  
  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 catalina: "6048a8f2117254755dc8d2d5b07c6742470a7c836a534303c88836c3db3d57af"
    sha256 cellar: :any, arm64_monterey: "ee52757141ec24c7e3ff9845660127bfa1f7bc103ad564823edfd132b7e80ccc"
  end

  
end
