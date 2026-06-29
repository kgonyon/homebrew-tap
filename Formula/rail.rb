class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "1.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.5/rail_Darwin_arm64.tar.gz"
      sha256 "25e78d6edef52afcf6c62a6888f345ec9ae2d4c80cfdf7ddf2b35b56240ec7c4"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.5/rail_Darwin_x86_64.tar.gz"
      sha256 "6d1d7de5b9c86c587cf962e6dcd4a225f97c0f6903e06bf79f702a401dc7aaf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.5/rail_Linux_arm64.tar.gz"
      sha256 "00c22880ef003b55581eeaf5cdb8bb9e8132449c4c8dd57a63e5a2fe3b6e015f"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.5/rail_Linux_x86_64.tar.gz"
      sha256 "ab17cfb5848b9dc8d9d3d92cc014d6ca71dfd71ce04070e1a77905371ec9f985"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
