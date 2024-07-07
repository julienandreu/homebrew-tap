class GitSweep < Formula
  desc "Tool to clean up local git branches, keeping only the current one"
  homepage "https://github.com/julienandreu/git-sweep"
  url "https://github.com/julienandreu/git-sweep/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6645f61408f479f04e361cfbcdd567e84388ab444ba6c5fd073349e004699571"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "No branch to sweep", "git-sweep"
  end
end

