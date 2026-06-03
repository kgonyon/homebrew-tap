class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.0/rail_Darwin_arm64.tar.gz"
      sha256 "dd6b5c59bae8ad5e10c3306c4d7f4b29cd24943d9775fa9489b209b0b7356b47"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.0/rail_Darwin_x86_64.tar.gz"
      sha256 "43729b868091c7e640a7cc3f0e1eff3c50e43e0bb6eb2cd3adbaf4c5e4d6ebc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.0/rail_Linux_arm64.tar.gz"
      sha256 "41148259c5bd5d1d72d8e36609b93d56bc95ceed295deb0a224e3046b95a50d8"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.0/rail_Linux_x86_64.tar.gz"
      sha256 "3f2f8df5f1a3f3ba8f7fb86a1cff42ab17495c6e82eb514475c98c88e3decf70"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
