class Ocrdownloader < Formula
  desc "Terminal Based downloader for OC ReMix."
  homepage "https://github.com/AnthonyPorthouse/ocrdownloader"
  url "https://github.com/AnthonyPorthouse/ocrdownloader/archive/v1.0.0.tar.gz"
  sha256 "188974c300617fa6b29b99312d0ce2443da8ff83bfcdff6164d3e48addbfe82a"

  depends_on "aria2"
  depends_on "gnu-sed"

  def install
    inreplace "ocrdownloader" do |s|
      s.gsub! /sed -r/, "gsed -r"
    end
    bin.install "ocrdownloader"
  end

  test do
    system "which", "ocrdownloader"
  end
end
