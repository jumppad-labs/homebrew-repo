
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.26.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.26.0/jumppad_0.26.0_darwin_x86_64.zip"
    sha256 "bc046dbc6de8136a3bf24a7cd7599b4725dd737112474a51b8e1eb75c26cc59a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.26.0/jumppad_0.26.0_darwin_arm64.zip"
    sha256 "e1ed164c36b132131004c5937cf741d48b0fc632de409375ed2ff16af72f8d49"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.26.0/jumppad_0.26.0_linux_x86_64.tar.gz"
    sha256 "21147d310a4d4665628760820e9bf845e053c813ab802e8f34d855715444ff29"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.26.0/jumppad_0.26.0_linux_arm64.tar.gz"
    sha256 "ab957b94b0cceb5e98ed09ac29db20bc3654ee578265236c50675f9d78768fbf"
  end

  def install
    bin.install "jumppad"
  end
end
