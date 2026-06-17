
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.10.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.10.0/spektacular_0.10.0_darwin_x86_64.zip"
    sha256 "4721251ac0519e3b7f155f4f2ad91c8430f9cd235b00efb16a19c5cd1782380e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.10.0/spektacular_0.10.0_darwin_arm64.zip"
    sha256 "9691664cd4b7da7a6ca3efb6d1cd3c27101df09b524574129b192939884adf8f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.10.0/spektacular_0.10.0_linux_x86_64.tar.gz"
    sha256 "bbf96eb8fb5b33a1eb57db74b41b4fcc82e61ebe6f8eae82c4114b23c801d4e2"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.10.0/spektacular_0.10.0_linux_arm64.tar.gz"
    sha256 "babe6e0af573f63a30356040d5f329b83ead0101ae2eba8ad9836386ef8d69fb"
  end

  def install
    bin.install "spektacular"
  end
end
