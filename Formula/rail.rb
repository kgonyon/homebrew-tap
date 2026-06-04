class Rail < Formula
  desc "Per-feature git worktrees with isolated ports, env files, and hooks"
  homepage "https://github.com/kgonyon/rail"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.2/rail_Darwin_arm64.tar.gz"
      sha256 "49ba5a0adb0c128a0ccbe4d1b7244f03e1f061001aa9866856340a482547015a"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.2/rail_Darwin_x86_64.tar.gz"
      sha256 "1f082c717ecb4f4ca1ae614a2dd2e3d628cd9a3232d1147b0d18d342c1c08c2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgonyon/rail/releases/download/v1.2.2/rail_Linux_arm64.tar.gz"
      sha256 "6da519b8a9043bcfabfb34f8711afa7d802ef1069ed68b073adc67083255d66c"
    else
      url "https://github.com/kgonyon/rail/releases/download/v1.2.2/rail_Linux_x86_64.tar.gz"
      sha256 "723d21ce102017ffa6c52e1b45604f2507a5064f98e32d289285198c977145de"
    end
  end

  def install
    bin.install "rail"
  end

  test do
    system "#{bin}/rail", "--version"
  end
end
