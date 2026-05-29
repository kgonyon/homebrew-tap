class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.1.4/rail_Darwin_arm64.tar.gz"
      sha256 "e8bebf2d6856afa9a819dd774b061d90ff591c29de93afc6cb2be30e6953a8ac"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.1.4/rail_Darwin_x86_64.tar.gz"
      sha256 "2e161fee8e785c8aa0af5085016fa1577bebcdf4976aa3d044305138600fdf53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.1.4/rail_Linux_arm64.tar.gz"
      sha256 "4fc10911a7da8b8be76933ff14e7f38f46d518b5be83b10549b427d4cbac9330"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.1.4/rail_Linux_x86_64.tar.gz"
      sha256 "6a4191f02cbecae5f461b45e1b8d005fa2490d40a5d96989b15928596518d7ee"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
