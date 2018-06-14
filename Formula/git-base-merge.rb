class GitBaseMerge < Formula
  desc "Apply base changes from an upstream git repo and branch"
  homepage "https://github.com/AnthonyPorthouse/git-base-merge"
  url "https://github.com/AnthonyPorthouse/git-base-merge/archive/v0.0.2.tar.gz"
  sha256 "02239ea63f6438cbda92d91114fcf8a7fd902cf63a1fd96ab4ee77240cce348e"

  def install
    bin.install "git-base-merge"
  end

  test do
    system "#{bin}/git-base-merge", "--version"
  end
end
