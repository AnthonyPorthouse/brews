class GitUpchain < Formula
  desc "Create merges from branch to branch easily"
  homepage "https://github.com/AnthonyPorthouse/git-upchain"
  url "https://github.com/AnthonyPorthouse/git-upchain/archive/v0.0.2.tar.gz"
  sha256 "65aead964edbe98314b6adeff11b4424ca37a246d71e1301dc9c107a08349bad"

  def install
    bin.install "git-upchain"
  end

  test do
    system "#{bin}/git-upchain", "--version"
  end
end
