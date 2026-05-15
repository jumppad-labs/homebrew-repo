
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.2.0/spektacular_0.2.0_darwin_x86_64.zip"
    sha256 "0a34aa8ab81beec0086a4d4582186b60b60c59e19b239bceb1f779976e6ed178"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.2.0/spektacular_0.2.0_darwin_arm64.zip"
    sha256 "2f22dddf3a23dfd87746561e50f3bf86be41c62c3a79acf8f9ab102b474d2f56"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.2.0/spektacular_0.2.0_linux_x86_64.tar.gz"
    sha256 "e4445d512d84d3ab7ab556278a0a2d643167c7ca186c4482b7d6ecce6da05fc0"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.2.0/spektacular_0.2.0_linux_arm64.tar.gz"
    sha256 "5b4575a8187582373b6d72a98b26fcd3607ee8a99cfdb88f3d768202b21866bb"
  end

  def install
    bin.install "spektacular"
  end
end
