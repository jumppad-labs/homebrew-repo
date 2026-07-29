
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.14.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.14.0/spektacular_0.14.0_darwin_x86_64.zip"
    sha256 "fca200a5a3b42800421dc27a7698443ff8b4f6d80a23f7085ab7dfdf47ee046c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.14.0/spektacular_0.14.0_darwin_arm64.zip"
    sha256 "d9452cfec014e17ffcb6dfaf8be08869bc175c19e6c9ad37335cbf8aeaa76c18"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.14.0/spektacular_0.14.0_linux_x86_64.tar.gz"
    sha256 "6fc07865f6d297d97f3fe929aea00078ae56ba746d591c97657aa92e04ef6b36"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.14.0/spektacular_0.14.0_linux_arm64.tar.gz"
    sha256 "779f5ed629bf5c9ada876d71d1a25f53f684a1dace48aeb9c90c41de73951a09"
  end

  def install
    bin.install "spektacular"
  end
end
