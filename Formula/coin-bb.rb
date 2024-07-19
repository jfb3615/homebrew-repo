class CoinBb < Formula
  desc "The Coin implemention of the Open Inventor Toolkit"
  homepage "https://github.com/coin3d"
  url "https://qat.pitt.edu/coin-4.0.2.tar.gz"
  sha256 "3b1c5d6e94ca34b51b6c97569dd216b4402ceacd7671410b7ba2ded5e8a9bf94"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  depends_on "boost"
  depends_on "mesa"
  

  def install
    mkdir "builddir" do
      system "which", "cmake"
      system "cmake", "..", "-DCOIN_BUILD_TESTS=0", "-DCMAKE_CXX_STANDARD=17", *std_cmake_args      
      system "make",      "install" 
    end
  end

  bottle do
    root_url "https://qat.pitt.edu/Bottles"

    sha256 cellar: :any, big_sur:  "ad1190c0daa38aa5c90b301fcf928997ead0f023b1133b2d6883e674ce5f40d5"
    sha256 cellar: :any, catalina: "c54c8ad24847ba126dfeee80f8b3a236153487b4bf369378cc6d13367bb54133"
  end

  
end
