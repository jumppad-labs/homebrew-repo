
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.18.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.2/spektacular_0.18.2_darwin_x86_64.zip"
    sha256 "ca5f7870940e7e6898a17a93794d9f8b60a4b766c367e72196f56f48a75bdc0c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.2/spektacular_0.18.2_darwin_arm64.zip"
    sha256 "d0efa8f19af3319053eb18aacefcdcf290fb33f7aaac20385dae49955839a44d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.2/spektacular_0.18.2_linux_x86_64.tar.gz"
    sha256 "030e5843db8b9c6c48506af0c16724a10a11ac507989693c35d6f5b944a759d0"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.2/spektacular_0.18.2_linux_arm64.tar.gz"
    sha256 "9d355172a188c6d9ef5ff3a0df049078bd6433154100420c299d6abd30429bab"
  end

  def install
    bin.install "spektacular"
  end
end
