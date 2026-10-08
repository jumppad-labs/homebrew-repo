
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.27.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.27.0/spektacular_0.27.0_darwin_x86_64.zip"
    sha256 "bd2f9925205cf5d55fae8cf1984e3f7ef482d05ab1cea251b3f654db83c5b5b0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.27.0/spektacular_0.27.0_darwin_arm64.zip"
    sha256 "9eff691f5370832495c405d59ade140166d00a9b2f2dbd84dc9134b65246088c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.27.0/spektacular_0.27.0_linux_x86_64.tar.gz"
    sha256 "184180078fe08dc9995bc3d5f5f7a428d9d4cf11cb8f9b4367d71fe40cd4fe80"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.27.0/spektacular_0.27.0_linux_arm64.tar.gz"
    sha256 "10a063b9cb9f0ce575418bac8f5b5c08086ba34d63f0d357d6e5747d4dcabcf1"
  end

  def install
    bin.install "spektacular"
  end
end
