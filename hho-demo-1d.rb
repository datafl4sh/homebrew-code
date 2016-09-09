class HhoDemo1d < Formula
  desc "Hybrid high-order demo code"
  homepage "https://github.com/datafl4sh/hho-demo-1d"
  url "https://github.com/datafl4sh/hho-demo-1d/archive/1.0.2.tar.gz"
  version "1.0.2"
  sha256 "b02188310596237deb76568214b8240adaf4138f60d7799b2532e432f5c0a3c9"

  depends_on "cmake" => :build
  depends_on "armadillo"
  depends_on "boost"
  depends_on "gnuplot"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "true"
  end
end
