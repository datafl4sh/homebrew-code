class Meshview < Formula
  desc "Viewer for netgen meshes"
  homepage "https://github.com/datafl4sh/meshview"
  head "https://github.com/datafl4sh/meshview.git"
  url "https://github.com/datafl4sh/meshview/archive/0.1.tar.gz"
  version "0.1"
  sha256 "3ae89cf7063c3118323d595feefc9358ae346a9192b2c00ef8a5d855543d3115"

  depends_on "qt"
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "qmake", "target.path=#{prefix}/bin"
    system "make", "install"
  end

  test do
    system "true"
  end
end
