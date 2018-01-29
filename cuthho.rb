class Cuthho < Formula
  desc "cutHHO, a prototype implementation of the cutHHO method"
  homepage "https://github.com/datafl4sh/cuthho"
  head "https://github.com/datafl4sh/cuthho.git"

  depends_on "cmake" => :build
  depends_on "silo"
  depends_on "eigen"
  depends_on "lua"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end 
  end

  test do
    system "true"
  end
end
