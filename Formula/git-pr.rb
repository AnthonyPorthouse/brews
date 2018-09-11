class GitPr < Formula
  desc "Create GitHub PRs from your current branch"
  homepage "https://github.com/AnthonyPorthouse/git-pr"
  url "https://github.com/AnthonyPorthouse/git-pr/archive/v0.0.5.tar.gz"
  sha256 "4d86633db19a992d1c1f5f69064913f268afe9845268ad550ccc0cf8898ba9df"
  
  depends_on "gnu-sed"

  def install
    inreplace "git-pr", /sed -r/, "gsed -r"
    bin.install "git-pr"
  end

  test do
    system "#{bin}/git-pr", "--version"
  end
end
