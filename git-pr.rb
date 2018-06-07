class GitPr < Formula
  desc "Create GitHub PRs from your current branch"
  homepage "https://github.com/AnthonyPorthouse/git-pr"
  url "https://github.com/AnthonyPorthouse/git-pr/archive/v0.0.4.tar.gz"
  sha256 "ee7c7e7aa17112234ce1cbbbd9521c9228087003593fc76f388d184fb58d6b4c"

  def install
    bin.install "git-pr"
  end

  test do
    system "#{bin}/git-pr", "--version"
  end
end
