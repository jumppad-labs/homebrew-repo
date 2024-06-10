
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.11.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.11.2/jumppad_0.11.2_darwin_x86_64.zip"
    sha256 "55cf14839fe29bb08a3b2021bca11063ad5adbf9bc55035d3bc2f217fe4c7034"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.11.2/jumppad_0.11.2_darwin_arm64.zip"
    sha256 "f98b04ea2407afcf4c79628879e46be3b4f565e9e670a806d61c9db98c8fab6c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.11.2/jumppad_0.11.2_linux_x86_64.tar.g"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5  /jumppad"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.11.2/jumppad_0.11.2_linux_arm64.tar.giz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "jumppad"
  end
end
