class Vcd < Formula
  desc "Open Git projects inside local Docker containers for vibe coding workflows"
  homepage "https://github.com/marlinl/vcd"
  url "https://github.com/marlinl/vcd/releases/download/v0.1.0/vcd-aarch64-apple-darwin.tar.gz"
  sha256 "59b2247e42b7b61383352677e8a0b1d28de534a4f67ffeffc98fddea27fc6410"
  license "Apache-2.0"
  head "https://github.com/marlinl/vcd.git", branch: "master"

  on_macos do
    on_intel do
      odie "vcd currently only supports Apple Silicon Macs"
    end
  end

  on_linux do
    odie "vcd currently only supports Apple Silicon Macs"
  end

  def install
    bin.install "vcd"
  end

  test do
    assert_match "vcd #{version}", shell_output("#{bin}/vcd --version")
  end
end
