class Diskpp < Formula
  desc "DiSk++, a library for Discontinuous Skeletal methods"
  homepage "https://github.com/datafl4sh/diskpp"
  head "https://github.com/datafl4sh/diskpp.git"

  depends_on "cmake" => :build
  depends_on :x11
  depends_on "eigen"
  depends_on "gnuplot"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    system "cmake", ".", *std_cmake_args
    system "make", "install" 
  end

  test do
    system "true"
  end
end
