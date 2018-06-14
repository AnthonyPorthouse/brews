class MpsYoutube < Formula
  desc "Terminal-based YouTube player and downloader."
  homepage "https://github.com/np1/mps-youtube"
  url "https://github.com/mps-youtube/mps-youtube/archive/v0.2.8.tar.gz"
  sha256 "d5f2c4bc1f57f0566242c4a0a721a5ceaa6d6d407f9d6dd29009a714a0abec74"

  depends_on "python"
  depends_on "youtube-dl"
  depends_on "mpv"
  depends_on "mplayer"

  resource "pafy" do
    url "https://github.com/mps-youtube/pafy/archive/v0.5.4.tar.gz"
    sha256 "a2f9fe7c6175264993190081e1558516b2f2b5987f13a581a55cd9d838df973b"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python3.5/site-packages"

    res = %w[pafy]

    res.each do |r|
      resource(r).stage do
        system "python3", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3.5/site-packages"
    system "python3", *Language::Python.setup_install_args(libexec)

    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do
    system "which", "mpsyt"
  end
end
