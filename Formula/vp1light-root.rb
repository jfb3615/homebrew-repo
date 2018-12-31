class Vp1lightRoot < Formula
  desc "Object oriented framework for large scale data analysis"
  homepage "https://root.cern.ch/"
  url "https://root.cern.ch/download/root_v6.12.06.source.tar.gz"
  version "6.12.06"
  sha256 "aedcfd2257806e425b9f61b483e25ba600eb0ea606e21262eafaa9dc745aa794"
  revision 2
  head "https://github.com/root-project/root.git"




  depends_on "cmake" => :build
  depends_on "davix"
  depends_on "fftw"
  depends_on "gcc" # for gfortran
  depends_on "graphviz"
  depends_on "gsl"
  # Temporarily depend on Homebrew libxml2 to work around a brew issue:
  # https://github.com/Homebrew/brew/issues/5068
  depends_on "libxml2" if MacOS.version >= :mojave
  depends_on "lz4"
  depends_on "openssl"
  depends_on "pcre"
  depends_on "tbb"
  depends_on "xrootd"
  depends_on "xz" # for LZMA
  depends_on "python" => :recommended
  depends_on "python@2" => :optional
  conflicts_with "root", :because => "vp1light-root compiled w c++14 replaces default root"
  skip_clean "bin"

  needs :cxx14

  def install
    # Work around "error: no member named 'signbit' in the global namespace"
    #ENV.delete("SDKROOT") if DevelopmentTools.clang_build_version >= 900

    
    #  -Dgnuinstall=ON
    #  -DCMAKE_INSTALL_ELISPDIR=#{elisp}
    #  -DCLING_CXX_PATH=clang++
    #  -Dbuiltin_freetype=ON
    #  -Dbuiltin_cfitsio=OFF
    #  -Ddavix=ON
    #  -Dfitsio=OFF
    #  -Dfftw3=ON
    #  -Dfortran=ON
    #  -Dgdml=ON
    # -Dmathmore=ON
    #  -Dminuit2=ON
    #  -Dmysql=OFF
    #  -Dpgsql=OFF
    #  -Droofit=ON
    #  -Dssl=ON
    #  -Dimt=ON
    #  -Dxrootd=ON
    #  -Dtmva=ON
    #  -Dcxx14=ON
    
    system "./configure --disable-astiff --disable-bonjour --disable-builtin_afterimage --disable-builtin_unuran --disable-builtin_lz4 --disable-builtin_llvm --disable-explicitlink --disable-gviz  --disable-memstat --disable-pgsql --disable-pythia8 --disable-python --disable-shadowpw  --disable-sqlite --disable-ssl --disable-tmva  --enable-cxx14 --enable-gsl-shared --enable-roofit --prefix=/usr/local"
    system "make"
    system "make", "install" 
  end
  
 




end
