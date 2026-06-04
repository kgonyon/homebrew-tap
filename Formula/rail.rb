class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.3/rail_Darwin_arm64.tar.gz"
      sha256 "05218c1bea88ebe3f861730b6cfbe55d7c61fdbd2a0b864eebf6162dce049cd6"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.3/rail_Darwin_x86_64.tar.gz"
      sha256 "177a1973d3ab21d3ed742b4141b6b0e23df4186462ac90f000c55ad2f790fa6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.3/rail_Linux_arm64.tar.gz"
      sha256 "1fe4b1e3964470adae9e389fc8f17213e4da2407ca937fc40d7f13aab06024ca"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.3/rail_Linux_x86_64.tar.gz"
      sha256 "f6636bdd3a2b6721d04eb0bd81cb57966c9c4c9554ef289cf9b7a07c67a575b5"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
