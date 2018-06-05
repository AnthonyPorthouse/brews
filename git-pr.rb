class GitPr < Formula
  desc "Create GitHub PRs from your current branch"
  homepage "https://github.com/AnthonyPorthouse/git-pr"
  url "https://github.com/AnthonyPorthouse/git-pr/archive/v0.0.3.tar.gz"
  sha256 "9f1b3cde1b6a88ecfb1e3e2e86d48486aef8fc4f1947fca730f233249fcadfba"

  def install
    bin.install "git-pr"
  end

  test do
    system "#{bin}/git-pr", "--version"
  end
end
