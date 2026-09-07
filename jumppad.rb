
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.28.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.28.0/jumppad_0.28.0_darwin_x86_64.zip"
    sha256 "48a190606b8c60ae87b764b82420bfa16b88da938e5ad20466c7451c8bc9b8d5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.28.0/jumppad_0.28.0_darwin_arm64.zip"
    sha256 "0634a4456327af1b22ae92cb926f7b16eb90cb40f2f25235c1dd74bf3460ab9d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.28.0/jumppad_0.28.0_linux_x86_64.tar.gz"
    sha256 "9a2aa200a8f3ed1076547a6f6ce914609eed925245bd7d64fbdcd84ad87b14ac"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.28.0/jumppad_0.28.0_linux_arm64.tar.gz"
    sha256 "40a0105df900f218cd3bdcfc1f69dcedd586c60cfc4d2afed9bcd711a6f95493"
  end

  def install
    bin.install "jumppad"
  end
end
