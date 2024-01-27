class RootJfb < Formula
  desc "Object oriented framework for large scale data analysis"
  homepage "https://root.cern.ch/"
  url "https://root.cern.ch/download/root_v6.28.10.source.tar.gz"
  sha256 "69d6fdeb607e6b20bd02c757fa6217024c0b6132c1e9b1dff4d85d9a2bb7e51e"
  license "LGPL-2.1-or-later"
  head "https://github.com/root-project/root.git", branch: "master"

  livecheck do
    url "https://root.cern/install/all_releases/"
    regex(%r{Release\s+v?(\d+(?:[./]\d*[02468])+)[ >]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("/", ".") }
    end
  end

 
  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "cfitsio"
  depends_on "davix"
  depends_on "fftw"
  depends_on "freetype"
  depends_on "ftgl"
  depends_on "gcc" # for gfortran
  depends_on "gl2ps"
  depends_on "glew"
  depends_on "graphviz"
  depends_on "gsl"
  depends_on "lz4"
  depends_on "mysql-client"
  depends_on "nlohmann-json"
  depends_on "numpy" # for tmva
  depends_on "openblas"
  depends_on "openssl@3"
  depends_on "pcre"
  depends_on "python@3.11"
  depends_on "sqlite"
  depends_on "tbb"
  depends_on :xcode
  depends_on "xrootd"
  depends_on "xxhash"
  depends_on "xz" # for LZMA
  depends_on "zstd"

  uses_from_macos "libxcrypt"
  uses_from_macos "libxml2"
  uses_from_macos "zlib"

  on_linux do
    depends_on "libxft"
    depends_on "libxpm"
  end

  skip_clean "bin"

  fails_with gcc: "5"

  def python3
    "python3.11"
  end

patch :p1, :DATA




  
  def install
   
    args = std_cmake_args + %W[
      -DCMAKE_CXX_STANDARD=17
      -Dbuiltin_glew=ON
      -Dmysql=OFF
      -Dtmva=OFF
      -Dvdt=OFF
      -Dpgsql=OFF
      -Dpyroot=OFF
      -Dpythia6=OFF
      -Dpythia8=OFF
      -Dvdt=OFF
      -Dxrootd=OFF
    ]

    # Workaround the shim directory being embedded into the output
    #inreplace "build/unix/compiledata.sh", "`type -path $CXX`", ENV.cxx

    mkdir "BUILD" do
      system "cmake", "-G", "Unix Makefiles", "..", *args
      system "make"
      system "make", "install"
    end    
   
    chmod 0755, bin.glob("*.*sh")
    lib.install Dir[ "cmake" ]
  
  end

 


end
__END__
--- config/RConfigure.in        2024-01-27 18:27:50
+++ config/RConfigure.in        2024-01-27 18:28:25
@@ -23,13 +23,6 @@
 #define EXTRAICONPATH "@extraiconpath@"
 
 #define ROOT__cplusplus @__cplusplus@
-#if defined(__cplusplus) && (__cplusplus != ROOT__cplusplus)
-# if defined(_MSC_VER)
-#  pragma message("The C++ standard in this build does not match ROOT configuration (@__cplusplus@); this might cause unexpected issues. And please make sure you are using the -Zc:__cplusplus compilation flag")
-# else
-#  warning "The C++ standard in this build does not match ROOT configuration (@__cplusplus@); this might cause unexpected issues"
-# endif
-#endif
 
 #@setresuid@ R__HAS_SETRESUID   /**/
 #@hasmathmore@ R__HAS_MATHMORE   /**/



