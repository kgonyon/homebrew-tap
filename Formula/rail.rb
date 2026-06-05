class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "1.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.4/rail_Darwin_arm64.tar.gz"
      sha256 "70e208a44168ccec6e9a04d81d81c910b7147e49fb016fc39a4108519466263e"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.4/rail_Darwin_x86_64.tar.gz"
      sha256 "d435945e6799c7eef2cc8cf692702271e193dc7d2d25b16128c74dcbe1a6b1cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.4/rail_Linux_arm64.tar.gz"
      sha256 "cfd7b819c2ca4f1c47a2c10b6f05201164c34d1e4d18d5283c21d8a9bc9b4261"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.4/rail_Linux_x86_64.tar.gz"
      sha256 "fbe8993a847db70a66246b557d2489bfa7cc5b399e862781ea8825e486d78724"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
