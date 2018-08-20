class Simage < Formula
  desc "The simage library for texture mapping in 3D graphics applications"
  homepage "https://grey.colorado.edu/coin3d/index.html"
  url "https://www.qat.pitt.edu/simage-1.7.1.tar.gz"
  sha256 "87db05a1b3ed2d9971eb29fcca6b8074ef20231a7679a5de36faf49ca0304334"
  # depends_on "cmake" => :build

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end

end
