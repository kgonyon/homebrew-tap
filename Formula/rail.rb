class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.1/rail_Darwin_arm64.tar.gz"
      sha256 "8d6072a3505343063bc35f81a3c016408975687d7ec1f18c0432dbe68b0602b2"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.1/rail_Darwin_x86_64.tar.gz"
      sha256 "9f6e5722c0f4a639450b59863315866b1f53ad23eddd0299f8ab5bd5cc345f09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.1/rail_Linux_arm64.tar.gz"
      sha256 "751f2c75c8c6ba3affa24f07b480bacc2d8942339e5592043c581be6756dc4bc"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.1/rail_Linux_x86_64.tar.gz"
      sha256 "d8c4914cd78fe317abd1a97b2093a1bf1825388fe9b549ac31880a8e253cc798"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
