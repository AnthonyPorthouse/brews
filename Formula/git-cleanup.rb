class GitCleanup < Formula
  desc "Auto remove merged branches from your local repository"
  homepage "https://github.com/AnthonyPorthouse/git-cleanup"
  url "https://github.com/AnthonyPorthouse/git-cleanup/archive/v0.1.1.tar.gz"
  sha256 "00a0bb81cb7e4b60fba9892dc7e4c465c0923b66fa8e0a6ce7099b9d3a2665ff"

  def install
    bin.install "git-cleanup"
  end

  test do
        system "#{bin}/git-cleanup", "--version"
  end
end
