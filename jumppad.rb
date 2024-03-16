
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.10.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.10.1/jumppad_0.10.1_darwin_x86_64.zip"
    sha256 "445c46868e5a8688851a38cbf01897a4398b972a2f6589ef20d9f51b0d227fc6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.10.1/jumppad_0.10.1_darwin_arm64.zip"
    sha256 "ff9aa33bf03c11a999e92c415cb626230df2391ea319f4a2a91bc26f89eba599"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.10.1/jumppad_0.10.1_linux_x86_64.tar.g"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5  /jumppad"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.10.1/jumppad_0.10.1_linux_arm64.tar.giz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "jumppad"
  end
end
