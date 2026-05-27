class Vcd < Formula
  desc "Open Git projects inside local Docker containers for vibe coding workflows"
  homepage "https://github.com/marlinl/vcd"
  url "https://github.com/marlinl/vcd/releases/download/v0.1.3/vcd-aarch64-apple-darwin.tar.gz"
  sha256 "96c3d73940b2118a8c0b0a057c1753f4bed2cc122d3a59697b041270afa4e5fb"
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
