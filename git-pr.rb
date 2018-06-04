class GitPr < Formula
  desc "Create GitHub PRs from your current branch"
  homepage "https://github.com/AnthonyPorthouse/git-pr"
  url "https://github.com/AnthonyPorthouse/git-pr/archive/v0.0.1.tar.gz"
  sha256 "0ffdd690df993c243f41106fafe6555533d101b144a3a3d25bac719dc34b6615"
  revision 1

  def install
    bin.install "git-pr"
  end

  test do
    system "#{bin}/git-pr", "--version"
  end
end
