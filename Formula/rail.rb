class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "1.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.6/rail_Darwin_arm64.tar.gz"
      sha256 "aef0fa30716fb73b2f2c912ea6b3c6a1f3fbf9f7692e83485ea20a00400a5979"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.6/rail_Darwin_x86_64.tar.gz"
      sha256 "7ec9b8b1dcbed8521722a2d7fd6effc0f68b06ac933bf499883d89777b42b6f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.6/rail_Linux_arm64.tar.gz"
      sha256 "8ec93384f537edf33d4e656adbace2d98f1146c744aa810e944bbebf50c946d8"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.6/rail_Linux_x86_64.tar.gz"
      sha256 "0aed2a9fe69e221c9f907aa51c523ca12b6d37c2986ec6566003d3b048aa2422"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
