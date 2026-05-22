class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v0.0.1/rail_Darwin_arm64.tar.gz"
      sha256 "04c65535a4c4afe9717f815581e29c0301437dde43d04fd330e28c3ea01ef434"
    else
      url "https://github.com/kgonyon/rail/releases/download/v0.0.1/rail_Darwin_x86_64.tar.gz"
      sha256 "813c509d705fdee3be1d361188a60f863ef5c10cf61cf6cb5f728b0bd9be60cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v0.0.1/rail_Linux_arm64.tar.gz"
      sha256 "2684ae510b8993dd27631e6c9d9fa6c7b2d1e4fb737666adee7907742e05a598"
    else
      url "https://github.com/kgonyon/rail/releases/download/v0.0.1/rail_Linux_x86_64.tar.gz"
      sha256 "18e4c009a6461186fa1ea3b6c93383e59fdc9628db727ee2e66b405c9c1195f7"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
