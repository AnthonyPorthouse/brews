class MpsYoutube < Formula
  desc "Terminal-based YouTube player and downloader."
  homepage "https://github.com/np1/mps-youtube"
  url "https://github.com/mps-youtube/mps-youtube/archive/v0.2.6.tar.gz"
  sha256 "df3cc7ad9a49a0da390c38f40c905daa992d48de5fb421865ec19cc1fbec453f"

  depends_on :python3
  depends_on "youtube-dl"
  depends_on "mpv"
  depends_on "mplayer"

  resource "pafy" do
    url "https://github.com/mps-youtube/pafy/archive/develop.tar.gz"
    # sha256 "eda55b14ec4ecfa5eb6c9834fc295c5885d93d5cfbf6c2452d1b7ffff1e59351"
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
