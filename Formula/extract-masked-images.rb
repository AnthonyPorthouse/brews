class ExtractMaskedImages < Formula
  desc "Extract images for a PDF and apply transparency masks"
  homepage "https://github.com/AnthonyPorthouse/extract-masked-images"
  url "https://github.com/AnthonyPorthouse/extract-masked-images/archive/v1.0.0.tar.gz"
  sha256 "9b9dcf62ec999e255388db3b86c88bd7f38506b49a4a54beb5dd3f105c2d4402"

  depends_on "imagemagick"
  depends_on "poppler"

  def install
    bin.install "extract-masked-images"
  end

  test do
    system "which", "extract-masked-images"
  end
end
