class Geomodelg4 < Formula

  desc "GeoModelG4"
  homepage "https://gitlab.cern.ch/GeoModelDev/GeoModelG4"

  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModelG4.git"
  end

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "clhep"
  depends_on "geomodelcore"
  depends_on "geomodelio"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "..", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
end
